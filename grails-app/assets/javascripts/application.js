// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-3.3.1.min
//= require bootstrap
//= require popper.min
//= require_self
function searchUserName(){
    var URL="/gituser/getuser"
    $.ajax({
        url:URL,
        type: 'POST',
        data: {name:$("#name").val()},
        success: function(resp){
            if(resp != null && resp.id != null){
                $("#location-label").val(resp.location)
                $("#bio-label").val(resp.bio)
                $("#publicrepo-label").val(resp.publicRepo)
                $("#avatar-image").attr("src", resp.avatarImage);
                $("#id-label").val(resp.id)
            }else{
                $("#location-label").val(null)
                $("#bio-label").val(null)
                $("#publicrepo-label").val(null)
                $("#avatar-image").attr("src", "");
                $("#id-label").val(null)
                alert("Account not available")
            }

        },
        error: function (err){
            //console.log(error)
        }
    });
}
