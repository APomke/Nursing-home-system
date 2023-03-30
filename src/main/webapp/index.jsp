<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>养老院首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/layui/2.5.6/css/layui.min.css">
    <style>
        /* 轮播窗口样式 */
        .slideshow {
            position: relative;
            height: 400px;
            overflow: hidden;
        }
        .slideshow .slides {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: space-between;
        }
        .slideshow .slide {
            flex: 1 0 100%;
            height: 100%;
            text-align: center;
            background-size: cover;
            /*background-position: center;*/
        }
        .login-box {
            font-size: 25px;
            position: absolute;
            top: 20px;
            right: 20px;
            transition: all 0.3s ease;
        }


        .login-box:hover {
            transform: translateY(10px);
        }

        .login-box .dropdown {
            position: absolute;
            top: 50px;
            right: 0;
            width: 200px;
            padding: 10px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            display: none;
        }

        .login-box:hover .dropdown {
            display: block;
        }

        /* 介绍文章样式 */
        .introduction {
            margin-top: 50px;
            padding: 50px;
            text-align: center;
        }
        .introduction h2 {
            margin-bottom: 50px;
            font-size: 36px;
            color: #333;
        }
        .introduction p {
            font-size: 18px;
            color: #666;
        }
    </style>
</head>
<body>
<!-- 轮播窗口 -->
<div class="slideshow">
    <div class="slides">
        <div class="slide" style="background-image: url('images/XHS_16509851763786fb8df33-8e3f-3138-849b-20c10b00ce1a.jpg')"></div>
    </div>
</div>
<!-- 登入选项 -->
<div class="login-box">
    <a href="${pageContext.request.contextPath}/login.jsp">用户登入</a>
    <a href="${pageContext.request.contextPath}/login.jsp">管理员登入</a>
</div>

</body>
</html>

