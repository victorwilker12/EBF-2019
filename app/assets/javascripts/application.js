//= require rails-ujs
//= require activestorage
//= require bower_components/jquery/dist/jquery.min
//= require bower_components/jquery-ui/jquery-ui.min
//= require bower_components/bootstrap/dist/js/bootstrap.min
//= require bower_components/datatables.net-bs/js/dataTables.bootstrap.min
//= require bower_components/raphael/raphael.min
//= require bower_components/morris.js/morris.min
//= require bower_components/jquery-sparkline/dist/jquery.sparkline.min
//= require plugins/jvectormap/jquery-jvectormap-1.2.2.min
//= require plugins/jvectormap/jquery-jvectormap-world-mill-en
//= require bower_components/jquery-knob/dist/jquery.knob.min
//= require bower_components/moment/min/moment.min
//= require bower_components/bootstrap-daterangepicker/daterangepicker
//= require bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min
//= require plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min
//= require bower_components/jquery-slimscroll/jquery.slimscroll.min
//= require bower_components/fastclick/lib/fastclick
//= require dist/js/adminlte.min
//= require dist/js/pages/dashboard
//= require dist/js/demo
//= require turbolinks
//= require_tree .



$.widget.bridge('uibutton', $.ui.button);
$(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })



