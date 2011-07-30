$(document).ready(function() {
    function requiredField() {
      html = "<span style='color: red; font-size: 16px;'>*</span>"
      $('.required_without_val').after(html)
      $('.required').after(html)
    }
    requiredField()

    //Удаляет datetimeentry панель, используется в тестах
    datetimeEntryDelete = function (i) {
        $('#loadingDateForm'+i).livequery(function(){
          element = $('#loadingDate'+i).clone()
          $("#loadingDate"+i).next().remove()
          $("#loadingDate"+i).remove()
          element.prependTo("#loadingDateForm"+i)
        });

        $('#unloadingDateForm'+i).livequery(function(){
          element = $('#unloadingDate'+i).clone()
          $("#unloadingDate"+i).next().remove()
          $("#unloadingDate"+i).remove()
          element.prependTo("#unloadingDateForm"+i)
        });
    }

});
