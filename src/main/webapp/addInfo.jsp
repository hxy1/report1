	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>财务管理系统</title>
  <link rel="stylesheet" href="./layui1/css/layui.css"  media="all">
</head>
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./layui1/layui.js"></script>
<script type="text/javascript" src="./js/sys_config.js"></script>
<div class="layui-container">
	<div class="layui-row">
		<div class="layui-col-lg12">
			<fieldset class="layui-elem-field">
				<legend>用户管理 - 完善个人资料</legend>
            <div class="layui-field-box">
                <form class="layui-form" method="post" action="" enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <label class="layui-form-label">员工姓名</label>
                        <div class="layui-input-block">
                        <input type="text" name="uname" style="width:190px;"  value="${sessionScope.users.uname }" autocomplete="off" class="layui-input">
                        </div>
                    </div>
					
					<div class="layui-form-item">
                        <label class="layui-form-label">联系方式</label>
                        <div class="layui-input-block">
                        <input type="text" required lay-verify="required" name="phone" lay-verify="phone" style="width:190px;"  value="${sessionScope.users.phone }" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">邮箱</label>
                        <div class="layui-input-block">
                        <input type="text" required lay-verify="required" lay-verify="email" name="email" id="email" style="width:190px;" value="${sessionScope.users.email }" autocomplete="off" class="layui-input">
                        </div>
                    </div>
					
                    <div class="layui-form-item">
                        <label class="layui-form-label">选择部门</label>
                        <div class="layui-input-block" style="width:190px;" >
                        <select name="did" >
                            <option value="${sessionScope.users.did }"></option>
                            <option value="0">采购部</option>
                            <option value="1">财务部</option>
                            <option value="2">财务经理</option>
                            <option value="3">总经理</option>
                        </select>
                        </div>
                    </div>
                   
                    <div class="layui-form-item">
                        <label class="layui-form-label">性别</label>
                        <div class="layui-input-block">
                        <input type="radio" name="sex" value="1" title="男" ${sessionScope.users.sex eq 1 ? 'checked="checked"' :"" } />
                        <input type="radio" name="sex" value="2" title="女" ${sessionScope.users.sex eq 2 ? 'checked="checked"' :"" } />
                        </div>
                    </div>

					<div class="layui-upload">
					<label class="layui-form-label">更改头像:</label>
					  <input style="display:none" type="text" name="name"/>
					  <div class="layui-input-block">
					  <input type="file" style="color:blue;width:200px;" value="${sessionScope.users.uid }" name="file"/>
					  </div>
					</div>
					<input type="hidden"  name="uid" value="${sessionScope.users.uid }"/>
					
                    <div class="layui-form-item" style="margin-top: 15px;">
                        <div class="layui-input-block">
                        <button class="layui-btn" lay-submit type="submit">立即修改</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </fieldset>
    </div>
  </div>
</div>
</body>
</html>