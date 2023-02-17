<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="robots" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Innap : Hotel Admin Template">

    <!-- PAGE TITLE HERE -->
    <title>学院登录</title>

    <link href="../../static/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>

</head>

<body class="vh-100">
<div class="authincation h-100">
    <div class="container h-100">
        <div class="row justify-content-center h-100 align-items-center">
            <div class="col-md-6">
                <div class="authincation-content">
                    <div class="row no-gutters">
                        <div class="col-xl-12">
                            <div class="auth-form">
                                <div class="text-center mb-3">
                                    <%--										<a href="index.html"><img src="https://www.17sucai.com/preview/1097306/2021-07-20/xhtml/images/logo-full.png" alt=""></a>--%>
                                </div>
                                <h4 class="text-center mb-4">登录账号</h4>
                                <form action="/postUser" method="post">
                                    <div class="mb-3">
                                        <label class="mb-1"><strong>账号：</strong></label>
                                        <input type="text" class="form-control" name="uaccounts" id="uaccounts">
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-1"><strong>密码：</strong></label>
                                        <input type="password" class="form-control" id="upassword" name="upassword">
                                    </div>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary btn-block" id="sumbit">登录</button>
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

<%--<script type="text/javascript">--%>
<%--    $(function(){--%>

<%--      $("#sumbit").click(function(){--%>
<%--          var uaccounts=$("#uaccounts").val();--%>
<%--          var password = $("#upassword").val();--%>
<%--            $.ajax({--%>
<%--                type:"post",--%>
<%--                url:"/postUser",--%>
<%--                data:{--%>
<%--                  "uaccounts":uaccounts,--%>
<%--                    "upassword":password--%>
<%--                },--%>
<%--                success: function(data){--%>
<%--                    console.log(data)--%>
<%--                }--%>
<%--            })--%>
<%--        })--%>
<%--    })--%>

<%--</script>--%>
<!--**********************************
    Scripts
***********************************-->
<!-- Required vendors -->
<script src="../../static/js/global.min.js"></script>
<script src="../../static/js/custom.min.js"></script>
<script src="../../static/js/deznav-init.js"></script>
<script src="../../static/js/styleSwitcher.js"></script>
</body>
</html>