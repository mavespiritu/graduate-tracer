<?php
    use frontend\assets\AppAsset;
    use yii\helpers\Html;
    use yii\helpers\Url;

    $asset = AppAsset::register($this);
?>
<div class="container">
    <h2>Dashboard</h2>
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <div class="ui segment" style="border-radius: 15px;">
                <?= $this->render('_search', [
                    'model' => $model,
                    'years' => $years,
                    'courses' => $courses,
                    'majors' => $majors,
                ]) ?>
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-4 col-xs-12">
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Alumni Data</h3>
                <div id="alumni_data"></div>
            </div>
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Respondent Rate</h3>
                <div id="respondent_rate"></div>
            </div>
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Multi-degree Holders</h3>
                <div id="multi_degree_holder"></div>
            </div>
        </div>
        <div class="col-md-8 col-xs-12">
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Employment Statistics</h3>
                <div id="employment"></div>
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Job by Classification</h3>
                <div id="job_classification"></div>
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-6 col-xs-12">
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Job by Location</h3>
                <div id="job_location"></div>
            </div>
        </div>
        <div class="col-md-6 col-xs-12">
            <div class="ui segment" style="border-radius: 15px;">
                <h3>Job by Initial Gross</h3>
                <div id="job_gross"></div>
            </div>
        </div>
    </div>
</div>
<br>
<br>
<?php
$script = '

    function alumniData(year, course_id, major_id)
    {
        $.ajax({
            url: "'.Url::to(['/dashboard/alumni-data']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
            beforeSend: function(){
                $("#alumni_data").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#alumni_data").empty();
                $("#alumni_data").hide();
                $("#alumni_data").fadeIn("slow");
                $("#alumni_data").html(data);
            }
        });
    }

    function respondentRate(year, course_id, major_id)
    {
        $.ajax({
            url: "'.Url::to(['/dashboard/respondent-rate']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
            beforeSend: function(){
                $("#respondent_rate").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#respondent_rate").empty();
                $("#respondent_rate").hide();
                $("#respondent_rate").fadeIn("slow");
                $("#respondent_rate").html(data);
            }
        });
    }

    function multiDegreeHolder(year, course_id, major_id)
    {
        $.ajax({
            url: "'.Url::to(['/dashboard/multi-degree-holder']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
            beforeSend: function(){
                $("#multi_degree_holder").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#multi_degree_holder").empty();
                $("#multi_degree_holder").hide();
                $("#multi_degree_holder").fadeIn("slow");
                $("#multi_degree_holder").html(data);
            }
        });
    }

    function employment(year, course_id, major_id)
    {
        $.ajax({
            url: "'.Url::to(['/dashboard/employment']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
            beforeSend: function(){
                $("#employment").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#employment").empty();
                $("#employment").hide();
                $("#employment").fadeIn("slow");
                $("#employment").html(data);
            }
        });
    }

    function jobClassification(year, course_id, major_id)
    {
        $.ajax({
            url: "'.Url::to(['/dashboard/job-classification']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
            beforeSend: function(){
                $("#job_classification").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#job_classification").empty();
                $("#job_classification").hide();
                $("#job_classification").fadeIn("slow");
                $("#job_classification").html(data);
            }
        });
    }

    function jobLocation(year, course_id, major_id)
    {
        $.ajax({
            url: "'.Url::to(['/dashboard/job-location']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
            beforeSend: function(){
                $("#job_location").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#job_location").empty();
                $("#job_location").hide();
                $("#job_location").fadeIn("slow");
                $("#job_location").html(data);
            }
        });
    }

    function jobGross(year, course_id, major_id)
    {
        $.ajax({
            url: "'.Url::to(['/dashboard/job-gross']).'?year=" + year + "&course_id=" + course_id + "&major_id=" + major_id,
            beforeSend: function(){
                $("#job_gross").html("<div class=\"text-center\" style=\"margin-top: 50px;\"><svg class=\"spinner\" width=\"30px\" height=\"30px\" viewBox=\"0 0 66 66\" xmlns=\"http://www.w3.org/2000/svg\"><circle class=\"path\" fill=\"none\" stroke-width=\"6\" stroke-linecap=\"round\" cx=\"33\" cy=\"33\" r=\"30\"></circle></svg></div>");
            },
            success: function (data) { 
                $("#job_gross").empty();
                $("#job_gross").hide();
                $("#job_gross").fadeIn("slow");
                $("#job_gross").html(data);
            }
        });
    }

    $(document).ready(function() {
        alumniData("","","");
        respondentRate("","","");
        multiDegreeHolder("","","");
        employment("","","");
        jobClassification("","","");
        jobLocation("","","");
        jobGross("","","");
    });
';
$this->registerJs($script);
   
?>