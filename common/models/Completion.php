<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "completion".
 *
 * @property int $id
 * @property int $user_id
 * @property int $stage_id
 * @property string $status
 */
class Completion extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'completion';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'stage_id'], 'integer'],
            [['status'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'stage_id' => 'Stage ID',
            'status' => 'Status',
        ];
    }
}
