$(document).ready(function() {
    function requiredField() {
      html = "<span style='color: red; font-size: 16px;'>*</span>"
      $('.required').after(html)
    }

    requiredField()
});

