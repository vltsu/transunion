$(document).ready(function() {
  $('#salaryButton').live('click',
    function reloadPage() {
    // Выставление года и месяца
      var monthSalary = $('select#date_month').val();
      var yearSalary = $('select#date_year').val();
      window.location = 'salary?year='+yearSalary+'&month='+monthSalary;
    })
})
