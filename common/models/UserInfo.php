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

    public function getAnswers($stage_id)
    {
        $answers = Answer::find()->where(['user_id' => Yii::$app->user->id, 'stage_id' => $stage_id])->leftJoin('question', 'question.id = answer.question_id')->all();

        return $answers;
    }

    public function getCurrentQuestion($stage_id)
    {
        $answer = Answer::find()->where(['user_id' => Yii::$app->user->id, 'stage_id' => $stage_id])->leftJoin('question', 'question.id = answer.question_id')->orderBy(['id' => SORT_DESC])->one();

        $question = $answer ? !is_null($answer->next_question_id) ? Question::find()->where(['id' => $answer->next_question_id])->one() : null : Question::find()->where(['stage_id' => $stage_id])->orderBy(['id' => SORT_ASC])->one();

        return $question;
    }

    public function getCurrentStage()
    {
        $answer = Answer::find()->where(['user_id' => Yii::$app->user->id])->orderBy(['id' => SORT_DESC])->one();

        $completion = $answer ? Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $answer->question->stage->id]) ? Completion::findOne(['user_id' => Yii::$app->user->id, 'stage_id' => $answer->question->stage->id]) : null : null;

        return $answer ? !is_null($completion) ? $answer->question->stage->id + 1 : $answer->question->stage->id : 1;
    }
}
