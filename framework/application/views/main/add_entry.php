<div class="col-xs-12">
   <input type ="submit"class="beeBtn"></input>
</div>
<div id="beehiveInput">
  <form class="form" method="post">
      <div class="formStyle entryBlock col-xs-12">
          <div class="col-xs-12">
              <h2 class="text-center"><em>Observation Entry</em></h2>
          </div>

          <div class="col-sm-8">
              <div class="col-sm-6 form-group">
                  <label for="hiveName">Hive Name/ID</label>
                  <input type="text" id="hiveName" class="form-control" name="hiveEntry[0][hiveName]" maxlength="30">
              </div>
               <div class="col-sm-6">
                 <div class="form-group">
                      <label for="miteCount">Mite Count</label>
                      <input type="number" id="miteCount" class="form-control" name="hiveEntry[0][miteCount]">
                  </div>
              </div>
              <div class="col-sm-6">
                  <div class="form-group">
                      <label for="date">Observation Date</label>
                      <input type="date" id="date" class="form-control" name="hiveEntry[0][dateRecorded]">
                  </div>
              </div>
              <div class="col-sm-6">
                  <div class="form-group">
                      <label for="duration">Duration of Observation</label>
                      <input type="number" id="duration" class="form-control" min="0" name="hiveEntry[0][durationOfObservation]">
                  </div>
              </div>
         </div>
          <div class="col-sm-4">
              <div class="form-group">
                  <label for="notes">Notes</label>
                  <textarea id="notes" class="form-control" rows="6" id="notes" name="hiveEntry[0][notes]" maxlength="500"></textarea></br>
              </div>
          </div>

          <div class="removeBtn col-xs-6">

          </div>
          <div class="addBtn col-xs-6">
              <span class="add pull-right glyphicon glyphicon-plus" aria-hidden="true"> Add</span>
          </div>
      </div>
  </form>
</div>
<div class="col-xs-12">
   <input type ="submit"class="beeBtn"></input>
</div>

<script src='<?php echo base_url(); ?>js/entryManager.js'></script>
