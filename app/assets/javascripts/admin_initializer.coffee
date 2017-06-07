$(document).ready ->
  # $('#product_description').froalaEditor({height: 300});
  # $('#product_benefits').froalaEditor({height: 300});
  # $('#product_features').froalaEditor({height: 300});
  # $('#product_specification').froalaEditor({height: 300});
  tinymce.init
    selector: '#product_description'
    theme: 'modern'
    width: 600
    height: 300
    plugins: [
      'advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker'
      'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking'
      'save table contextmenu directionality emoticons template paste textcolor'
    ]
    toolbar: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons'
