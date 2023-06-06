<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Alumnus;

/**
 * AlumnusSearch represents the model behind the search form of `common\models\Alumnus`.
 */
class AlumnusSearch extends Alumnus
{
    public $courseName;
    public $majorName;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'course_id', 'major_id', 'batch'], 'integer'],
            [['lastname', 'firstname', 'middlename', 'sex', 'date_of_graduation', 'courseName', 'majorName'], 'safe'],
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
        $query = Alumnus::find()
                ->joinWith('course')
                ->joinWith('major');

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $dataProvider->setSort([
            'attributes' => [
                'courseName' => [
                    'asc' => ['course.name' => SORT_ASC],
                    'desc' => ['course.name' => SORT_DESC],
                ],
                'majorName' => [
                    'asc' => ['major.name' => SORT_ASC],
                    'desc' => ['major.name' => SORT_DESC],
                ],
                'lastname',
                'firstname',
                'middlename',
                'batch',
                'sex',
                'date_of_graduation',
            ]
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
            'course_id' => $this->course_id,
            'major_id' => $this->major_id,
            'batch' => $this->batch,
            'date_of_graduation' => $this->date_of_graduation,
        ]);

        $query->andFilterWhere(['like', 'lastname', $this->lastname])
            ->andFilterWhere(['like', 'firstname', $this->firstname])
            ->andFilterWhere(['like', 'middlename', $this->middlename])
            ->andFilterWhere(['like', 'course.name', $this->courseName])
            ->andFilterWhere(['like', 'major.name', $this->majorName])
            ->andFilterWhere(['like', 'sex', $this->sex]);

        return $dataProvider;
    }
}
