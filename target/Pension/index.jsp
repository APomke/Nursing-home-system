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
            color: #2F96B4;
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
<!-- 介绍文章 -->
<div class="introduction">
    <h2>欢迎来到养老院</h2>
    <p>养老院是一个专门为老年人提供照顾和服务的场所，我们致力于提供高质量的生活、医疗、健康和社交服务。</p>
    <p>我们的使命是创造一个舒适、安全和愉快的居住环境，满足老年人的需求，并帮助他们保持健康、自主和有意义的生活。</p>

    <p>亲爱的朋友们，</p>
    <br>
    <br>
    <br>
    <p>在我们不知不觉中，岁月已经悄然而至。当我们回首往事时，是否也有着对未来的担忧和迷茫呢？</p>
    <br>
    <br>
    <br>
    <p>但是，我想告诉大家，无论你身处何时何地，都不要放弃对美好生活的追求。就像我们所熟知的那句话：“年轻不是资本，老年也不是负担。”</p>
    <br>
    <br>
    <br>
    <p>养老院并不仅仅是一个名词，它更是一种精神和文化的象征。它既承载着社会的责任和担当，更传递着人类对美好生活的向往和追求。</p>
    <br>
    <br>
    <br>
    <p>我们要相信，每一个老年人都有着自己的价值和意义。他们经历过风雨、沧桑，积累了丰富的人生经验和智慧。他们也需要我们的关爱和陪伴，为他们营造出一个舒适、温馨的生活环境。</p>
    <br>
    <br>
    <br>
    <p>因此，让我们共同努力，把养老院建设成为一个充满理想和磅礴大气的场所，让每一个老年人都能够享受到尊严、快乐和幸福的晚年生活。</p>
    <br>
    <br>
    <br>
    <p>谢谢。</p>
</div>

</body>
</html>

