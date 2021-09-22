<?php

namespace dektrium\user\models;

use Yii;

/**
 * This is the model class for table "college".
 *
 * @property int $id
 * @property string $abbreviation
 * @property string $name
 *
 * @property Course[] $courses
 */
class College extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'college';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'string'],
            [['abbreviation'], 'string', 'max' => 10],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'abbreviation' => 'Abbreviation',
            'name' => 'Name',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCourses()
    {
        return $this->hasMany(Course::className(), ['college_id' => 'id']);
    }
}
