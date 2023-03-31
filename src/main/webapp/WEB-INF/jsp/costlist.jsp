<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>缴费</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
</head>
<div class="layui-table-tool">
    <div class="layui-table-tool-temp">
        <button class="pear-btn pear-btn-primary pear-btn-md" lay-event="add" onclick="pay()">
            <i class="layui-icon layui-icon-add-1"></i> 支付宝缴纳
        </button>
        <button class="pear-btn pear-btn-primary pear-btn-md" lay-event="add" onclick="pay()">
            <i class="layui-icon layui-icon-add-1"></i> 微信缴纳
        </button>
        <button class="pear-btn pear-btn-primary pear-btn-md" lay-event="add" onclick="pay()">
            <i class="layui-icon layui-icon-add-1"></i> 银联缴纳
        </button>
    </div>
</div>
<div class="layui-table">
    <table class="layui-table" lay-skin="line" lay-filter="user-table">
        <thead>
        <tr>
            <th data-field="uuid" title="收费服务" align="center">收费服务</th>
            <th data-field="upwd" title="价格" align="center">价格</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>住宿费</td>
            <td>${cost.hotelCost}</td>
        </tr>
        <tr>
            <td>护工费</td>
            <td>${cost.empCost}</td>
        </tr>
        <tr>
            <td>餐饮费费</td>
            <td>${cost.foodCost}</td>
        </tr>
        <tr>
            <td>杂物费</td>
            <td>${cost.sundriesCost}</td>
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

    function pay() {
        //修改住宿费用
        console.log("确认缴费")
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/pay/payto";
    }

</script>
</body>
</html>
