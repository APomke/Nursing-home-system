<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>新增页面</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
	</head>
	<body>
		<form class="layui-form" action="">
			${msg}
			<div class="mainBox">
				<div class="main-container">
					<div class="layui-form-item">
						<label class="layui-form-label">账号</label>
						<div class="layui-input-block">
							<input type="text" name="uuid" lay-verify="title" autocomplete="off" placeholder="请输入账号"
								class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">密码</label>
						<div class="layui-input-block">
							<input type="text" name="upwd" lay-verify="title" autocomplete="off" placeholder="请输入密码"
								class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">昵称</label>
						<div class="layui-input-block">
							<input type="text" name="uname" lay-verify="title" autocomplete="off" placeholder="请输入昵称"
								class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">年龄</label>
						<div class="layui-input-block">
							<input type="number" name="uage" lay-verify="title" autocomplete="off" placeholder="请输入年龄"
								   class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">体重</label>
						<div class="layui-input-block">
							<input type="number" name="uheight" lay-verify="title" autocomplete="off" placeholder="请输入体重"
								class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">身高</label>
						<div class="layui-input-block">
							<input type="number" name="uweight" lay-verify="title" autocomplete="off" placeholder="请输入身高"
								class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">电话</label>
						<div class="layui-input-block">
							<input type="number" name="utel" lay-verify="title" autocomplete="off" placeholder="请输入电话"
								   class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">身份证号</label>
						<div class="layui-input-block">
							<input type="number" name="ucard" lay-verify="title" autocomplete="off" placeholder="请输入身份证号"
								   class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">联系人</label>
						<div class="layui-input-block">
							<input type="text" name="contact" lay-verify="title" autocomplete="off" placeholder="请输联系人"
								   class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">联系人电话</label>
						<div class="layui-input-block">
							<input type="text" name="contactTel" lay-verify="title" autocomplete="off" placeholder="请输入联系人电话"
								   class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">病史</label>
						<div class="layui-input-block">
							<input type="text" name="history" lay-verify="title" autocomplete="off" placeholder="请输入病史"
								   class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">房间号</label>
						<div class="layui-input-block">
							<input type="number" name="roomId" lay-verify="title" autocomplete="off" placeholder="请输入房间号"
								   class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">在院状态</label>
						<div class="layui-input-block">
							<input type="number" name="nurStateId" lay-verify="title" autocomplete="off" placeholder="请输入电话"
								   class="layui-input" value="1">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">护工id</label>
						<div class="layui-input-block">
							<input type="number" name="empId" lay-verify="title" autocomplete="off" placeholder="请输入护工id"
								   class="layui-input">
						</div>
					</div>

				</div>
			</div>
			<div class="bottom">
				<div class="button-container">
					<button type="submit" class="pear-btn pear-btn-primary pear-btn-sm" lay-submit=""
						lay-filter="user-save">
						<i class="layui-icon layui-icon-ok"></i>
						提交
					</button>
					<button type="reset" class="pear-btn pear-btn-sm">
						<i class="layui-icon layui-icon-refresh"></i>
						重置
					</button>
				</div>
			</div>
		</form>
	</body>
</html>
