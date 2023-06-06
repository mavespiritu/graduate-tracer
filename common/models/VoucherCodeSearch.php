<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\VoucherCode;

/**
 * VoucherCodeSearch represents the model behind the search form of `common\models\VoucherCode`.
 */
class VoucherCodeSearch extends VoucherCode
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['merchant', 'voucher_code', 'available', 'instruction'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = VoucherCode::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
        ]);

        $query->andFilterWhere(['like', 'merchant', $this->merchant])
            ->andFilterWhere(['like', 'voucher_code', $this->voucher_code])
            ->andFilterWhere(['like', 'available', $this->available])
            ->andFilterWhere(['like', 'instruction', $this->instruction]);

        return $dataProvider;
    }
}
