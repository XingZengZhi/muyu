/**
 * Created by 94404 on 2017/5/10.
 */
$(function(){
    // 若用户是企业用户
    var userType = $("input[name='UserType']");
    userType.click(function(){
        ChangeStatus($(this).val());
    });
    function ChangeStatus(x){
        if(x == 1){
            $("#UserCom").fadeOut(0);
            $("#UserPos").fadeOut(0);
        }else{
            $("#UserCom").fadeIn(0);
            $("#UserPos").fadeIn(0);
        }
    }
});