$(document).ready(function() {
    
    $('.habitmap').maphilight();
    $('map').imageMapResize();
    
    
    $('#Form_Form_Region').on('change', function() {
        
        $('map area').each(function() {
            hData = $(this).data('maphilight') || {}; // get
            hData.alwaysOn = false; // modify
            $(this).data('maphilight', hData ).trigger('alwaysOn.maphilight'); // set
        });
      
      
        if (this.value) {
            
            var sel_id = $(this).find(':selected').data('id');
            var sel_val = $(this).find(':selected').val();
            
            //$("map area[title='"+ sel_val +"']").trigger('alwaysOn.maphilight');
            
            var data = $("map area[title='"+ sel_val +"']").data('maphilight') || {};
            data.alwaysOn=true;
            $("map area[title='"+ sel_val +"']").data('maphilight', data).trigger('alwaysOn.maphilight');            
            
            
            //$("map area[title='Wellington']").trigger('alwaysOn.maphilight');
            //alert($("map area[title='Wellington']").attr('href'));
                
                $.ajax({
                        url:'/regioninfo/showregioninfo/'+ sel_id,
                        success:function(response) {
                            
                           $("#regioninfo").html(response);
                           
                        }
                    });                
                
        }
        else {
            $("#regioninfo").html('');
        }
    })    
    
//    $('map area').hover(function(){  
//        //$(this).trigger('click');  
//        
//        var ttl = $(this).attr('Title');
//        $('#Form_Form_Region').val(ttl);
//        $('#Form_Form_Region').trigger('change');
//    });     
    
    var timeoutId;
    $('map area').hover(function() {
        
        var ttl = $(this).attr('Title');

        
        if (!timeoutId) {
            timeoutId = window.setTimeout(function() {
                timeoutId = null;

                $('#Form_Form_Region').val(ttl);
                $('#Form_Form_Region').trigger('change');                        
                
                console.log(ttl);
           }, 1000);
        }
    },
    function () {
        if (timeoutId) {
            window.clearTimeout(timeoutId);
            timeoutId = null;
        }
        
    });
    
    
});