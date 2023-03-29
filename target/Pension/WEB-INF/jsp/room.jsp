<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>房间管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
</head>
<body class="pear-container">
<div class="layui-card">
    <div class="layui-card-body">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <div class="layui-form-item layui-inline">
                    <label class="layui-form-label">房间id</label>
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
            <th data-field="uuid" title="房间id" align="center">房间id</th>
            <th data-field="upwd" title="朝向" align="center">朝向</th>
            <th data-field="uname" title="楼层" align="center">楼层</th>
            <th data-field="utel" title="价格" align="center">价格</th>
            <th data-field="utel" title="类型" align="center">类型</th>
            <th data-field="utel" title="房间状态" align="center">房间状态</th>
            <th data-field="8" title="操作" align="center" class="layui-table-col-special">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="room" items="${roomList }" varStatus="status">
            <tr>
                <td>${room.roomId}</td>
                <td>${room.orientation}</td>
                <td>${room.floor}</td>
                <td>${room.price}</td>
                <td>
                    <c:choose>
                        <c:when test="${room.typeId == 1}">普通房间</c:when>
                        <c:when test="${room.typeId == 2}">vip房间</c:when>
                        <c:otherwise>${room.typeId}</c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <c:choose>
                        <c:when test="${room.roomStateId == 1}">正常</c:when>
                        <c:when test="${room.roomStateId == 2}">已住满</c:when>
                        <c:when test="${room.roomStateId == 3}">正在维修</c:when>
                        <c:otherwise>${room.roomStateId}</c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <button class="pear-btn pear-btn-primary pear-btn-sm" onclick="editUser('${room.roomId}')"><i class="layui-icon layui-icon-edit"></i></button>
                    <button class="pear-btn pear-btn-danger pear-btn-sm" onclick="removeUser('${room.roomId}')"><i class="layui-icon layui-icon-delete"></i></button>
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

    function queryUser(roomId){
        //查询房间
        console.log("查询用户:" + roomId)
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/room/queryRoom?roomId=" + roomId;
        return false;
    }

    function addUser() {
        //添加房间
        console.log("添加房间")
        // 跳转到指定链接
        window.location.href = "${pageContext.request.contextPath}/room/addRoom";
    }

    function editUser(userId) {
        // 根据userId进行编辑操作
        console.log("编辑房间：" + userId);
    }

    function removeUser(roomId) {
        // 根据userId进行删除操作
        layer.confirm('确定要删除该房间?', {
            icon: 3,
            title: '提示'
        }, function(index) {
            layer.close(index);
            let loading = layer.load();
            // 跳转到指定链接
            window.location.href = "${pageContext.request.contextPath}/room/deleteRoom?roomId=" + roomId;
        });
    }
</script>
</body>
</html>
