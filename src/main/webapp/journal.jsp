<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>财务管理系统</title>
    <%@ include file="demo.jsp"%>
  <link rel="stylesheet" href="layui1/css/layui.css"  media="all">
</head>    
<body class="layui-layout-body" >    
<div class="layui-layout layui-layout-admin">
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>资金管理 - 日记账</legend>
            <div class="layui-field-box">
              <hr>
              <div>
                  <button class="layui-btn layui-btn-xs dw-refresh">
                      <i class="layui-icon">&#x1002;</i>刷新
                  </button>
				  <button id="btn" class="layui-btn layui-btn-xs btn btn-primary">
					  <i class="layui-icon">&#x1002;</i>导出
				  </button> 
              </div> 
              <hr>
		  
		  <form action="journal.do">
    <div class="demoTable">
      <label class="layui-form-label">选择日期</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test1" placeholder="2018-08-22">
      </div>&nbsp;&nbsp;&nbsp;
      	搜索ID：
	  <div class="layui-inline">
	    <input class="layui-input" name="keyword" id="demoReload" autocomplete="off">
	  </div>
	  <button class="layui-btn" data-type="reload" type="submit">搜索</button>
    </div>
    </form>
		  
                    <div class="table-responsive table2excel" style="width: 800px; "
					data-tableName="Test Table 1">    
						<table class="layui-hide" id="LAY_table_user" lay-filter="test"></table>
                </div> 
			</div>
		</fieldset>	
     </div>
  </div>
</div>
     
<script src="js/jquery-1.11.0.min.js"></script>    
<script src="js/jquery.table2excel.js"></script>    
<script type="text/javascript" src="layui1/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="icheck/icheck.js"></script>
<script type="text/javascript" src="js/dw.js"></script>
<script>   
//	定义时间的函数
layui.use('laydate', function(){
	var laydate = layui.laydate;
	//年月日选择器
	laydate.render({
	  elem: '#test1'
	});
});

var demoReload = $('#demoReload').val();

layui.use('table', function(){
  var table = layui.table;
  //第一个实例
  table.render({
    elem: '#LAY_table_user	'
    ,height: 315
    ,url: 'voucher.do?op=checkvoucher' //数据接口
    ,page: true //开启分页
	,cols: [[
      {field:'id', width:120, title: '账单编号', sort: true}
      ,{field:'types', width:123, title: '报账类型'}
      ,{field:'project', width:250, title: '报账项目'}
	  ,{field:'reportime', width:150, title: '报账时间'}
      ,{field:'allmoney', width:150, title: '报账总金额'}
    ]]
  ,id: 'testReload'
  });
  
  var $ = layui.$, active = {
  	    reload: function(){
  	      var demoReload = $('#demoReload');
  	      table.reload('testReload', {
  	        page: {curr: 1 }
  	        ,where: {
  	            keyword: demoReload.val()
  	        }
  	      });
  	    }
  };
  	  
  $('.demoTable .layui-btn').on('click', function(){
	    var type = $(this).data('type');
	    active[type] ? active[type].call(this) : '';
	  });
});
	
$(function() {    	
    $("#btn").click(function(){  
        $(".table2excel").table2excel({  			
            exclude: ".noExl",    
            name: "Excel Document Name",    
            filename: "日记账表",    
            exclude_img: true,    
            exclude_links: true,    
            exclude_inputs: true    
        });  
    });    
}); 

</script> 
    
</body>    
</html>