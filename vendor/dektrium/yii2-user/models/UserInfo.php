<?php

namespace dektrium\user\models;

use Yii;

class UserInfo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_info';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['lastname', 'firstname', 'middlename', 'course_id', 'year_graduated'], 'required'],
            [['course_id', 'major_id', 'year_graduated'], 'integer'],
            [['lastname', 'firstname', 'middlename', 'extname'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'user_id' => 'User ID',
            'lastname' => 'Last Name',
            'firstname' => 'First Name',
            'middlename' => 'Middle Name',
            'extname' => 'Extension Name',
            'course_id' => 'Course',
            'major_id' => 'Major',
        ];
    }


    /**
     * @return Full name of User
     */

    public function getFullName(){
        return $this->firstname." ".$this->middlename." ".$this->lastname." ".$this->extname;
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCourse()
    {
        return $this->hasOne(Course::className(), ['id' => 'course_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMajor()
    {
        return $this->hasOne(Major::className(), ['id' => 'major_id']);
    }

    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
