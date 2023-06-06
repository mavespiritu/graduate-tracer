<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "badge".
 *
 * @property int $id
 * @property int $stage
 * @property string $title
 * @property string $table
 *
 * @property BadgeUser[] $badgeUsers
 */
class Badge extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'badge';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['question_id'], 'integer'],
            [['title', 'answer', 'description'], 'string'],
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
            'question_id' => 'Question ID',
            'title' => 'Title',
            'answer' => 'Answer',
            'description' => 'Description',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBadgeUsers()
    {
        return $this->hasMany(BadgeUser::className(), ['badge_id' => 'id']);
    }
}
