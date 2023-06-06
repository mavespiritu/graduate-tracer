<?php

namespace common\models;

use Yii;
use dektrium\user\models\Course;
use dektrium\user\models\Major;
use yii\web\UploadedFile;
use yii\data\ActiveDataProvider;
/**
 * This is the model class for table "alumnus".
 *
 * @property int $id
 * @property int $course_id
 * @property int $major_id
 * @property string $lastname
 * @property string $firstname
 * @property string $middlename
 * @property string $sex
 * @property int $batch
 * @property string $date_of_graduation
 */
class Alumnus extends \yii\db\ActiveRecord
{
    public $excelFile;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'alumnus';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['course_id', 'firstname', 'lastname', 'batch', 'sex' , 'date_of_graduation'], 'required', 'on' => 'manageAlumnus'],
            [['course_id', 'major_id', 'batch'], 'integer'],
            [['sex'], 'string'],
            [['date_of_graduation'], 'safe'],
            [['lastname', 'firstname', 'middlename'], 'string', 'max' => 200],
            [['excelFile'], 'file', 'skipOnEmpty' => true, 'extensions' => 'xlsx, xls']
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'course_id' => 'Course',
            'courseName' => 'Course',
            'major_id' => 'Major',
            'majorName' => 'Major',
            'lastname' => 'Last Name',
            'firstname' => 'First Name',
            'middlename' => 'Middle Name',
            'sex' => 'Sex',
            'batch' => 'Batch',
            'date_of_graduation' => 'Date Of Graduation',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCourse()
    {
        return $this->hasOne(Course::className(), ['id' => 'course_id']);
    }

    public function getCourseName()
    {
        return $this->course ? $this->course->name : '';
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMajor()
    {
        return $this->hasOne(Major::className(), ['id' => 'major_id']);
    }

    public function getMajorName()
    {
        return $this->major ? $this->major->name : '';
    }
}


