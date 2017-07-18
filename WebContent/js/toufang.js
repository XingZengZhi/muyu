$(function(){
  var href = window.location.href;
  console.log(href.substring(0, href.lastIndexOf('/') + 1));
  //广告类型选择
  var catContent = $(".cat-content");
  var catContentP = $(".cat-content p");
  var catChooseP = $(".cat-choose p");
  var chooseBtn = $(".cat-btn button");
  var chooseContent = $(".cat-choose");
  catContent.click(function(e){
    chooseContent.toggle();
    e.stopPropagation();//停止事件冒泡
  });
  catChooseP.click(function(){
    catContentP.text($(this).text());
  });
  chooseBtn.on("click", function(e){
    chooseContent.toggle();
    e.stopPropagation();//停止事件冒泡
  });
  $(document).click(function(){
    chooseContent.hide();//隐藏选择框
  });
  //-------end--------------

  // 地址栏
  var province = $(".address-item div li");//省
  // 选中某个省
  province.click(function(){
    if($(this).prop("class")){
      $(this).css("border", "1px solid transparent");
      $(this).removeClass("province");
    }else{
      $(this).addClass("province");
      $(this).css("border", "1px solid #F6BA40");
    }
  });
  // end

  // 广告列表
  var adItem = $(".ad-item");
  adItem.mouseenter(function(){
    $(this).children(".productTitle").stop(true).animate({
        bottom:0 + 'px'
    });
    $(this).children(".productionDetails").stop(true).animate({
        left:0 + 'px'
    });
  }).mouseleave(function(){
    $(this).children(".productTitle").stop(true).animate({
        bottom:-60 + 'px'
    });
    $(this).children(".productionDetails").stop(true).animate({
        left:-294 + 'px'
    });
  });

  //分页按钮事件
  var number = 5;
  var pageRight = $(".page-item ul li:last");
  var pageLeft = $(".page-item ul li:first");
  var pageArr = new Array(number);
  function createPage(number){
    for(var i = 0;i<pageArr.length;i++){
      if((i + 1) <= number){
          pageArr[i] = i + 1;
      }
    }
    for(var i = 0;i<pageArr.length;i++){
      if(pageArr[i] <= 3){
          pageRight.before("<li><span>"+ pageArr[i] + "</span></li>");
      }
    }
  }
  function overPage(direction){
    if(direction){
      if($(".page-item ul li:eq(3)").children("span").text() >= number)return;
      $(".page-item ul li:eq(1)").remove();
      pageRight.before("<li><span>"+ pageArr[parseInt($(".page-item ul li:eq(2)").children("span").text())] + "</span></li>");
    }else{
      if($(".page-item ul li:eq(1)").children("span").text() == 1)return;
      $(".page-item ul li:eq(3)").remove();
      pageLeft.after("<li><span>"+ pageArr[parseInt($(".page-item ul li:eq(1)").children("span").text()) - 2] + "</span></li>");
    }
  }
  createPage(number);
  pageRight.click(function(){
      overPage(true);
  });
  pageLeft.click(function(){
      overPage(false)
  });
  function findData(pageIndex){
    $.ajax({
        type:"post",
        dataType:"json",
        data:{
          pageIndex:pageIndex
        },
        url:href + "findPageData",
        success:function(result){
          console.log(result);
        }
    });
  }
  console.log(pageArr);
})
