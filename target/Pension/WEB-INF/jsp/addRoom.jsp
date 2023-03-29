<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新增房间页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
</head>
<body>
<form class="layui-form" action="">
    ${msg}
    <div class="mainBox">
        <div class="main-container">
            <div class="layui-form-item">
                <label class="layui-form-label">房间id</label>
                <div class="layui-input-block">
                    <input type="text" name="roomId" lay-verify="title" autocomplete="off" placeholder="请输入房间id"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">房间朝向</label>
                <div class="layui-input-block">
                    <input type="text" name="orientation" lay-verify="title" autocomplete="off" placeholder="房间朝向"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">楼层</label>
                <div class="layui-input-block">
                    <input type="number" name="floor" lay-verify="title" autocomplete="off" placeholder="请输入楼层"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">价格</label>
                <div class="layui-input-block">
                    <input type="number" name="price" lay-verify="title" autocomplete="off" placeholder="请输入价格"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">类型id</label>
                <div class="layui-input-block">
                    <input type="number" name="typeId" lay-verify="title" autocomplete="off" placeholder="请输入类型id"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">房间状态id</label>
                <div class="layui-input-block">
                    <input type="number" name="roomStateId" lay-verify="title" autocomplete="off" placeholder="请输入房间状态id"
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
