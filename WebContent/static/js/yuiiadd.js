$(document).ready(function(){
    var clientName = $("#ClientName"); //用户名称
    var clientPhone = $("#ClientPhone"); //用户手机电话
    var metter = $("#Metter"); //事项
    var remarks = $("#Remarks"); //备注
    var startTime = $("#StartTime"); //开始时间
    var endTime = $("#EndTime"); //结束时间

    $("#yuiiSubmit").click(function(){
        if(clientName.val() != "" && clientPhone.val() != "" && metter.val() != "" &&
            remarks.val() != "" && startTime.val() != "" && endTime.val() != ""){
            return true;
        }else{
            alert("请填写完整的信息");
            return false;
        }
    });

});