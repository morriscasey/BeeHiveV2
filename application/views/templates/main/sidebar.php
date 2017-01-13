<div class="col-sm-3 col-md-2 sidebar">
  <ul class="nav nav-sidebar">
    <li <?php if(isset($overview)) {echo $overview;} ?>><?php echo anchor('main/index/overview', 'Overview', 'class="link-class"') ?></li>
    <li <?php if(isset($add_entry)) {echo $add_entry;}?>><?php echo anchor('main/index/add_entry', 'Add Data', 'class="link-class"') ?></li>
    <li <?php if(isset($export_data)) {echo $export_data;}?>><?php echo anchor('main/index/export_data', 'Export Data', 'class="link-class"') ?></li>
  </ul>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
