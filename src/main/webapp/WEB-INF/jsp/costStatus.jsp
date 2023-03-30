<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>缴费情况</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
</head>
<body class="pear-container">
<div class="layui-card">
    <div class="layui-card-body">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <div class="layui-form-item layui-inline">
                    <label class="layui-form-label">用户账号</label>
                    <div class="layui-input-inline">
                        <input type="number" name="realName" placeholder="" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item layui-inline">
                    <button class="pear-btn pear-btn-md pear-btn-primary" onclick="queryUser($('input[name=realName]').val())">
                        <i class="layui-icon"></i>
                        查询
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="layui-table">
    <table class="layui-table" lay-skin="line" lay-filter="user-table">
        <thead>
        <tr>
            <th data-field="uuid" title="账号" align="center">账号</th>
            <th data-field="ispay" title="是否缴费" align="center">是否缴费</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="pay" items="${payList }" varStatus="status">
            <tr>
                <td>${pay.uuid}</td>
                <td>
                    <c:choose>
                        <c:when test="${pay.ispay == 0}">未缴费</c:when>
                        <c:when test="${pay.ispay == 1}">已缴费</c:when>
                        <c:otherwise>${pay.ispay}</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
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

    function queryUser(empId){
        //查询护工
        console.log("查询用户:" + empId)
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/emp/queryEmp?uuid=" + empId;
        return false;
    }
</script>
</body>
</html>
