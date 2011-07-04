$(document).ready(function() {
  $('#responsibilityButton').live('click',
    function () {
      if($('#responsibility').css('display') == 'none') {
        $('#responsibility').css('display','')
      } else {
        $('#responsibility').css('display','none')
      }
    }
  )
})
