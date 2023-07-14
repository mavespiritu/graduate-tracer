$(document).ready(function() {
    var $upCsv = $('#up-csv');
    var droppedFile = false;
    var req = '';

    $upCsv.on('drag dragstart dragend dragover dragenter dragleave drop', function (e) {
        e.preventDefault();
        e.stopPropagation();
    }).on('dragover dragenter', function () {
            $upCsv.addClass('is-dragover');
    }).on('dragleave dragend drop', function () {
        $upCsv.removeClass('is-dragover');
    }).on('drop', function (e) {
        droppedFile = e.originalEvent.dataTransfer.files;
        showFileName(droppedFile);
    });

    $upCsv.on('change', function(e) {
        e.preventDefault();

        droppedFile = e.target.files;

        showFileName(droppedFile);
    });

    $upCsv.on('submit', function(e) {
        e.preventDefault();
        e.stopPropagation();
        
        var formData = new FormData(this)

        if(!droppedFile) {
            return false;
        }

        if ($upCsv.hasClass('is-uploading')) return false;
        $upCsv.addClass('is-uploading').removeClass('is-error');

        formData.append('Alumnus[excelFile]', droppedFile[0]);

        ajaxPromise(formData).then((response) => {
            $('.errorsTable').css('display', 'none');
            parseMessage(response);
        }).catch((e) => {
            errorObj = e.responseJSON;

            parseErrors(e.responseJSON);

        }).then(() => {
            $upCsv.removeClass('is-uploading')
            $upCsv.find('label').html("Choose an excel file");
            $('.field-alumnus-excelfile').removeClass('has-error');
            $('.field-alumnus-excelfile .help-block').text('');
            $upCsv.trigger('reset');
        });
         
    })

    function ajaxPromise(formData) {
        return new Promise((resolve, reject) => {
            req = $.ajax({
                url: window.location + '/../upload-file',
                method: 'POST',
                processData: false,
                contentType: false,
                data: formData,
                success: function (data) {
                    resolve(data) 
                },
                error: function (data) {
                    reject(data);
                }
            })
        });
    }

    function showFileName(file) {
        $upCsv.find('label').text(file[0].name);
    }

    function parseMessage(response)
    {
        $('.errorsTable').css('display', 'block');

        $('.errorsTable').find('tbody').empty();

        var html = '';

        html += '<tr><td colspan=3>' + response.message + '. Added ' + response.stat.added + ' new alumni. Updated ' + response.stat.updated + ' existing alumni.</td></tr>';

        $('.errorsTable').find('tbody').append(html);
    }

    function parseErrors(response) {
        $('.errorsTable').css('display', 'block');

        $('.errorsTable').find('tbody').empty();

        Object.keys(response).forEach(function(k, i) {
            var html = ''

            if(response[k].length > 1) {
                $(response[k]).each((i, v) => {
                    html +=`
                        <tr>
                            <th scope="row">${k}</th>
                            <td>${v.error}</td>
                            <td>${v.error_value}</td>
                        </tr>
                    `
                });
            } else {
                if (!$.isEmptyObject(response[k][0])) {
                    html =`
                        <tr>
                            <th scope="row">${k}</th>
                            <td>${response[k][0].error}</td>
                            <td>${response[k][0].error_value}</td>
                        </tr>
                    `;
                }
            }

            $('.errorsTable').find('tbody').append(html);
        }); 
    }

    $('window').on('reload', function (e) {
        e.preventDefault();

        req.abort();
    });
});