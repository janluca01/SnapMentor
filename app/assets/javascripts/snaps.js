var init_snap_lookup;

init_snap_lookup = function(){

$('#snap-lookup-form').on('ajax:before', function(event, data, status){

show_spinner();

});

$('#snap-lookup-form').on('ajax:after', function(event, data, status){

hide_spinner();

});

$('#snap-lookup-form').on('ajax:success', function(event, data, status){

$('#snap-lookup').replaceWith(data);

init_friend_lookup();

});

$('#snap-lookup-form').on('ajax:error', function(event, xhr, status, error){

hide_spinner();

$('#snap-lookup-results').replaceWith(' ');

$('#snap-lookup-errors').replaceWith('Snap was not found.');

});

}

$(document).ready(function() {

init_friend_lookup();

})