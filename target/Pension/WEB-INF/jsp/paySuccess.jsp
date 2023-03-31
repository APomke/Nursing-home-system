<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>缴费成功</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
</head>
<div class="layui-table-tool">
    <div class="layui-table-tool-temp">
        <button class="pear-btn pear-btn-primary pear-btn-md" lay-event="add" onclick="pay()">
            <i class="layui-icon layui-icon-add-1"></i> 返回首页
        </button>
    </div>
</div>
<div class="layui-table">
    <h2>你已成功完成缴费</h2>
</div>



<script src="${pageContext.request.contextPath}/component/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/component/pear/pear.js"></script>
<script>
    let table = layui.table;
    let $ = layui.jquery;
    let common = layui.common;

    let MODULE_PATH = "operate/";

    function pay() {
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/index.jsp";
    }

</script>
</body>
</html>
