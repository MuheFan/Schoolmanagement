<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">

    <!-- PAGE TITLE HERE -->
    <title>老师管理</title>

    <!-- Custom Stylesheet -->
    <link href="static/css/nice-select.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <style>
        button {
            position: relative;
            margin: 0;
            padding: 0.8em 1em;
            outline: none;
            text-decoration: none;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            border: none;
            text-transform: uppercase;
            background-color: #333;
            border-radius: 10px;
            color: #fff;
            font-weight: 300;
            font-size: 18px;
            font-family: inherit;
            z-index: 0;
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.02, 0.01, 0.47, 1);
        }

        button:hover {
            animation: sh0 0.5s ease-in-out both;
        }

        @keyframes sh0 {
            0% {
                transform: rotate(0deg) translate3d(0, 0, 0);
            }

            25% {
                transform: rotate(7deg) translate3d(0, 0, 0);
            }

            50% {
                transform: rotate(-7deg) translate3d(0, 0, 0);
            }

            75% {
                transform: rotate(1deg) translate3d(0, 0, 0);
            }

            100% {
                transform: rotate(0deg) translate3d(0, 0, 0);
            }
        }

        button:hover span {
            animation: storm 0.7s ease-in-out both;
            animation-delay: 0.06s;
        }

        button::before,
        button::after {
            content: '';
            position: absolute;
            right: 0;
            bottom: 0;
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background: #fff;
            opacity: 0;
            transition: transform 0.15s cubic-bezier(0.02, 0.01, 0.47, 1), opacity 0.15s cubic-bezier(0.02, 0.01, 0.47, 1);
            z-index: -1;
            transform: translate(100%, -25%) translate3d(0, 0, 0);
        }

        button:hover::before,
        button:hover::after {
            opacity: 0.15;
            transition: transform 0.2s cubic-bezier(0.02, 0.01, 0.47, 1), opacity 0.2s cubic-bezier(0.02, 0.01, 0.47, 1);
        }

        button:hover::before {
            transform: translate3d(50%, 0, 0) scale(0.9);
        }

        button:hover::after {
            transform: translate(50%, 0) scale(1.1);
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
                    <li class="breadcrumb-item"><a href="javascript:void(0)">教师管理</a></li>
                </ol>
            </div>
            <!-- row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">教师名单管理</h4>
                        </div>
                        <div class="input-group search-area" style="margin: auto">
                            <input type="text" class="form-control" placeholder="输入姓名.."
                                   style="color: #0f0f0f;text-align: left" id="inputtext">
                            <span class="input-group-text"><a href="javascript:void(0)"><i
                                    class="flaticon-381-search-2"></i></a></span>
                            <button>
                                <span><a href="/InsertTeacher_Page">添加教师信息＋</a></span>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-responsive-md">
                                    <thead>
                                    <tr>
                                        <th style="width:80px;"><strong>教师编号</strong></th>
                                        <th><strong>姓名</strong></th>
                                        <th><strong>性别</strong></th>
                                        <th><strong>出生年份</strong></th>
                                        <th><strong>学历</strong></th>
                                        <th><strong>职称</strong></th>
                                        <th><strong>入职年份</strong></th>
                                        <th><strong>学院</strong></th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody">

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
                        test += "<tr>" +
                            " <td><strong>" + value.tid + "</strong></td>" +
                            " <td>" + value.tname + "</td>" +
                            " <td>" + value.tsex + "</td>" +
                            " <td>" + value.tbirthtime + "</td>" +
                            " <td>" + value.teducation + "</td>" +
                            " <td>" + value.ttitle + "</td>" +
                            " <td>" + value.tentrydate + "</td>" +
                            " <td>" + value.tdepartment + "</td>" +
                            " <td>" +
                            "<div class=\"dropdown\">" +
                            "<button type=\"button\" class=\"btn btn-success light sharp\" data-bs-toggle=\"dropdown\">" +
                            "<svg width=\"20px\" height=\"20px\" viewbox=\"0 0 24 24\" version=\"1.1\"><g stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\"><rect x=\"0\" y=\"0\" width=\"24\" height=\"24\"></rect><circle fill=\"#000000\" cx=\"5\" cy=\"12\" r=\"2\"></circle><circle fill=\"#000000\" cx=\"12\" cy=\"12\" r=\"2\"></circle><circle fill=\"#000000\" cx=\"19\" cy=\"12\" r=\"2\"></circle></g></svg>" +
                            "</button>" +
                            "<div class=\"dropdown-menu\">" +
                            "<a class=\"dropdown-item\" href=\"/selectAllTeacherByTid?tid=" + value.tid + "\">修改</a>" +
                            "<a class=\"dropdown-item\" href=\"/delTeacherByTid?tid=" + value.tid + "\">删除</a>" +
                            "</div>" +
                            "</div>" +
                            "</td>" +
                            "</tr>"
                    })
                    $("#tbody").html(test)
                }
            })
        }

        $("#inputtext").blur(function () {

            $.ajax({
                type: "post",
                url: "/findTeacherByName",
                data: {
                    "tname": $("#inputtext").val()
                },
                success: function (data) {
                    var test = "";
                    $.each(data, function (index, value) {
                        test += "<tr>" +
                            " <td><strong>" + value.tid + "</strong></td>" +
                            " <td>" + value.tname + "</td>" +
                            " <td>" + value.tsex + "</td>" +
                            " <td>" + value.tbirthtime + "</td>" +
                            " <td>" + value.teducation + "</td>" +
                            " <td>" + value.ttitle + "</td>" +
                            " <td>" + value.tentrydate + "</td>" +
                            " <td>" + value.tdepartment + "</td>" +
                            " <td>" +
                            "<div class=\"dropdown\">" +
                            "<button type=\"button\" class=\"btn btn-success light sharp\" data-bs-toggle=\"dropdown\">" +
                            "<svg width=\"20px\" height=\"20px\" viewbox=\"0 0 24 24\" version=\"1.1\"><g stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\"><rect x=\"0\" y=\"0\" width=\"24\" height=\"24\"></rect><circle fill=\"#000000\" cx=\"5\" cy=\"12\" r=\"2\"></circle><circle fill=\"#000000\" cx=\"12\" cy=\"12\" r=\"2\"></circle><circle fill=\"#000000\" cx=\"19\" cy=\"12\" r=\"2\"></circle></g></svg>" +
                            "</button>" +
                            "<div class=\"dropdown-menu\">" +
                            "<a class=\"dropdown-item\" href=\"/selectAllTeacherByTid?tid=" + value.tid + "\">修改</a>" +
                            "<a class=\"dropdown-item\" href=\"/delTeacherByTid?tid=" + value.tid + "\">删除</a>" +
                            "</div>" +
                            "</div>" +
                            "</td>" +
                            "</tr>"
                    })
                    $("#tbody").html(test)
                }

            })
        })

    })
</script>

</html>