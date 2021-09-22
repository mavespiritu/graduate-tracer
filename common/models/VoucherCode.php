<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "voucher_code".
 *
 * @property int $id
 * @property string $merchant
 * @property string $voucher_code
 */
class VoucherCode extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'voucher_code';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['merchant', 'voucher_code'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'merchant' => 'Merchant',
            'voucher_code' => 'Voucher Code',
        ];
    }
}
