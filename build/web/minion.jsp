<%-- 
    Document   : minion
    Created on : 12-Mar-2021, 16:49:39
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /**
 * Minion Pure CSS 
 *
 * @author Ezequiel Calvo <ezecafre@gmail.com> 
 *                        Follow me @EzequielCalvo
 *                        Hashtag #CSSDrawing #Minion
 */
            body {
                /*overflow: hidden;*/
            }

            .btn {
                position: absolute;
                top: 10px;
                left: 10px;
                border: 0;
                padding: 5px 10px;
                border: 1px solid #c0392b;
                border-radius: 2px;
                font-size: 0.95em;
                background: #e74c3c;
                color: #EEE;
                font-weight: 60;
            }

            .btn:hover {
                background: #c0392b;
                border: 1px solid #e74c3c;
            }

            .btn.active {
                background: #2ecc71;
                border: 1px solid #27ae60;
            }

            .contentt {
                margin: 40px;
            }

            .body {
                width: 180px;
                height: 325px;
                margin: 0 auto;
                position:relative;
                z-index: 1;
                border-radius: 85px 85px 0 0;
                box-shadow: inset 0 -10px 10px 3px #cc9e24;
                background: #fcda6d;
                background: -webkit-gradient(linear, right top, left top,color-stop(61%, #fcda6d), color-stop(100%, #cc9e24)); 
                background: -webkit-linear-gradient(right, #fcda6d 67%,#cc9e24 100%);
                background:    -moz-linear-gradient(right, #fcda6d 67%,#cc9e24 100%);
                background:     -ms-linear-gradient(right, #fcda6d 67%,#cc9e24 100%);
                background:      -o-linear-gradient(right, #fcda6d 67%,#cc9e24 100%); 
                background:         linear-gradient(to right, #fcda6d 67%,#cc9e24 100%);
            }

            .hair {
                padding: 0;
            }

            .hair li {
                position: absolute;
                top: -1px;
                left: 50%;
                z-index: 2;
                list-style: none;
                height: 45px;
                width: 5px;
                border: 2px solid #555;
                border-radius: 140%;
                margin: 10px;
            }

            .hair-left li {
                border-left: none;
                border-bottom: none;
            }

            .hair-right li {
                border-right: none;
                border-bottom: none;
            }

            .hair-left li:nth-child(1) {
                margin: 20px 0 0 -60px;
                transform: rotate(-20deg);
            }

            .hair-left li:nth-child(2) {
                height: 30px;
                margin: 45px 0 0 -75px;
                transform: rotate(-50deg);
            }

            .hair-left li:nth-child(3) {
                height: 36px;
                margin: 15px 0 0 -35px;
                transform: rotate(-10deg);
            }

            .hair-left li:nth-child(4) {
                height: 26px;
                margin: 35px 0 0 -13px;
                transform: rotate(-20deg);
            }

            .hair-right li:nth-child(1) {
                margin: 23px 0 0 60px;
                transform: rotate(20deg);
            }

            .hair-right li:nth-child(2) {
                height: 30px;
                margin: 45px 0 0 75px;
                transform: rotate(50deg);
            }

            .hair-right li:nth-child(3) {
                height: 36px;
                margin: 15px 0 0 35px;
                transform: rotate(10deg);
            }

            .hair-right li:nth-child(4) {
                height: 34px;
                margin: 20px 0 0 13px;
                transform: rotate(20deg);
            }

            .band,
            .band-right:before,
            .band-left:before {
                height: 10px;
                width: 17px;
                position: relative;
                display: block;
                border-radius: 3px;
                background: #222;
                box-shadow: 0 1px 5px 0px #222;
            }

            .band-right {
                top: 89px;
                left: 168px;
                transform: rotate(5deg);
            }

            .band-left {
                top: 96px;
                left: -5px;
                transform: rotate(-5deg);
            }

            .band-left:before {
                content: "";
                display: block;
                top: 10px;
                background: #333;
            }

            .band-right:before {
                content: "";
                display: block;
                top: 10px;
                background: #333;
            }

            .glasses {
                width: 180px;
            }

            .glass {
                width: 85px;
                height: 85px;
                float: left;
                margin: 40px 0 0 10px;
                border-radius: 110px;
                background: linear-gradient(#989697, #696371);
                box-shadow: 4px 6px 9px 3px #c48e00;
                box-shadow: inset 0 -2px 2px #5d4b3d ,
                    inset -1px 1px 3px 1px #fff ,
                    1px 5px 7px -1px #c48e00;
            }

            .glass:before {
                content: "";
                display: block;
                width: 65px;
                height: 65px;
                border-radius: 70px;
                position:relative;
                top:  10px;
                left: 10px;
                background: #fcda6d;
                box-shadow: inset 0 2px 4px 1px #5d4b3d ;
            }

            .glass:after {
                width: 63px;
                height:50px;
                content: "";
                display: block;
                border-radius: 70px;
                position: relative;
                top: -73px;
                left: 11px;
                background: #FFF; /* Old browsers */
                background: -webkit-gradient(linear,left bottom,right top,color-stop(0.54, #FFF), color-stop(0.91, #AAA));
                background: -webkit-linear-gradient(left bottom,right top, #FFF 54%,#AAA 91%);
                background:    -moz-linear-gradient(left bottom,right top, #FFF 54%,#AAA 91%);
                background:     -ms-linear-gradient(left bottom,right top, #FFF 54%,#AAA 91%);
                background:      -o-linear-gradient(left bottom,right top, #FFF 54%,#AAA 91%);
                background:         linear-gradient(to left bottom, #FFF 53%,#AAA 91%);
                -webkit-animation: eyes 4s infinite step-start 0s;
                -moz-animation: eyes 4s infinite step-start 0s;
                -ms-animation: eyes 4s infinite step-start 0s;
                -o-animation: eyes 4s infinite step-start 0s;
                animation: eyes 4s infinite step-start 0s;
            }

            .glass:last-child {
                margin-left: -9px;
            }

            .iris {
                width: 23px;
                height: 23px;
                position: relative;
                top: -30px;
                z-index: 10;
                border: 1px solid #222;
                border-radius: 50%;
                background: #000;
                box-shadow: inset -2px -2px 5px 2px #222,
                    inset 2px 2px 1px 2px #7e4d49;
                background: -webkit-radial-gradient(center, ellipse cover, #000 25%, #6f4a2d 34%, #c79067 44%, #6f4a2d 50%);
                background: -moz-radial-gradient(center, ellipse cover, #000 25%, #6f4a2d 34%, #c79067 44%, #6f4a2d 50%);
                -webkit-animation: iris 4s infinite step-start 0s;
                -moz-animation: iris 4s infinite step-start 0s;
                -ms-animation: iris 4s infinite step-start 0s;
                -o-animation: iris 4s infinite step-start 0s;
                animation: iris 4s infinite step-start 0s;
            }

            .iris-left {
                left: 38px;
            }

            .iris-right {
                left: 23px;
            }

            .iris:before {
                width: 5px;
                height: 5px;
                content: "";
                display: block;
                position: relative;
                z-index: 11;
                top: 4px;
                left: 4px;
                border-radius: 50%;
                box-shadow: 0 0 5px 2px #FFF;
                background: #FFF;
            }

            .mouth {
                width: 70px;
                height: 30px;
                margin: 0 auto;
                position: relative;
                z-index: 2;
                top: -155px;
                border-bottom-left-radius: 50px;
                border-bottom-right-radius: 50px;
                border: 0;
                overflow: hidden;
                background: #222;
                background: -webkit-gradient(linear, 0 0, 0 100%, from(#222), color-stop(0.79, #bd736a));
                background: -webkit-linear-gradient(#222, #bd736a 99%);
                background:    -moz-linear-gradient(#222, #bd736a 99%);
                background:      -o-linear-gradient(#222, #bd736a 99%);
                background:         linear-gradient(#222, #bd736a 99%);  
            }

            .mouth:after {
                content: "";
                display:block;
                position: relative;
                top: -50px;
                left: -21px;
                width: 120px;
                height: 40px;
                border-radius: 50%;
                background: #FCDA6D;
                box-shadow: inset 0 0 3px 1px #957b43;
                /*-webkit-animation: mouth 7s infinite step-start 1s;
                   -moz-animation: mouth 7s infinite step-start 1s;
                    -ms-animation: mouth 7s infinite step-start 1s;
                     -o-animation: mouth 7s infinite step-start 1s;
                        animation: mouth 7s infinite step-start 1s;*/
            }

            .teeth {
                width: 90px;
                position: relative;
                top: -19px;
                padding: 0 5px;
            }

            .teeth li {
                width: 16px;
                height: 15px;
                list-style: none;
                display: block;
                float: left;
                z-index: 1;
                border-radius: 6px;
                background: #ccccc2;
                box-shadow: inset 0 -1px 1px 1px #FFF,
                    inset -1px 0 1px 0px #F45;
            }

            .teeth li:first-child {
                height: 12px;
            }

            .teeth li:last-child {
                height: 12px;
            }

            .pants {
                width: 180px;
                height: 50px;
                margin: 0 auto;
                position: relative;
                z-index: 2;
                top: -58px;
                border-radius: 2px 2px 25px 25px;
                background: #146696;
                background: -webkit-linear-gradient(left, #146696 67%,#115278 100%);
                border: 2px dotted #1f4362;
                box-shadow: inset 1px -10px 10px 2px #1a364d,
                    0 0 2px 2px #2e5f88;
            }

            .pants:before {
                width: 120px;
                height: 60px;
                content: "";
                display: block;
                position: relative;
                top: -50px;
                left: 40px;
                border: 2px dotted #1f4362;
                border-bottom: 0;
                border-radius: 10px;
                background: #146696;
                background-image: -webkit-gradient(linear, left, color-stop(67%, #146696), color-stop(100%, #115278));
                background-image: -webkit-linear-gradient(left, #146696 67%, #115278 100%);
                background-image:    -moz-linear-gradient(left, #146696 67%, #115278 100%);
                background-image:     -ms-linear-gradient(left, #146696 67%, #115278 100%);
                background-image:      -o-linear-gradient(left, #146696 67%, #115278 100%);
                background-image:         linear-gradient(left, #146696 67%, #115278 100%);
                box-shadow: 0 -3px 2px 2px #2e5f88;
            }

            .belt {
                width: 15px;
                height: 75px;
                background: #146696;
                box-shadow: inset 1px 10px 10px 2px #1a364d;
                position: relative;
            }

            .belt:after {
                content: "";
                display: block;
                width: 10px;
                height: 10px;
                border-radius: 50%;
                background: #223333;
                position: absolute;
                bottom: 5px;
                left: 2px;
            }

            .belt-left {
                top: -160px;
                left: 18px;
                border: 2px dotted #1f4362;
                border-top-left-radius: 25px;
                -webkit-transform: rotate(-55deg);
                -moz-transform: rotate(-55deg);
                -ms-transform: rotate(-55deg);
                -o-transform: rotate(-55deg);
                transform: rotate(-55deg);
            }

            .belt-right {
                height: 60px;
                top: -230px;
                left: 158px;
                border: 2px dotted #1F4362;
                border-top-right-radius: 25px;
                -webkit-transform: rotate(35deg);
                -moz-transform: rotate(35deg);
                -ms-transform: rotate(35deg);
                -o-transform: rotate(35deg);
                transform: rotate(35deg);
            }

            .arm {
                width: 20px;
                height: 100px;
                margin: 0 auto;
                position: relative;
                z-index: 2;
                border-radius: 10px;
                background: #FFD449;
            }

            .arm-right {
                z-index: 1;
                height: 115px;
                top: -410px;
                left: 95px;
                box-shadow: inset 0 10px 10px 3px #D5970E;
                -webkit-transform: rotate(-10deg);
                -moz-transform: rotate(-10deg);
                -ms-transform: rotate(-10deg);
                -o-transform: rotate(-10deg);
                transform: rotate(-10deg);
            }

            .arm-left {
                top: -290px;
                left: -104px;
                -webkit-transform: rotate(10deg);
                -moz-transform: rotate(10deg);
                -ms-transform: rotate(10deg);
                -o-transform: rotate(10deg);
                transform: rotate(10deg);
            }

            .arm-left:before {
                content: "";
                display: block;
                width: 21px;
                height: 40px;
                position: relative;
                top: -18px;
                border-radius: 50%;
                background: #FFD449;
                -webkit-transform: rotate(10deg);
                -moz-transform: rotate(10deg);
                -ms-transform: rotate(10deg);
                -o-transform: rotate(10deg);
                transform: rotate(10deg);
            }

            .arm-left:after, .arm-right:after {
                content: "";
                display: block;
                width: 22px;
                height: 20px;
                position: relative;
                border-radius: 6px;
                background: #FFD449;
            }

            .arm-left:after {
                z-index: 3;
                top: -14px;
                -webkit-transform: rotate(-15deg);
                -moz-transform: rotate(-15deg);
                -ms-transform: rotate(-15deg);
                -o-transform: rotate(-15deg);
                transform: rotate(-15deg);
            }

            .arm-right:after {
                z-index: 3;
                top: 55px;
                left: -2px;
                box-shadow: inset -3px -6px 5px 1px #D5970E;
                -webkit-transform: rotate(15deg);
                -moz-transform: rotate(15deg);
                -ms-transform: rotate(15deg);
                -o-transform: rotate(15deg);
                transform: rotate(15deg);
            }

            .hand {
                height: 40px;
                width: 35px;
                position: relative;
                z-index: 1;
                top: 35px;
                left: 0;
                border-radius: 30%;
                box-shadow: inset 0 -2px 10px 5px #222;
                background: #333;
                -webkit-transform: rotate(-20deg);
                -moz-transform: rotate(-20deg);
                -ms-transform: rotate(-20deg);
                -o-transform: rotate(-20deg);
                transform: rotate(-20deg);
            }

            .hand:before {
                content: "";
                display: block;
                position: relative;
                z-index: 1;
                top: -5px;
                left:-3px;
                width: 30px;
                height: 9px;
                background: #111;
                border: 5px solid #222;
                border-radius: 50%;
                box-shadow: 0 4px 1px 0 #444;
            }

            .hand:after {
                content: "";
                display: block;
                position: relative;
                z-index: 1;
                top: -100px;
                left: 1px;
                width: 34px;
                height: 30px;
                background: #333;
                border-radius: 50%;
                box-shadow: inset 0 -10px 10px 5px #222;
                -webkit-transform: rotate(5deg);
                -moz-transform: rotate(5deg);
                -ms-transform: rotate(5deg);
                -o-transform: rotate(5deg);
                transform: rotate(5deg);
            }

            .fingers {
                list-style: none;
                position: relative;
                top: 10px;
            }

            .fingers li {
                border-radius: 10px;
                position: relative;
                background: #333;
                box-shadow: inset 0 -10px 10px 5px #222;
            }

            .fingers-right li:nth-child(1) {
                z-index: 2;
                width: 20px;
                height: 35px;
                top: -20px;
                left: -50px;
                border-right: 2px solid #000;
                -webkit-transform: rotate(50deg);
                -moz-transform: rotate(50deg);
                -ms-transform: rotate(50deg);
                -o-transform: rotate(50deg);
                transform: rotate(50deg);
            }

            .fingers-right li:nth-child(2) {
                z-index: 1;
                width: 20px;
                height: 30px;
                top: -50px;
                left: -40px;
                border-right: 2px solid #000;
                -webkit-transform: rotate(40deg);
                -moz-transform: rotate(40deg);
                -ms-transform: rotate(40deg);
                -o-transform: rotate(40deg);
                transform: rotate(40deg);
            }

            .fingers-left li:nth-child(1) {
                z-index: 2;
                width: 25px;
                height: 25px;
                top: -17px;
                left: -43px;
                border-right: 2px solid #000;
                border-radius: 30px;
                -webkit-transform: rotate(10deg);
                -moz-transform: rotate(10deg);
                -ms-transform: rotate(10deg);
                -o-transform: rotate(10deg);
                transform: rotate(10deg);
            }

            .fingers-left li:nth-child(2) {
                z-index: 1;
                width: 20px;
                height: 24px;
                top: -50px;
                left: -18px;
                border-right: 2px solid #000;
                -webkit-transform: rotate(-30deg);
                -moz-transform: rotate(-30deg);
                -ms-transform: rotate(-30deg);
                -o-transform: rotate(-30deg);
                transform: rotate(-30deg);
            }

            .fingers-left li:nth-child(3) {
                z-index: 1;
                width: 23px;
                height: 30px;
                top: -63px;
                left: -33px;
                border-right: 2px solid #000;
                -webkit-transform: rotate(0deg);
                -moz-transform: rotate(0deg);
                -ms-transform: rotate(0deg);
                -o-transform: rotate(0deg);
                transform: rotate(0deg);
            }

            .arm-right .hand {
                top: 105px;
                left: -15px;
                transform: rotate(20deg);
                -webkit-transform: rotate(20deg);
                -moz-transform: rotate(20deg);
                -ms-transform: rotate(20deg);
                -o-transform: rotate(20deg);
                transform: rotate(20deg);
            }

            .arm-left .hand:after {
                height: 30px;
                width: 30px;
                left: 3px;
                top: -110px;
            }

            .legs {
                width: 120px;
                margin: 0 auto;
            }

            .leg {
                z-index: 1;
                width: 40px;
                height: 35px;
                display: inline-block;
                background: #146696;
                border-radius: 30%;
                position: relative;
                box-shadow: inset 1px 10px 10px 2px #222;
                top: -410px;
                left: 20px;
            }

            .shoes {
                z-index: 1;
                background: #222;
                margin: 0 auto;
                position: relative;
                box-shadow: inset -2px 1px 10px 1px #666;
            }

            .shoes-left {
                z-index: 0;
                width: 40px;
                height: 30px;
                top: -425px;
                left: -20px;
                border-radius: 20px;
                box-shadow: inset 0 -3px 3px 1px #999;
            }

            .shoes-right {
                z-index: 0;
                width: 50px;
                height: 20px;
                top: -452px;
                left: 30px;
                border-radius: 20px;
                border-right: 1px solid #000;
                box-shadow: inset -1px 1px 5px 1px #999;
                -webkit-transform: rotate(10deg);
                -moz-transform: rotate(10deg);
                -ms-transform: rotate(10deg);
                -o-transform: rotate(10deg);
                transform: rotate(10deg);
            }

            .shoes-right:after {
                content: "";
                display: block;
                position: relative;
                width: 50px;
                height: 20px;
                top: -3px;
                border-bottom: 7px solid #111;
                border-radius: 20px;
            }

            .shoes-left:after {
                content: "";
                display: block;
                position: relative;
                width: 40px;
                height: 20px;
                top: 5px;
                border-bottom: 7px solid #222;
                border-radius: 20px;
            }

            /* Superman Styles*/

            .coat {
                width: 200px;
                height: 150px;
                margin: 0 auto;
                background: red;
                z-index: 0;
                position: relative;
                visibility: hidden;
                top: -625px;
                border-radius: 10px;
                box-shadow: inset 1px 2px 20px 4px #B32020,
                    inset 0 -3px 20px 4px #222;
                left: -2px;
            }

            .superman .leg {
                background: #222;
            }

            .superman .coat {
                visibility: visible;
            }

            .superman .mouth {
                background: #fcda6d;
            }

            .superman .mouth:after {
                border-radius: 0;
            }

            .superman .arm,
            .superman .arm-left:after,
            .superman .arm-left:before,
            .superman .arm-right:after {
                background: blue;
                background: -webkit-linear-gradient(left, #222 67%,#115278 100%);
                background: -moz-linear-gradient(left, #222 67%,#115278 100%);
                box-shadow: inset 0 10px 10px 3px #000;
            }

            .super-pants {
                width: 180px;
                height: 130px;
                margin: 0 auto;
                position: relative;
                z-index: 2;
                top: -188px;
                overflow: hidden;
                border-radius: 2px 2px 25px 25px;
                background: blue;
                visibility: hidden;
                background: -webkit-linear-gradient(right, #222 67%,#115278 100%);
                background:    -moz-linear-gradient(right, #222 67%,#115278 100%);
                box-shadow: inset -1px -10px 10px 2px #1a364d,
                    0 0 2px 2px #2e5f88;              
            }

            .symbol {
                width: 100px;
                height: 100px;
                position: relative;
                top: -30px;
                left: 52px;
                z-index: 1;
                overflow: hidden;
                background: red;
                box-shadow: 1px 1px 5px 4px red,
                    inset 0 0 6px 3px #222,
                    inset 1px -10px 12px 1px #444,
                    inset 4px 0 4px 1px #FFF;
                -webkit-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -o-transform: rotate(45deg);
                transform: rotate(45deg);
            }

            .s-first-part {
                width: 100px;
                height: 20px;
                z-index: 2;
                background: yellow;
                position: relative;
                border: 1px solid #000;
                border-radius: 20px 0 0 100px;
                top: 26px;
                left: 14px;
                box-shadow: inset -1px 0 10px 4px #111,
                    1px 1px 14px 1px #000;              
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                transform: rotate(-45deg);
            }

            .s-second-part {
                width: 60px;
                height: 20px;
                z-index: 2;
                background: yellow;
                position: relative;
                border: 1px solid #000;
                border-radius: 5px 20px 100px 10px;
                top: 55px;
                left: 35px;
                box-shadow: inset 3px 0 10px 4px #111,
                    1px 1px 14px 1px #000;
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                transform: rotate(-45deg);
            }

            .superman .pants {
                visibility: hidden;
            }

            .superman .super-pants {
                visibility: visible;
            }


            /* Eyes Animation */

            @-webkit-keyframes eyes {
                0%, 100% {
                    background:#fcda6d;
                    border: none;
                    box-shadow: 0 0 0 #fff;
                }
                15%, 95% {
                    background:#fff;
                    box-shadow: inset 0 0 3px 1px #CCC;
                }
            }
            @-moz-keyframes eyes {
                0%, 100% {
                    background:#fcda6d;
                    border: none;

                    box-shadow: 0 0 0 #fff;
                }
                15%, 95% {
                    background:#fff;
                    box-shadow: inset 0 0 3px 1px #CCC;
                }
            }
            @-o-keyframes eyes {
                0%, 100% {
                    background:#fcda6d;
                    border: none;
                    box-shadow: 0 0 0 #fff;
                }
                15%, 95% {
                    background:#fff;
                    box-shadow: inset 0 0 3px 1px #CCC;
                }
            }
            @-ms-keyframes eyes {
                0%, 100% {
                    background:#fcda6d;
                    border: none;
                    box-shadow: 0 0 0 #fff;
                }
                15%, 95% {
                    background:#fff;
                    box-shadow: inset 0 0 3px 1px #CCC;
                }
            }
            @keyframes eyes {
                0%, 100% {
                    background:#fcda6d;
                    border: none;
                    border-bottom: 1ox solid #222;
                    box-shadow: 0 0 0 #fff;
                }
                15%, 95% {
                    background:#fff;
                    box-shadow: inset 0 0 3px 1px #CCC;
                }
            }

            /* Iris Animation */

            @-webkit-keyframes iris {
                0%, 100% {
                    opacity: 0;
                }
                15%, 95% {
                    opacity: 1;
                }
            }
            @-moz-keyframes iris {
                0%, 100% {
                    opacity: 0;
                }
                15%, 95% {
                    opacity: 1;
                }
            }
            @-o-keyframes iris {
                0%, 100% {
                    opacity: 0;
                }
                15%, 95% {
                    opacity: 1;
                }
            }
            @-ms-keyframes iris {
                0%, 100% {
                    opacity: 0;
                }
                15%, 95% {
                    opacity: 1;
                }
            }
            @keyframes iris {
                0%, 100% {
                    opacity: 0;
                }
                15%, 95% {
                    opacity: 1;
                }
            }

            /* Mouth Animation */

            @-webkit-keyframes mouth {
                0%, 100% {
                    top: -20px;
                }
                15%, 95% {
                    top: -7px;
                }
            }
            @-moz-keyframes mouth {
                0%, 100% {
                    top: -20px;
                }
                15%, 95% {
                    top: -7px;
                }
            }
            @-o-keyframes mouth {
                0%, 100% {
                    top: -20px;
                }
                15%, 95% {
                    top: -7px;
                }
            }
            @-ms-keyframes mouth {
                0%, 100% {
                    top: -20px;
                }
                15%, 95% {
                    top: -7px;
                }
            }
            @keyframes mouth {
                0%, 100% {
                    top: 0px;
                }
                15%, 95% {
                    top: -35px;
                }
            }

        </style>
    </head>
    <body>
        <!-- 
  Pure CSS Minion, just a little bit of js to toggle the Superman class.
  
  @author Ezequiel Calvo <ezecafre@gmail.com> 
                         Follow me @EzequielCalvo
                         Hashtag #CSSDrawing #Minion

  Nice to have: 
     - Wave on the coat.
     - Animation when changing the clothes.
        -->
        <section class="contentt" id="target">
            <ul class="hair hair-left">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <ul class="hair hair-right">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <div class="body">
                <div class="glasses">
                    <span class="band band-left"></span>
                    <span class="band band-right"></span>
                    <div class="glass">
                        <div class="iris iris-left">
                            <div class="shine"></div>
                        </div>  
                    </div>
                    <div class="glass">
                        <div class="iris iris-right">
                            <div class="shine"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mouth">
                <ul class="teeth">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <div class="pants">
                <div class="belt belt-left"></div>
                <div class="belt belt-right"></div>
            </div>
            <div class="super-pants">
                <div class="symbol">
                    <div class="s-first-part"></div>
                    <div class="s-second-part"></div>
                </div>
            </div>
            <div class="arm arm-left">
                <div class="hand">
                    <ul class="fingers fingers-left">
                        <li class="finger"></li>
                        <li class="finger"></li>
                        <li class="finger"></li>
                    </ul>
                </div>
            </div>
            <div class="arm arm-right">
                <div class="hand">
                    <ul class="fingers fingers-right">
                        <li class="finger"></li>
                        <li class="finger"></li>
                    </ul>
                </div>
            </div>
            <div class="legs">
                <div class="leg"></div>
                <div class="leg"></div>
            </div>
            <div class="shoes shoes-left"></div>
            <div class="shoes shoes-right"></div>
            <div class="coat"></div>
        </section>
        <button class="btn">Superman Mode!</button>
        <script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    </body>
    <script>
        /**
         * Js event handler to change between Clark and Superman modes.
         *
         * @author Ezequiel Calvo <ezecafre@gmail.com> 
         *                        Follow me @EzequielCalvo
         *                        Hashtag #CSSDrawing #Minion
         */

        $('.btn').on('click', function () {
            $('#target').toggleClass('superman');
            $(this).toggleClass('active');
        });

    </script>
</html>
