<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改缴费价格页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
</head>
<body>
<form class="layui-form" action="">
    ${msg}
    <div class="mainBox">
        <div class="main-container">
            <div class="layui-form-item">
                <label class="layui-form-label">住宿费用</label>
                <div class="layui-input-block">
                    <input type="number" name="hotelCost" lay-verify="title" autocomplete="off" placeholder="请输入房间id"
                           class="layui-input" value="${cost.hotelCost}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">护工费用</label>
                <div class="layui-input-block">
                    <input type="number" name="empCost" lay-verify="title" autocomplete="off" placeholder="房间朝向"
                           class="layui-input" value="${cost.empCost}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">餐饮费用</label>
                <div class="layui-input-block">
                    <input type="number" name="foodCost" lay-verify="title" autocomplete="off" placeholder="请输入楼层"
                           class="layui-input" value="${cost.foodCost}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">杂物费用</label>
                <div class="layui-input-block">
                    <input type="number" name="sundriesCost" lay-verify="title" autocomplete="off" placeholder="请输入价格"
                           class="layui-input" value="${cost.sundriesCost}">
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
