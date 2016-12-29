$(document).ready(function(){
   var template = $(".entryBlock").clone();
   var formField = $(".entryBlock");
   var x = 1;
   var MiteEntry = function(){
     this.hiveName;
     this.miteCount;
     this.dateRecorded;
     this.durationOfObservation;
     this.notes;
   };

   var addBtn = $("<span />")
                   .addClass('add pull-right glyphicon glyphicon-plus')
                   .attr("aria-hidden", "true")
                   .text(' Add');

   var formTemplate = $('<div />')
                      .addClass('formStyle entryBlock col-xs-12')
                      .append(
                        $('<div />')
                          .addClass('col-xs-12')
                          .append(
                           $('<h2 />')
                            .addClass('text-center')
                            .text('Observation Entry')
                          ),
                        $('<div />')
                          .addClass('col-sm-8')
                          .append(
                           $('<div />')
                            .addClass('col-sm-6 form-group')
                            .append(
                             $('<label />')
                              .attr('for','hiveName')
                              .text('Hive Name/ID'),
                             $('<input />')
                              .addClass('form-control')
                              .attr({
                                type: 'text',
                                id: 'hiveName',
                                name: 'hiveEntry[0][hiveName]',
                                maxlength: '30'
                              })
                            ),
                           $('<div />')
                            .addClass('col-sm-6 form-group')
                            .append(
                             $('<label />')
                              .attr('for', 'miteCount')
                              .text('Mite Count' ),
                             $('<input />')
                              .addClass('form-control')
                              .attr({
                                type: 'number',
                                id: 'miteCount',
                                name: 'hiveEntry[0][miteCount]'
                              })
                            ),
                            $('<div />')
                              .addClass('col-sm-6 form-group')
                              .append(
                               $('<label />')
                                .attr('for', 'date')
                                .text('Observation Date'),
                               $('<input />')
                                .addClass('form-control')
                                .attr({
                                  type: 'date',
                                  id: 'date',
                                  name: 'hiveEntry[0][dateRecorded]'
                                })
                              ),
                              $('<div />')
                                .addClass('col-sm-6 form-group')
                                .append(
                                  $('<label />')
                                    .attr('for', 'duration')
                                    .text('Duration of Observation'),
                                  $('<input />')
                                    .addClass('form-control')
                                    .attr({
                                      type: 'number',
                                      id: 'duration',
                                      name: 'hiveEntry[0][durationOfObservation]'
                                    })
                                )
                          ),
                          $('<div />')
                            .addClass('col-sm-4')
                            .append(
                              $('<div />')
                                .addClass('form-group')
                                .append(
                                  $('<label />')
                                    .attr('for', 'notes')
                                    .text('Notes'),
                                  $('<textarea />')
                                    .addClass('form-control')
                                    .attr({
                                      id: 'notes',
                                      rows: '6',
                                      name: 'hiveEntry[0][notes]',
                                      maxlength: '500'
                                    })
                                )
                            ),
                            $('<div />')
                              .addClass('removeBtn col-xs-6')
                              .append(
                                $('<span />')
                                  .addClass('remove glyphicon glyphicon-minus')
                                  .attr('aria-hidden', 'true')
                                  .text(' Remove')
                              ),
                              $('<div />')
                                .addClass('addBtn col-xs-6')
                                .append(
                                  $('<span />')
                                    .addClass('add pull-right glyphicon glyphicon-plus')
                                    .attr('aria-hidden', 'true')
                                    .text(' Add')
                                )
                      )

  $(document).on('click','.add', function(e){
      e.preventDefault();
      if(x < 10)
      {
          x++;

          // Cloning Template guarentees clean new form
          var newEntry = formTemplate.clone();

          // Removes the add button
          $(this).remove();

          $('.entryBlock').last().after(newEntry);
      }
  });

  $(document).on('click', '.remove', function(e){
    e.preventDefault();
    if(x >= 1)
    {
      x--;
      // Find previous entry
      var currentEntry = $(this).closest('.entryBlock');

      // Check if previous entry's div class addBtn contains a span if not add back
      // the span button
      if(currentEntry.find('.addBtn').children().length != 0){
          var previousEntry = currentEntry.prev('.entryBlock');
          // Copies a new addBtn template
          var newAdd = addBtn.clone();

          // Searches through previous entry and appends button back on.
          $(previousEntry).find('.addBtn').append(newAdd);
      }
      // Removes the entry to delete
      $(currentEntry).remove();
    }
  });


  $(document).on('click', '.beeBtn', function(){
    // TODO: Data to pass via ajax either serialized or POST?
    alert($("form").serialize());

  });
});
