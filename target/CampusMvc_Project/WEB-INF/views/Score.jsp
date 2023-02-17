<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="robots" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Innap : Hotel Admin Template">

    <!-- PAGE TITLE HERE -->
    <title>学生管理</title>

    <!-- Custom Stylesheet -->
    <link href="static/css/nice-select.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <style type="text/css">
        .input-group {
            margin-top: 2%;
        }

        .input {
            margin: auto;
            margin-left: 20px !important;
            width: 40%;
            height: 44px;
            background-color: #05060f0a;
            border-radius: .5rem;
            padding: 0 1rem;
            border: 2px solid transparent;
            font-size: 1rem;
            transition: border-color .3s cubic-bezier(.25, .01, .25, 1) 0s, color .3s cubic-bezier(.25, .01, .25, 1) 0s, background .2s cubic-bezier(.25, .01, .25, 1) 0s;
        }

        .label {
            width: 15%;
            text-align: right;
            margin-left: 20% !important;
            display: block;
            margin-bottom: .3rem;
            font-size: .9rem;
            font-weight: bold;
            color: #05060f99;
            transition: color .3s cubic-bezier(.25, .01, .25, 1) 0s;
        }

        .input:hover, .input:focus, .input-group:hover .input {
            outline: none;
            border-color: #05060f;
        }

        .input-group:hover .label, .input:focus {
            color: #05060fc2;
        }

        button {
            padding: 1.3em 3em;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 2.5px;
            font-weight: 500;
            color: #000;
            background-color: #fff;
            border: none;
            border-radius: 45px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease 0s;
            cursor: pointer;
            outline: none;
        }

        button:hover {
            background-color: #23c483;
            box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
            color: #fff;
            transform: translateY(-7px);
        }

        button:active {
            transform: translateY(-1px);
        }

    </style>
</head>

<body>

<!--*******************
    Preloader start
********************-->
<div id="preloader">
    <div class="waviy">
        <span style="--i:1">L</span>
        <span style="--i:2">o</span>
        <span style="--i:3">a</span>
        <span style="--i:4">d</span>
        <span style="--i:5">i</span>
        <span style="--i:6">n</span>
        <span style="--i:7">g</span>
        <span style="--i:8">.</span>
        <span style="--i:9">.</span>
        <span style="--i:10">.</span>
    </div>
</div>
<!--*******************
    Preloader end
********************-->


