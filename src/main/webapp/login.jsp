<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>养老院系统登入页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" type="text/css">
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/login" method="post">
        <div id="login-failed">${loginfailed}</div>
    <%--@declare id="username"--%><%--@declare id="password"--%><h1>欢迎进入养老院系统</h1>
        <label for="username"><b>用户名：</b></label>
        <input type="text" placeholder="请输入您的用户名" name="username" required>

        <label for="password"><b>密码：</b></label>
        <input type="password" placeholder="请输入您的密码" name="password" required>

        <button type="submit">登入</button>

    </form>
</div>
</body>
</html>
