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

    public function getCompletion()
    {
        $completion = Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $this->id]) ? 'Completed' : 'Not Completed';

        return $completion;
    }
}
