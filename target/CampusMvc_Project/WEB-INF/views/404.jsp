<%--
  Created by IntelliJ IDEA.
  User: 33433
  Date: 2023/2/17
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>404</title>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Montserrat:400,600,700');
        @import url('https://fonts.googleapis.com/css?family=Catamaran:400,800');

        .error-container {
            text-align: center;
            font-size: 180px;
            font-family: 'Catamaran', sans-serif;
            font-weight: 800;
            margin: 20px 15px;
        }

        .error-container > span {
            display: inline-block;
            line-height: 0.7;
            position: relative;
            color: #FFB485;
        }

        .error-container > span {
            display: inline-block;
            position: relative;
            vertical-align: middle;
        }

        .error-container > span:nth-of-type(1) {
            color: #D1F2A5;
            animation: colordancing 4s infinite;
        }

        .error-container > span:nth-of-type(3) {
            color: #F56991;
            animation: colordancing2 4s infinite;
        }

        .error-container > span:nth-of-type(2) {
            width: 120px;
            height: 120px;
            border-radius: 999px;
        }

        .error-container > span:nth-of-type(2):before,
        .error-container > span:nth-of-type(2):after {
            border-radius: 0%;
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: inherit;
            height: inherit;
            border-radius: 999px;
            box-shadow: inset 30px 0 0 rgba(209, 242, 165, 0.4),
            inset 0 30px 0 rgba(239, 250, 180, 0.4),
            inset -30px 0 0 rgba(255, 196, 140, 0.4),
            inset 0 -30px 0 rgba(245, 105, 145, 0.4);
            animation: shadowsdancing 4s infinite;
        }

        .error-container > span:nth-of-type(2):before {
            -webkit-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            transform: rotate(45deg);
        }

        .screen-reader-text {
            position: absolute;
            top: -9999em;
            left: -9999em;
        }

        @keyframes shadowsdancing {
            0% {
                box-shadow: inset 30px 0 0 rgba(209, 242, 165, 0.4),
                inset 0 30px 0 rgba(239, 250, 180, 0.4),
                inset -30px 0 0 rgba(255, 196, 140, 0.4),
                inset 0 -30px 0 rgba(245, 105, 145, 0.4);
            }
            25% {
                box-shadow: inset 30px 0 0 rgba(245, 105, 145, 0.4),
                inset 0 30px 0 rgba(209, 242, 165, 0.4),
                inset -30px 0 0 rgba(239, 250, 180, 0.4),
                inset 0 -30px 0 rgba(255, 196, 140, 0.4);
            }
            50% {
                box-shadow: inset 30px 0 0 rgba(255, 196, 140, 0.4),
                inset 0 30px 0 rgba(245, 105, 145, 0.4),
                inset -30px 0 0 rgba(209, 242, 165, 0.4),
                inset 0 -30px 0 rgba(239, 250, 180, 0.4);
            }
            75% {
                box-shadow: inset 30px 0 0 rgba(239, 250, 180, 0.4),
                inset 0 30px 0 rgba(255, 196, 140, 0.4),
                inset -30px 0 0 rgba(245, 105, 145, 0.4),
                inset 0 -30px 0 rgba(209, 242, 165, 0.4);
            }
            100% {
                box-shadow: inset 30px 0 0 rgba(209, 242, 165, 0.4),
                inset 0 30px 0 rgba(239, 250, 180, 0.4),
                inset -30px 0 0 rgba(255, 196, 140, 0.4),
                inset 0 -30px 0 rgba(245, 105, 145, 0.4);
            }
        }

        @keyframes colordancing {
            0% {
                color: #D1F2A5;
            }
            25% {
                color: #F56991;
            }
            50% {
                color: #FFC48C;
            }
            75% {
                color: #EFFAB4;
            }
            100% {
                color: #D1F2A5;
            }
        }

        @keyframes colordancing2 {
            0% {
                color: #FFC48C;
            }
            25% {
                color: #EFFAB4;
            }
            50% {
                color: #D1F2A5;
            }
            75% {
                color: #F56991;
            }
            100% {
                color: #FFC48C;
            }
        }

        /* demo stuff */
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            background-color: #416475;
            margin-bottom: 50px;
        }

        html, button, input, select, textarea {
            font-family: 'Montserrat', Helvetica, sans-serif;
            color: #92a4ad;
        }

        h1 {
            text-align: center;
            margin: 30px 15px;
        }

        .zoom-area {
            max-width: 490px;
            margin: 30px auto 30px;
            font-size: 19px;
            text-align: center;
        }

        .link-container {
            text-align: center;
        }

        a.more-link {
            text-transform: uppercase;
            font-size: 13px;
            background-color: #92a4ad;
            padding: 10px 15px;
            border-radius: 0;
            color: #416475;
            display: inline-block;
            margin-right: 5px;
            margin-bottom: 5px;
            line-height: 1.5;
            text-decoration: none;
            margin-top: 50px;
            letter-spacing: 1px;
        }


    </style>


