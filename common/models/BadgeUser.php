<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "badge_user".
 *
 * @property int $id
 * @property int $user_id
 * @property int $badge_id
 *
 * @property Badge $badge
 */
class BadgeUser extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'badge_user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'badge_id'], 'integer'],
            [['badge_id'], 'exist', 'skipOnError' => true, 'targetClass' => Badge::className(), 'targetAttribute' => ['badge_id' => 'id']],
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
            'badge_id' => 'Badge ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBadge()
    {
        return $this->hasOne(Badge::className(), ['id' => 'badge_id']);
    }
}
