<%@ page import="com.pension.pojo.NurUser" %>
<%@ page import="com.pension.utils.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>养老院首页</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        /* 样式表 */
        .slider {
            position: relative;
            width: 100%;
            height: 300px;
            overflow: hidden;
        }
        .slider img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            /*height: 100%;*/
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }
        .slider img.active {
            opacity: 1;
        }
    </style>
</head>
<link href="css/heard.css" rel="stylesheet" type="text/css">
<body>
<!-- 导航栏 -->
<%@ include file="heard/head.html" %>

<!-- 图片轮播 -->
<div class="slider">
    <img class="active" src="images/XHS_16509851763786fb8df33-8e3f-3138-849b-20c10b00ce1a.jpg" alt="Image 1">
    <img src="images/21.jpg" alt="Image 2">
    <img src="images/XHS_1650985183230c049cf5d-d7ec-301c-969d-ba79e3f3dcd3.jpg" alt="Image 3">
</div>



<script type="text/javascript">
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let i;
        let slides = document.getElementsByTagName("img");
        for (i = 0; i < slides.length; i++) {
            slides[i].classList.remove("active"); // 先将所有图片的active类移除
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}
        slides[slideIndex-1].classList.add("active"); // 将下一张图片添加active类
        setTimeout(showSlides, 3000); // 每 3 秒切换一次图片
    }
</script>
<script>
    <% NurUser user = (NurUser) request.getSession().getAttribute(Constants.USER_SESSIOND);
    String username = "null";
    if (user == null){
      username = "null";
    }else {
      username = user.getUuid();
    }
    %>
    updateLoginButton("<%=username%>")
</script>
<!--判断是否登入失败-->
<script>
    <% String loginfailed = request.getParameter("loginfailed"); %>
    <%
    if (loginfailed != null){
    %>
    alert("登入失败")
    <%}%>
</script>
</body>
</html>

