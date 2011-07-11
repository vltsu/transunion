$(document).ready(function(){

    // Получение списка компаний
    getCompanies();

    // При выборе компании, получение списка водителей
    $("#company").change(function()
    {
        html = "<option value='0'></option>"
        $('#driver').html(html)
        $('#car').html(html)
        getDrivers($('#company').val());
    });

    // При выборе водителя, получение списка автомобилей
    $("#driver").change(function()
    {
        html = "<option value='0'></option>"
        $('#car').html(html)
        getCars($('#driver').val());
    });


    //  ДЛЯ СТРАНИЦЫ РЕДАКТИРОВАНИЯ

    var requestId = $('#requestId').text();

    if(requestId) {
        //Получение переменных (для страницы редактирования)
        getRequest(requestId);
        $.getJSON('/ajax/json?option=company', function(companies) {
            if(companies) {
                html = "<option value='0'></option>"  // первое значение пустое
                $.each(companies, function(key,val) {
                    $('#company').append("<option value="+key+">"+val+"</option>")
                })
            }
        })
    }
    
});

// Получение заполненых форм
function getRequest(requestId) {
    $.getJSON('/ajax/json?option=request&requestid='+requestId+'', function(companies) {
        if(companies) {
            $.each(companies[0], function(key,val){
                $('#company').html("<option value='"+key+"'>"+val+"</option>")
            })
            $.each(companies[1], function(key,val){
                $('#driver').html("<option value='"+key+"'>"+val+"</option>")
            })
            $.each(companies[2], function(key,val){
                $('#car').html("<option value='"+key+"'>"+val+"</option>")
            })
        }
    })
}

// Получение списка компаний
function getCompanies() {
    $.getJSON('/ajax/json?option=company', function(companies) {
        if(companies) {
            html = "<option value='0'></option>"  // первое значение пустое
            $.each(companies, function(key,val) {
                html += "<option value="+key+">"+val+"</option>"
            })
        } else {
            html = "<option value='0'>--нет компаний--</option>"
        }
        $('#company').html(html)
    })
}

// Получение списка водителей
function getDrivers(companyId) {
    if(companyId !== 0) {
        $.getJSON('/ajax/json?option=driver&companyid='+companyId+'', function(drivers) {
            if(drivers) {
                html = "<option value='0'></option>" // первое значение пустое
                $.each(drivers, function(key,val) {
                    html += "<option value="+key+">"+val+"</option>"
                    $('#driver').html(html)
                })
            } else {
                html = "<option value='0'>--нет водителей--</option>"
            }
            $('#driver').html(html)
        })
    }
}

// Получение списка автомобилей
function getCars(driverId) {
    if(driverId !== 0) {
        $.getJSON('/ajax/json?option=car&driverid='+driverId+'', function(cars) {
            if(cars) {
                html = "<option value='0'></option>" // первое значение пустое
                $.each(cars, function(key,val) {
                    html += "<option value='"+key+"'>"+val+"</option>"
                    $('#car').html(html)
                })
            } else {
                html = "<option value='0'>--нет автомобилей--</option>"
            }
            $('#car').html(html)
        })
    }
}

// Обновление значений в формах с сохранением выбранного
function refresh() {
    var selectedCompany = $('#company').val();
    alert(selectedCompany)
    getCompanies()
    $("#company option:contains("+selectedCompany+")").attr("selected",true)
}
