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

        #sumbit {
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

        #sumbit:hover {
            background-color: #23c483;
            box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
            color: #fff;
            transform: translateY(-7px);
        }

        #sumbit:active {
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
                            增
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
                            <h4 class="card-title">新增教师信息</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <form method="post" action="/addTeacher">
                                    <div class="input-group">
                                        <label class="label">工号</label>
                                        <input autocomplete="off" name="tid" id="id" class="input" type="text">
                                        <div id="erro" style="margin-left: 40%"></div>
                                    </div>
                                    <div class="input-group">
                                        <label class="label">姓名</label>
                                        <input autocomplete="off" name="tname" id="name" class="input" type="text">
                                        <div></div>
                                    </div>
                                    <div class="input-group">
                                        <label class="label">性别</label>
                                        <input type="radio" value="男" name="tsex" style="margin-left: 5%"> <span
                                            style=" margin-left: 5px; margin-top: 2px;font-size: 15px;" checked>男</span>
                                        <input type="radio" name="tsex" value="女" style="margin-left: 10%"> <span
                                            style=" margin-left: 5px; margin-top: 2px;font-size: 15px;">女</span>
                                        <div></div>
                                    </div>
                                    <div class="input-group">
                                        <label class="label">出生年月日</label>
                                        <input type="date" style="margin-left: 5%" name="tbirthtime">
                                        <div></div>
                                    </div>
                                    <div class="input-group">
                                        <label class="label">学历</label>
                                        <select autocomplete="off" name="teducation" id="Weeks" class="input"
                                                type="text">
                                            <option value="本科">本科</option>
                                            <option value="专科">专科</option>
                                            <option value="硕士">硕士</option>
                                        </select>
                                        <div></div>
                                    </div>
                                    <div class="input-group">
                                        <label class="label">职称</label>
                                        <select autocomplete="off" name="ttitle" id="title" class="input" type="text">
                                            <option value="教师">教师</option>
                                            <option value="教授">教授</option>
                                            <option value="导员">导员</option>
                                        </select>
                                        <div></div>
                                    </div>
                                    <div class="input-group">
                                        <label class="label">入职年月日</label>
                                        <input type="date" style="margin-left: 5%" name="tentrydate">
                                        <div></div>
                                    </div>
                                    <div class="input-group">
                                        <label class="label">所属院系</label>
                                        <select autocomplete="off" name="tdepartment " id="Affiliated" class="input"
                                                type="text">
                                            <option value="计算系">计算系</option>
                                            <option value="语言系">语言系</option>
                                            <option value="设计系">设计系</option>
                                            <option value="草根系">草根系</option>
                                        </select>
                                        <div></div>
                                    </div>

                                    <input type="submit" style="margin-left: 43%" id="sumbit" value="提交"/>
                                    <button style="margin-left: 5%" id="reset" type="button"> 重置</button>
                                </form>
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


    $("#reset").click(function () {

        $('#id').val('');
        $('#name').val('');
        $('#birthtime').val('');
        $('#sschooltime').val('');
        $('#sdepartment').val('');

    })


    $("#id").blur(function () {
        $.ajax({
            type: "get",
            url: "/selectAllByTd",
            data: {
                "tid": $("#id").val()
            },
            success: function (data) {
                if (data == "") {
                    $("#erro").text("可以使用")
                    $("#erro").css("color", "green")
                    $("#sumbit").removeAttr("disabled")
                } else {
                    $("#erro").text("不可以使用")
                    $("#erro").css("color", "red")
                    $("#erro").css("color", "green")
                    $("#sumbit").attr("disabled", "disabled")
                }
            }

        })


    })

</script>
</html>