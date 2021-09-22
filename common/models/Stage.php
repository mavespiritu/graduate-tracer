<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "stage".
 *
 * @property int $id
 * @property string $title
 * @property string $table
 *
 * @property Chronology[] $chronologies
 */
class Stage extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'stage';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title'], 'string'],
            [['table'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'table' => 'Table',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getChronologies()
    {
        return $this->hasMany(Chronology::className(), ['stage_id' => 'id']);
    }

    public function getCurrentChronology()
    {
        $result = ''; 

        $firstChronology = $this->getChronologies()->orderBy(['id' => SORT_ASC])->one();

        $lastChronologyUser = ChronologyUser::find()
                                ->where(['user_id' => Yii::$app->user->id, 'chronology.stage_id' => $this->id])
                                ->leftJoin('chronology', 'chronology.id = chronology_user.chronology_id')
                                ->orderBy(['id' => SORT_DESC])
                                ->one();

        if($lastChronologyUser)
        {
            $result = $lastChronologyUser->chronology;
        }else{
            $result = $firstChronology;
        }
        
        return $result;
    }

    public function getNextChronology()
    {
        $currentChronology = $this->currentChronology;

        $firstChronology = $this->getChronologies()->orderBy(['id' => SORT_ASC])->one();

        $lastChronologyUser = ChronologyUser::find()
                                ->where(['user_id' => Yii::$app->user->id, 'chronology.stage_id' => $this->id])
                                ->leftJoin('chronology', 'chronology.id = chronology_user.chronology_id')
                                ->orderBy(['id' => SORT_DESC])
                                ->one();

        if($lastChronologyUser)
        {
            return $this->currentChronology->nextChronology;
        }else{
            return $firstChronology;
        }
    }

    public function getPreviousChronology()
    {
        $currentChronology = $this->currentChronology;

        return $this->currentChronology->previousChronology;
    }
}
