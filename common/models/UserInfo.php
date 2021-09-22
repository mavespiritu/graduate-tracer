<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "user_info".
 *
 * @property int $user_id
 * @property int $course_id
 * @property int $major_id
 * @property string $firstname
 * @property string $middlename
 * @property string $lastname
 * @property string $extname
 * @property int $year_graduated
 */
class UserInfo extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user_info';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['course_id', 'major_id', 'year_graduated'], 'integer'],
            [['firstname', 'middlename', 'lastname'], 'string', 'max' => 50],
            [['extname'], 'string', 'max' => 10],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'user_id' => 'User ID',
            'course_id' => 'Course ID',
            'major_id' => 'Major ID',
            'firstname' => 'Firstname',
            'middlename' => 'Middlename',
            'lastname' => 'Lastname',
            'extname' => 'Extname',
            'year_graduated' => 'Year Graduated',
        ];
    }

    public function getAnswers()
    {
        return $this->hasMany(Answer::className(), ['user_id' => 'user_id']);
    }

    public function getCurrentQuestion()
    {
        $answer = Answer::find()->where(['user_id' => Yii::$app->user->id])->orderBy(['id' => SORT_DESC])->one();

        $question = $answer ? Question::find()->where(['id' => $answer->next_question_id])->one() : Question::find()->where(['id' => 1])->one();

        return $question;
    }
}
