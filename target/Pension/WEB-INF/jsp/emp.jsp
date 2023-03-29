<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>护工管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
</head>
<body class="pear-container">
<div class="layui-card">
    <div class="layui-card-body">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <div class="layui-form-item layui-inline">
                    <label class="layui-form-label">账号</label>
                    <div class="layui-input-inline">
                        <input type="number" name="realName" placeholder="" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item layui-inline">
                    <button class="pear-btn pear-btn-md pear-btn-primary" onclick="queryUser($('input[name=realName]').val())">
                        <i class="layui-icon"></i>
                        查询
                    </button>
                    <button type="reset" class="pear-btn pear-btn-md">
                        <i class="layui-icon layui-icon-refresh"></i>
                        重置
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="layui-table-tool">
    <div class="layui-table-tool-temp">
        <button class="pear-btn pear-btn-primary pear-btn-md" lay-event="add" onclick="addUser()">
            <i class="layui-icon layui-icon-add-1"></i> 新增
        </button>
    </div>
</div>

<div class="layui-table">
    <table class="layui-table" lay-skin="line" lay-filter="user-table">
        <thead>
        <tr>
            <th data-field="uuid" title="账号" align="center">账号</th>
            <th data-field="upwd" title="密码" align="center">密码</th>
            <th data-field="uname" title="昵称" align="center">昵称</th>
            <th data-field="utel" title="电话" align="center">电话</th>
            <th data-field="8" title="操作" align="center" class="layui-table-col-special">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="emp" items="${empList }" varStatus="status">
            <tr>
                <td>${emp.empId}</td>
                <td>${emp.empPwd}</td>
                <td>${emp.empName}</td>
                <td>${emp.empTel}</td>
                <td>
                    <button class="pear-btn pear-btn-primary pear-btn-sm" onclick="editUser('${emp.empId}')"><i class="layui-icon layui-icon-edit"></i></button>
                    <button class="pear-btn pear-btn-danger pear-btn-sm" onclick="removeUser('${emp.empId}')"><i class="layui-icon layui-icon-delete"></i></button>
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

    function addUser() {
        //添加用户
        console.log("添加护工")
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/emp/addEmp";
    }

    function editUser(userId) {
        // 根据userId进行编辑操作
        console.log("编辑用户：" + userId);
    }

    function removeUser(empId) {
        // 根据userId进行删除操作
        layer.confirm('确定要删除该用护工?', {
            icon: 3,
            title: '提示'
        }, function(index) {
            layer.close(index);
            let loading = layer.load();
            // 跳转到指定链接
            window.location.href = "${pageContext.request.contextPath}/emp/deleteEmp?empId=" + empId;
        });
    }
</script>
</body>
</html>