</head>
<body>
<h1>404 您无法访问该页面</h1>
<p class="zoom-area"><b>请正常</b> 进行页面跳转 </p>
<section class="error-container">
    <span>4</span>
    <span><span class="screen-reader-text">0</span></span>
    <span>4</span>
</section>
<div class="link-container">
    <a target="_blank" href="/pagelogin_Page" class="more-link">从新登录</a>
</div>
</body>
<script type="text/javascript">
    TweenMax.to('h1', 1, {
        alpha: 1,
        y: 20,
        yoyo: true,
        ease: Power3.easeInOut
    });

    TweenMax.staggerTo('#water path', 2, {
        x: "+=10",
        y: "+=5",
        repeat: -1,
        yoyo: true,
        ease: Power3.easeInOut
    }, 1);

    TweenMax.to('#bottle', 3, {
        x: "+=30",
        y: "+=5",
        rotation: "+=7",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    }, 2);

    TweenMax.staggerTo('#numbers path', 4, {
        rotation: -30,
        skewY: '10deg',
        x: "+=10",
        y: "+=5",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    }, '-=5');

    TweenMax.staggerTo('#bubbles circle', 4, {
        x: "+=1",
        y: "+=80",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    }, '-=5');

    TweenMax.staggerTo('#bubbles2 circle', 3, {
        x: "+=10",
        y: "+=40",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    }, '-=5');

    TweenMax.to('#tent5', 4, {
        morphSVG: "M450.156,820.511l0.395,0.462c34.244,40.2,30.831,65.406,18.13,86.909 c-0.001,0.002-0.003,0.005-0.004,0.007h84.433c0.009-0.056,0.019-0.106,0.028-0.162c1.949-11.366,3.12-25.264,1.164-36.695 c-2.091-14.146-8.913-35.893-26.464-64.532c-14.815-22.431-21.191-29.198-66.652-72.601c-61-57.914-54.765-51.116-61.914-61.358 c-16.548-25.645-15.705-60.353,4.333-87.092c15.819-21.144,34.798-28.843,56.219-33.275c8.384-1.736,14.551-9.302,14.253-18.149 c-0.333-9.89-8.622-17.638-18.513-17.304c-33.573,1.164-62.735,12.935-86.354,36.629c-23.05,23.077-36.875,54.064-36.968,91.268 c0.14,29.981,10.858,60.685,34.242,86.519C392.059,759.365,426.772,794.55,450.156,820.511z",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    });

    TweenMax.to('#tent4', 3, {
        morphSVG: "M678.762,908c-7.375-7-10.719-9.452-10.704-18.699c0.039-17.91-1.99-31.691-5.165-47.461 c-2.837-14.484-8.394-29.914-11.583-39.278c-2.635-7.736-5.304-15.567-7.993-23.46c-5.376-15.775-10.838-31.801-16.299-47.826 c-25.11-73.119-24.338-68.769-27.206-79.148c-3.907-14.896-4.926-30.899-3.19-47.083c3.722-36.142,5.271-50.405,20.125-84.377 c6.7-16.029,8.475-17.166,10.567-26.349c2.475-10.863-11.223-15.921-19.68-11.264l-0.496,0.271 c-28.2,15.537-36.074,47.484-40.917,61.554c-5.392,15.665-10.905,34.927-15.036,54.552c-4.177,19.57-6.094,41.165-4.659,62.923 c1.43,22.687,3.889,41.979,15.028,86.276c4.238,16.854,15.19,48.619,18.667,65.369c1.736,8.366,5.298,22.469,7,30.667 c7.291,35.14,13.001,42.575-8.396,55.833c-6.003,3.72-51.41-2.645-58.072,7.5H678.762z",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    });

    TweenMax.to('#tent1', 2, {
        morphSVG: "M405.637,642.917c0,0,2.25,1.084,4.5,2.583c38.333,21.834,61,53.5,60.75,80.167 c-0.228,2.635-0.039,5.346-2.25,24.833c-2.681,23.632-0.761,7.514-7.75,64.25c-0.708,5.752-1.671,13.099-2.25,18.75 c-1.01,9.87-5.218,31.077-7.968,45.077c-0.886,4.509-4.407,23.298-22.538,29.423h94.539c-0.658-0.31-2.571-1.919-3.22-2.25 c-1.964-1.018-1.257-5.26-1.562-7.375c-0.5-3.459,3.336-64.208,3.333-63.208c0.025-11.676,1.039-25.425,1.064-37.286 c0.264-53.723,1.586-59.657-1.473-75.706c-2.789-14.937-8.465-29.403-15.792-42.254c-11.888-21.014-29.788-40.621-53.315-55.898 c-14.672-9.366-29.065-15.318-44.653-19.242c-10.883-2.706-20.402,2.722-21.619,12.828 C384.138,628.345,395.996,637.312,405.637,642.917z",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    });

    TweenMax.to('#tent2', 5, {
        morphSVG: "M698.706,908h72.34c-1.096-0.779-2.206-1.641-3.331-2.599 c-3.384-2.985-6.706-6.95-9.616-11.765c-12.827-22.479-4.942-43.119-0.125-64.463c2.116-9.53,5.021-21.135,6.943-28.909 c8.716-34.801,11.304-55.468,14.971-90.264c1.952-18.525,4.916-45.252,1-52.168c-1.544-2.727-6.5-6.917-6.5-6.917 c-7.43-5.265-16.876-1.355-18.833,1.751c-4.542,7.208-3.5,9.083-5.333,19.5l-1.4,8.69c0,0-0.719,4.456-0.766,5.06 c-0.249,3.212-10.683,41.219-13.667,52.083c-1.867,6.797-3.533,10.019-15.75,47.5c-17.994,55.205-25.143,68.466-24.142,95.311 C694.838,890.285,696.331,899.419,698.706,908z",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    });

    TweenMax.to('#tent3', 3, {
        morphSVG: "M666.075,731.812c3.99,6.251,7.875,9.812,10,11.438c11.772,9.003,14.993,8.5,22.312,10.062 c12.938,1.625,18.401-0.703,17.167-7.646c-1.333-7.5-8.333-9.833-11.833-13c0,0-6.709-5.144-7.333-6 c-13.007-17.865-13.626-40.143-5.993-63.319c8.052-23.494,26.03-37.068,44.531-35.814c27.905,1.515,47.311,34.713,41.909,67.399 c-3.46,21.342-7.755,22.059-60.977,87.356c-14.96,18.373-20.292,25.379-29.22,40.961c-0.925,2.238-6.75,12.805-7.875,15 c-6.708,13.083-20.481,38.413-13.708,62.667c0.462,1.655,1.419,5.385,1.917,6.916l79.738,0.056 c-1.284-2.668-2.859-5.166-4.737-7.41l-0.39-0.465c-15.193-18.172-19.202-32.954-4.37-54.402 c35.395-51.118,62.788-80.826,73.049-105.114c9.218-22.019,12.586-48.238,8.223-74.45c-8.502-50.861-43.94-86.775-83.541-85.985 c-47.86,0.497-85.77,54.147-79.259,116.324C657.22,710.87,660.735,723.448,666.075,731.812z",
        repeat: -1,
        yoyo: true,
        ease: Power1.easeInOut
    });


</script>
</html>
