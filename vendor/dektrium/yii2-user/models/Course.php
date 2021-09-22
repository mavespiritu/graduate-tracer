<?php

namespace dektrium\user\models;

use Yii;

/**
 * This is the model class for table "course".
 *
 * @property int $id
 * @property int $college_id
 * @property string $abbreviation
 * @property string $name
 *
 * @property College $college
 */
class Course extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'course';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['college_id'], 'integer'],
            [['name'], 'string'],
            [['abbreviation'], 'string', 'max' => 10],
            [['college_id'], 'exist', 'skipOnError' => true, 'targetClass' => College::className(), 'targetAttribute' => ['college_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'college_id' => 'College ID',
            'abbreviation' => 'Abbreviation',
            'name' => 'Name',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCollege()
    {
        return $this->hasOne(College::className(), ['id' => 'college_id']);
    }
}
