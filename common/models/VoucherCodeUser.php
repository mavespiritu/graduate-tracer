<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "voucher_code_user".
 *
 * @property int $id
 * @property int $user_id
 * @property int $voucher_code_id
 * @property string $date_claimed
 * @property string $datetime
 */
class VoucherCodeUser extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'voucher_code_user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'voucher_code_id'], 'integer'],
            [['date_claimed', 'datetime'], 'safe'],
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
            'voucher_code_id' => 'Voucher Code ID',
            'date_claimed' => 'Date Claimed',
            'datetime' => 'Datetime',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVoucherCode()
    {
        return $this->hasOne(VoucherCode::className(), ['id' => 'voucher_code_id']);
    }
}
