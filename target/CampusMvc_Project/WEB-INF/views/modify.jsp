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
        #avarimgs1, #xdaTanFileImg1 {
            margin-left: 25%;
            width: 300px;
            height: 224px;
        }

        #xdaTanFileImg1 {
            margin-left: 25%;
            position: absolute;
            opacity: 0;
        }

        #file {
            opacity: 0;
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
                                <img src="${user.img}" alt="" id="userimg">
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
                    <li class="breadcrumb-item"><a href="javascript:void(0)">修改密码</a></li>
                </ol>
            </div>
            <!-- row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">重置其他用户密码</h4>
                        </div>

                        <div class="col-xl-8 col-lg-12" style="margin: auto">
                            <div class="card">
                                <div class="card-body">
                                    <div class="basic-form">

                                        <div>
                                            <form enctype="multipart/form-data" id="file" style="margin-left: 30%">
                                                图片上传:<input type="file" name="file" id="imgclick" onchange="aaa()">
                                                <%--														onchange="aaa()--%>

                                            </form>
                                            <img src="${user.img}" class="img-circle img-thumbnail img-responsive"
                                                 id="avarimgs1">
                                            <input class="col-sm-3 col-form-label" id="imgtext"
                                                   style="visibility: hidden;margin-left: 30%">

                                        </div>

                                        <div class="mb-3 row">
                                            <label class="col-sm-3 col-form-label">用户id</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" value="${user.uid}">
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label class="col-sm-3 col-form-label">用户名</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" placeholder="Password"
                                                       value="${user.uaccounts}" id="uaccounts">
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label class="col-sm-3 col-form-label">密码</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control" placeholder="密码"
                                                       id="password1">
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label class="col-sm-3 col-form-label">确认密码</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control" placeholder="确认密码"
                                                       id="password2">
                                                <label class="col-sm-3 col-form-label" id="messg2"></label>
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <div class="col-sm-10">
                                                <button type="button" id="sumbit" class="btn btn-primary col-sm-3"
                                                        style="margin-left: 30%;margin-right: 15%" disabled>提交
                                                </button>

                                                <button type="button" class="btn btn-primary col-sm-3" id="reset">重置
                                                </button>
                                            </div>
                                        </div>

                                        </form>
                                    </div>
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


        $("#reset").click(function () {

            $('#uaccounts').val('');
            $('#password1').val('');
            $('#password2').val('');

        })

        $("#uaccounts").blur(function () {
            $.ajax({
                type: "get",
                url: "/FindUserByname",
                data: {
                    "uaccounts": $("#uaccounts").val()
                },
                success: function (data) {
                    if (data == 1) {
                        $("#messg").text("未查询到该帐号");
                        $("#messg").css("color", "red");
                        $("#sumbit").attr("disabled", "true")
                    } else {
                        $("#messg").text("已查询到该帐号");
                        $("#messg").css("color", "green");
                        $("#sumbit").removeAttr("disabled")
                    }

                }

            })
        })


        $("#password2").blur(function () {
            let val = $("#password1").val();
            let val1 = $("#password2").val();
            if (val != val1) {
                $("#messg2").text("密码不一致");
                $("#messg2").css("color", "red");
                $("#sumbit").attr("disabled", "true")
            } else {
                $("#messg2").text("ok");
                $("#messg2").css("color", "green");
                $("#sumbit").removeAttr("disabled")
            }
        })

        $("#sumbit").click(function () {
            $.ajax({
                type: "post",
                url: "/UpdateUserImg",
                data: {
                    "uaccounts": $("#uaccounts").val(),
                    "upassword": $("#password2").val(),
                    "img": $("#imgtext").val()
                },
                success: function (data) {
                    console.log(data)
                    if (data == 1) {
                        $("#userimg").attr("src", $("#imgtext").val())
                    } else {
                        alert("修改失败");
                    }
                }

            })


        })


    })

</script>

<script type="application/javascript">
    <%--文件上传--%>

    function aaa() {
        $.ajax({
            type: 'POST',
            url: "/files",
            data: new FormData($("#file")[0]),
            cache: false,
            processData: false,
            contentType: false,
            success: function (ret) {
                if (ret != "erro") {
                    $("#imgtext").css("visibility", "visible")
                    $("#imgtext").val(ret)
                    $("#avarimgs1").attr("src", ret)
                    $("#avarimgs1").css("display", "block");
                    $("#avarimgs1").css("margin-left", "30%");
                } else {
                    alert("文件类型不是图片类型 请从新上传")
                }
            }
        })

    }

    $("#avarimgs1").click(function () {
        $("#imgclick").click();
    })


</script>
</html>