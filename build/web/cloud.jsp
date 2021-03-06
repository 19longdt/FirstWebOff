<%-- 
    Document   : cloud
    Created on : 15-Mar-2021, 15:29:39
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            html, body {
                
            }

            .drop {
                background: white;
                width: 6px;
                height: 6px;
                border-radius: 12px;
                right: 210px;
                animation: fall 3s ease-in 0s infinite;
                animation-fill-mode: both;
                position: absolute;
            }
            .drop:nth-child(even) {
                top: 10px;
                left: -12px;
                width: 8px;
                height: 8px;
                border-radius: 40px;
                animation-delay: 1s !important;
            }
            .drop:nth-child(3n - 1) {
                top: 0px;
                left: 20px;
                left-animation-delay: 2s !important;
            }
            .drop:nth-child(3n + 1) {
                left: 0px;
                top: -10px;
                animation-delay: 3s !important;
            }
            .drop:nth-child(4n - 1) {
                left: 110px;
                top: -30px;
                animation-delay: 2.5s !important;
            }
            .drop:nth-child(4n + 1) {
                left: 45px;
                top: 15px;
                animation-delay: 1.5s !important;
            }
            .drop:nth-child(5n - 1) {
                left: 95px;
                top: -40px;
            }
            .drop:nth-child(-5n + 1) {
                left: 65px;
                top: 10px;
                animation-delay: 2.25s !important;
            }
            .drop:nth-child(6n + 1) {
                left: 37px;
                top: -65px;
                animation-delay: 1.25s !important;
            }

            #stuff {
                position: absolute;
                margin: auto;
                top: 100px;
                left: 0;
                right: 0;
                bottom: 0;
                width: 200px;
                background: #ACBDC3;
                overflow: hidden;
            }

            .cloud {
                height: 120px;
                width: 120px;
                border-radius: 150px 150px 0px 0px;
                position: relative;
            }
            .cloud, .cloud:before, .cloud:after {
                box-shadow: inset 20px 10px 40px -32px rgba(0, 0, 0, 0.75);
                background: #fff;
            }
            .cloud:before, .cloud:after {
                content: " ";
                display: block;
                position: absolute;
                bottom: 0px;
            }
            .cloud:before {
                height: 70px;
                width: 70px;
                border-radius: 150px 150px 0px 150px;
                left: -40px;
            }
            .cloud:after {
                height: 85px;
                width: 85px;
                border-radius: 150px 150px 150px 0px;
                right: -55px;
                z-index: -1;
            }

            @keyframes fall {
                0% {
                    margin-top: 90px;
                    opacity: 1;
                }
                60% {
                    opacity: 1;
                    margin-left: 45px;
                }
                100% {
                    margin-top: 400px;
                    opacity: 0;
                }
            }
            @keyframes float {
                0% {
                    left: 0.5%;
                }
                50% {
                    left: -0.5%;
                }
                100% {
                    left: 0.5%;
                }
            }

        </style>
    </head>
    <body>
        <div id='stuff'>
            <div class='cloud'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
            <div class='drop'></div>
        </div>

    </body>
</html>