<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">


    <!--**********************************
        Header start
    ***********************************-->
    <div class="header">
        <div class="header-content">
            <nav class="navbar navbar-expand">
                <div class="collapse navbar-collapse justify-content-between">
                    <div class="header-left">
                        <div class="dashboard_bar">
                            查
                        </div>
                    </div>
                    <ul class="navbar-nav header-right">

                        <li class="nav-item dropdown header-profile">
                            <a class="nav-link" href="javascript:void(0);" role="button">
                                <img src="${user.img}" alt="">
                                <div class="header-info ms-3">
                                    <span>${user.uaccounts}</span>
                                    <small>${user.utype}</small>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <!--**********************************
        Header end ti-comment-alt
    ***********************************-->

    <!--**********************************
         Sidebar start
     ***********************************-->
    <div class="deznav">
        <div class="deznav-scroll">
            <ul class="metismenu" id="menu">
                <c:if test="${user.utype=='管理'}">
                    <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/curriculum_Page">
                        <i class="flaticon-013-checkmark"></i>
                        <span class="nav-text">课程管理</span>
                    </a>
                    </li>
                </c:if>
                <c:if test="${user.utype=='管理'}">
                    <li><a class="has-arrow ai-icon" href="index.jsp">
                        <i class="flaticon-086-star"></i>
                        <span class="nav-text">学生管理</span>
                    </a>
                    </li>
                </c:if>
                <c:if test="${user.utype=='管理'}">
                    <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/teacher_Page">
                        <i class="flaticon-086-star"></i>
                        <span class="nav-text">教师管理</span>
                    </a>
                    </li>
                </c:if>
                <c:if test="${user.utype=='管理'}">
                    <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/Account_Page">
                        <i class="flaticon-072-printer"></i>
                        <span class="nav-text">帐号密码重置</span>
                    </a>
                    </li>
                </c:if>
                <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/modify_Page">
                    <i class="flaticon-072-printer"></i>
                    <span class="nav-text">个人信息</span>
                </a>
                </li>
                <c:if test="${user.utype=='老师'}">
                    <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/ITeachCourses_Page">
                        <i class="flaticon-050-info"></i>
                        <span class="nav-text">我的课程</span>
                    </a>
                    </li>
                </c:if>
                <c:if test="${user.utype=='学生'}">
                    <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/Allcurriculum_Page">
                        <i class="flaticon-050-info"></i>
                        <span class="nav-text">所有课程</span>
                    </a>
                    </li>
                </c:if>
                <c:if test="${user.utype=='学生'}">
                    <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/choiceCurriculum_Page">
                        <i class="flaticon-050-info"></i>
                        <span class="nav-text">已选课程</span>
                    </a>
                    </li>
                </c:if>
                <c:if test="${user.utype=='学生'}">
                    <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/PracticeCurriculum_Page">
                        <i class="flaticon-050-info"></i>
                        <span class="nav-text">已修课程</span>
                    </a>
                    </li>
                </c:if>
                <li><a class="has-arrow ai-icon" href="${pageContext.request.contextPath}/pagelogin_Page">
                    <i class="flaticon-050-info"></i>
                    <span class="nav-text">退出登录</span>
                </a>
                </li>
            </ul>
        </div>
    </div>
    <!--**********************************
        Sidebar end
    ***********************************-->
    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">
        <div class="container-fluid">
            <div class="row page-titles">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">${user.utype}</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0)">详情</a></li>
                </ol>
            </div>
            <!-- row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">已选该课程学生名单</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-responsive-md">
                                    <thead>
                                    <tr>
                                        <th><strong>学号</strong></th>
                                        <th><strong>姓名</strong></th>
                                        <th><strong>分数</strong></th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <<c:forEach items="${findfraction}" var="f">
                                        <tr>
                                            <td><strong>${f.student.sid}</strong></td>
                                            <td>${f.student.sname}</td>
                                            <td><c:if test="${empty f.fracion}">未打分</c:if>
                                                <c:if test="${not empty f.fracion}">${f.fracion}</c:if>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button type="button" class="btn btn-success light sharp"
                                                            data-bs-toggle="dropdown">
                                                        <svg width="20px" height="20px" viewbox="0 0 24 24"
                                                             version="1.1">
                                                            <g stroke="none" stroke-width="1" fill="none"
                                                               fill-rule="evenodd">
                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                <circle fill="#000000" cx="5" cy="12" r="2"></circle>
                                                                <circle fill="#000000" cx="12" cy="12" r="2"></circle>
                                                                <circle fill="#000000" cx="19" cy="12" r="2"></circle>
                                                            </g>
                                                        </svg>
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item"
                                                           href="/findAchievementById?id=${f.aid}">打分</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--**********************************
        Content body end
    ***********************************-->


    <!--**********************************
        Footer start
    ***********************************-->

    <!--**********************************
        Footer end
    ***********************************-->

    <!--**********************************
       Support ticket button start
    ***********************************-->

    <!--**********************************
       Support ticket button end
    ***********************************-->


</div>
<!--**********************************
    Main wrapper end
***********************************-->

<!--**********************************
    Scripts
***********************************-->
<!-- Required vendors -->
<script src="static/js/global.min.js"></script>
<script src="static/js/jquery.nice-select.min.js"></script>
<script src="static/js/custom.min.js"></script>
<script src="static/js/deznav-init.js"></script>
<script src="static/js/demo.js"></script>
<script src="static/js/styleSwitcher.js"></script>
</body>

<script type="text/javascript">
    $(function () {
        getAllstudent();

        function getAllstudent() {
            $.ajax({
                type: "get",
                url: "/findAllTeacher",
                success: function (data) {
                    var test = "";
                    $.each(data, function (index, value) {
                        test +=
                    })
                    $("#tbody").html(test)
                }
            })
        }

    )
    }
</script>
</html>