<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>缴费管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
</head>
<body class="pear-container">

<div class="layui-table">
    <table class="layui-table" lay-skin="line" lay-filter="user-table">
        <thead>
        <tr>
            <th data-field="uuid" title="收费服务" align="center">收费服务</th>
            <th data-field="upwd" title="价格" align="center">价格</th>
            <th data-field="8" title="操作" align="center" class="layui-table-col-special">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>住宿费</td>
            <td>${cost.hotelCost}</td>
            <td>
                <button class="pear-btn pear-btn-primary pear-btn-sm" onclick="editHotel()"><i class="layui-icon layui-icon-edit"></i></button>
            </td>
        </tr>
        <tr>
            <td>护工费</td>
            <td>${cost.empCost}</td>
            <td>
                <button class="pear-btn pear-btn-primary pear-btn-sm" onclick="editEmp()"><i class="layui-icon layui-icon-edit"></i></button>
            </td>
        </tr>
        <tr>
            <td>餐饮费费</td>
            <td>${cost.foodCost}</td>
            <td>
                <button class="pear-btn pear-btn-primary pear-btn-sm" onclick="editFood()"><i class="layui-icon layui-icon-edit"></i></button>
            </td>
        </tr>
        <tr>
            <td>杂物费</td>
            <td>${cost.sundriesCost}</td>
            <td>
                <button class="pear-btn pear-btn-primary pear-btn-sm" onclick="editSundries()"><i class="layui-icon layui-icon-edit"></i></button>
            </td>
        </tr>


        </tbody>
    </table>
    ${msg}
</div>



<script src="${pageContext.request.contextPath}/component/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/component/pear/pear.js"></script>
<script>
    let table = layui.table;
    let $ = layui.jquery;
    let common = layui.common;

    let MODULE_PATH = "operate/";

    function editUser(userId) {
        // 根据userId进行编辑操作
        console.log("编辑房间：" + userId);
    }

    function editHotel() {
        //修改住宿费用
        console.log("修改住宿费用")
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/cost/edit";
    }

    function editEmp() {
        console.log("修改护工费用")
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/cost/edit";
    }
    function editFood() {
        console.log("修改餐饮费用")
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/cost/edit";
    }
    function editSundries() {
        console.log("修改杂物费用")
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/cost/edit";
    }


</script>
</body>
</html>
