<?php

namespace frontend\controllers;

use Yii;
use common\models\Alumnus;
use common\models\AlumnusSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;
use dektrium\user\models\Course;
use dektrium\user\models\Major;
use PhpOffice\PhpSpreadsheet\IOFactory;
use yii\web\UploadedFile;
/**
 * AlumnusController implements the CRUD actions for Alumnus model.
 */
class AlumnusController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['index', 'create', 'update', 'delete'],
                'rules' => [
                    [
                        'actions' => ['index', 'create', 'update', 'delete'],
                        'allow' => true,
                        'roles' => ['Administrator'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    public function actionMajorList($id)
    {
        $majors = Major::find()->where(['course_id' => $id])->orderBy(['name' => SORT_ASC])->all(); 

        $arr = [];
        $arr[] = ['id'=>'','text'=>''];
        foreach($majors as $major){
            $arr[] = ['id' => $major->id ,'text' => $major->name];
        }
        \Yii::$app->response->format = 'json';
        return $arr;
    }

    /**
     * Lists all Alumnus models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AlumnusSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Alumnus model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Alumnus model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Alumnus();
        $model->scenario = 'manageAlumnus';

        $courses = Course::find()->orderBy(['name' => SORT_ASC])->all();
        $courses = ArrayHelper::map($courses, 'id', 'name');

        $majors = [];

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
            'courses' => $courses,
            'majors' => $majors,
        ]);
    }

    /**
     * Updates an existing Alumnus model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->scenario = 'manageAlumnus';

        $courses = Course::find()->orderBy(['name' => SORT_ASC])->all();
        $courses = ArrayHelper::map($courses, 'id', 'name');

        $majors = Major::find()->where(['course_id' => $model->course_id])->orderBy(['name' => SORT_ASC])->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        return $this->render('update', [
            'model' => $model,
            'courses' => $courses,
            'majors' => $majors,
        ]);
    }

    /**
     * Deletes an existing Alumnus model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Alumnus model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Alumnus the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Alumnus::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionUpload()
    {
        $model = new Alumnus();

        return $this->render('upload',[
            'model' => $model,
        ]);
    }
    
    public function actionUploadFile()
    {
        \Yii::$app->response->format = 'json';
        $added = 0;
        $updated = 0;

        if (!Yii::$app->request->isAjax) return [
            'error' => true, 'msg' => 'Invalid Request'
            ];

        $alumnus = new Alumnus();
        $excelFile = $alumnus->excelFile = UploadedFile::getInstance($alumnus, 'excelFile');

        // Validates the file itself
        if(!$this->validateFile($excelFile->name)) {
            Yii::$app->response->statusCode = 400;
            return [
                'error' => true,
                'error_value' => 'Invalid file. Please upload the right file and try again'
            ];
        }
           
        $spreadsheet = IOFactory::load($excelFile->tempName);
        $sheetData = $spreadsheet->getActiveSheet()->toArray(null, null, true, true, true, true, true, true);

        // Validate the data in the uploaded excel fule
        $data = $this->validateSheetData($sheetData);

        // Check the excel file data for errors
        if (!empty($data['error'])) {
            Yii::$app->response->statusCode = 400;

            return $data;
        } else {
            $transaction = Yii::$app->db->beginTransaction();

            try {
                // Iterate each data and inserts or updates
                foreach ($data['list'] as $key => $value) {
                    
                    $course = $value['A'] != '' ? Course::find()->where(['LOWER(name)' => $value['A']])->one() : NULL; 
                    $major = $value['B'] != '' ? Major::find()->where(['LOWER(name)' => $value['B']])->one() : NULL; 

                    $course_id = !is_null($course) ? $course->id : NULL;
                    $major_id = !is_null($major) ? $major->id : NULL;
                    $lastname = $value['C'];
                    $firstname = $value['D'];
                    $middlename = $value['E'];
                    $sex = $value['F'];
                    $batch = $value['G'];
                    $date_of_graduation = $value['H'];

                    
                    $alumnus = Alumnus::findOne([
                        'course_id' => $course_id,
                        'major_id' => $major_id,
                        'lastname' => $lastname,
                        'firstname' => $firstname,
                        'middlename' => $middlename,
                        'sex' => $sex,
                        'date_of_graduation' => $date_of_graduation,
                    ]) ? Alumnus::findOne([
                        'course_id' => $course_id,
                        'major_id' => $major_id,
                        'lastname' => $lastname,
                        'firstname' => $firstname,
                        'middlename' => $middlename,
                        'sex' => $sex,
                        'date_of_graduation' => $date_of_graduation,
                    ]) : new Alumnus();

                    if(!$alumnus->isNewRecord)
                    {
                        $updated += 1;
                    }else{
                        $added += 1;
                    }
                    
                    $alumnus->course_id = $course_id;
                    $alumnus->major_id = $major_id;
                    $alumnus->lastname = $lastname;
                    $alumnus->firstname = $firstname;
                    $alumnus->middlename = $middlename;
                    $alumnus->sex = $sex;
                    $alumnus->batch = $batch;
                    $alumnus->date_of_graduation = $date_of_graduation;
                    $alumnus->save();
                }
                
                $transaction->commit();

                $response = [
                    'error' => false,
                    'message' => 'Upload Completed!',
                    'stat' => [
                        'added' => $added,
                        'updated' => $updated,
                    ],
                ];
            } catch (\Exception $th) {
                Yii::$app->response->statusCode = 400;
                $transaction->rollback();

                $response = [
                    'error' => true,
                    'msg' => $th,
                ];
            } finally {
                return $response;
            }
        }
    }


    private function validateFile($file)
    {
        $allowedExtensions = ['xls', 'xlsx'];
        $ext = pathinfo($file, PATHINFO_EXTENSION);

        if(!in_array($ext, $allowedExtensions)) {
            return false;
        }

        return true;
    }

    /**
     * Validates data from the uploaded excel file and returns the errors;
     *  otherwise returns the validated data
     *
     * @param Array $sheetData
     * @return Array || Void
     */
    private function validateSheetData(Array $sheetData)
    {
        $valid_courses = array_map('strtolower', 
            [
                'Bachelor of Science in Criminology',
                'Bachelor of Science in Midwifery',
                'Bachelor of Arts in English',
                'Bachelor of Science in Computer Science',
                'Bachelor of Elementary Education',
                'Bachelor of Secondary Education',
                'Bachelor of Culture and Arts Education',
                'Bachelor of Science in Business Administration',
                'Bachelor of Science in Office Administration',
                'Associate in Medical Office Administration',
                'Associate in Office Administration',
                'Bachelor of Arts in Political Science',
                'Certificate in Office Administration',
                'Diploma in Midwifery',
                'Bachelor of Physical Education',
            ]
        );

        $valid_majors = array_map('strtolower', 
            [
                'English',
                'Filipino',
                'Mathematics',
                'Social Science',
                'Human Resource Development Management',
                'Financial Management',
                'MAPEH',
                'Music',
                'General Science',
            ]);

        $valid_sexes = array_map('strtolower', 
            [
                'M',
                'F'
            ]);

        $errors = [];

        if (count($sheetData) > 5001) {
            return [
                'error' => true,
                'msg' => 'Only 5 000 rows are allowed per excel file.'
            ];
        }

        if($sheetData[1]['A'] != 'Course') {
            $errors[1][] = [
                'error' => 'headers', 
                'error_value' => sprintf("%s %s %s %s %s %s %s %s", 
                        $sheetData[1]['A'],
                        $sheetData[1]['B'],
                        $sheetData[1]['C'],
                        $sheetData[1]['D'],
                        $sheetData[1]['E'],
                        $sheetData[1]['F'],
                        $sheetData[1]['G'],
                        $sheetData[1]['H'],
                    )
            ];
        }

        // Remove the headers in the array to check the actual data
        unset($sheetData[1]);

        // Iterate each data
        for ($i = 1; $i <= count($sheetData); $i++) {
            $row_number = $i + 1; 
            $row_course_id = $sheetData[$row_number]['A'];
            $row_major_id = $sheetData[$row_number]['B'];
            $row_lastname = $sheetData[$row_number]['C'];
            $row_firstname = $sheetData[$row_number]['D'];
            $row_middlename = $sheetData[$row_number]['E'];
            $row_sex = $sheetData[$row_number]['F'];
            $row_batch = $sheetData[$row_number]['G'];
            $row_date_of_graduation = $sheetData[$row_number]['H'];

            if(!in_array(strtolower($row_course_id), $valid_courses)) {
                $errors[$row_number][] = [
                    'error' => 'course',
                    'error_value' => "Invalid course '{$row_course_id}'; only NLPSC courses are allowed."
                ];
            }

            if(!in_array(strtolower($row_major_id), $valid_majors)) {
                $errors[$row_number][] = [
                    'error' => 'major',
                    'error_value' => "Invalid major '{$row_major_id}'; only NLPSC majors are allowed."
                ];
            }

            if(!in_array(strtolower($row_sex), $valid_sexes)) {
                $errors[$row_number][] = [
                    'error' => 'sex',
                    'error_value' => "Invalid sex '{$row_sex}'; only M or F are allowed."
                ];
            }

            if($row_batch > date("Y")) {
                $errors[$row_number][] = [
                    'error' => 'batch',
                    'error_value' => "Invalid batch '{$row_batch}'. Only previous years are allowed."
                ];
            }

            if(!preg_match('/(\d{4}\-\d{2}\-\d{2})/', $row_date_of_graduation)) {
                $errors[$row_number][] = [
                    'error' => 'date_of_graduation',
                    'error_value' => "Invalid date of graduation '{$row_date_of_graduation}'. Date format must be yyyy-mm-dd."
                ];
            }
        }

        if ($errors) {
            $errors['error'] = true;
            return $errors;
        } else {
            return [
                'error' => false,
                'list'=> $sheetData,
            ];
        }
    }
}
