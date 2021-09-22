<?php

namespace dektrium\user\models;

use Yii;

/**
 * This is the model class for table "major".
 *
 * @property int $id
 * @property int $course_id
 * @property string $name
 */
class Major extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'major';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['course_id'], 'integer'],
            [['name'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'course_id' => 'Course ID',
            'name' => 'Name',
        ];
    }
}
