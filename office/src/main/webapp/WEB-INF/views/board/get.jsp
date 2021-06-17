<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="title" content="Ask online Form">
<meta name="description" content="The Ask is a bootstrap design help desk, support forum website template coded and designed with bootstrap Design, Bootstrap, HTML5 and CSS. Ask ideal for wiki sites, knowledge base sites, support forum sites">
<meta name="keywords" content="HTML, CSS, JavaScript,Bootstrap,js,Forum,webstagram ,webdesign ,website ,web ,webdesigner ,webdevelopment">
<meta name="robots" content="index, nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="English">
<link href="${root}/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${root}/resources/css/style.css" rel="stylesheet" type="text/css">
<!-- <link href="css/animate.css" rel="stylesheet" type="text/css"> -->
<link href="${root}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${root}/resources/css/responsive.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${root}/resources/js/jquery-3.1.1.min.js"></script>
<script src="${root}/resources/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway:200,100,400" rel="stylesheet" type="text/css" />
<style>
#txtEditor {
  width: 800px;
  height: 300px;
}

.animation-container {
   background: #e2d4c2;
   height: 454px;
   margin: 0 auto;
   overflow: hidden;
   position: relative;
   width: 806px;
}
 span {
   display: block;
}
 .coffee-bag {
   height: 170px;
   left: 50%;
   position: absolute;
   top: 50%;
   width: 72px;
   -webkit-transform: translate(-50%, -50%) rotate(0);
   -webkit-transform-orign: top right;
   -webkit-animation: coffee-bag 2.5s 1 2s forwards;
}
 .mast {
   background: #73271f;
   height: 12px;
   position: absolute;
   width: 72px;
   z-index: 2;
   -webkit-transform: translate(806px, 0);
   -webkit-animation: coffee-bag-mast 1s 1 0.5s forwards;
}
 .bag-top {
   border-radius: 8px 8px 0 0;
   background: #8e4542;
   height: 38px;
   position: absolute;
   width: 72px;
   z-index: 1;
   -webkit-transform: translate(-806px, 0);
   -webkit-animation: coffee-bag-top 1s 1 forwards;
}
 .bag-body {
   border-radius: 0 0 8px 8px;
   background: #73271f;
   height: 125px;
   width: 72px;
   z-index: 1;
   -webkit-transform: translate(-806px, 38px);
   -webkit-animation: coffee-bag-body 1s 1 forwards;
}
 .logo {
   border-radius: 50%;
   background: #af8757;
   height: 40px;
   position: absolute;
   width: 40px;
   z-index: 2;
   -webkit-transform: translate(15px, -75px) scale(0.25);
   -webkit-animation: coffee-logo 1s 1 forwards;
}
 .logo .bean {
   border-radius: 20px;
   background: #4b2603;
   height: 8px;
   position: absolute;
   width: 20px;
   -webkit-transform: rotate(45deg) scale(0.25);
   -webkit-animation: bean-logo 1s 1 0.5s forwards;
}
 .logo .bean.bean-one {
   left: 3px;
   top: 16px;
}
 .logo .bean.bean-two {
   left: 16px;
   top: 14px;
}
 .info {
   background: #d4a575;
   height: 10px;
   position: absolute;
   width: 54px;
   z-index: 2;
}
 .info.info-one {
   -webkit-transform: translate(-806px, -25px);
   -webkit-animation: info-one 1s 1 0.25s forwards;
}
 .info.info-two {
   -webkit-transform: translate(-806px, -10px);
   -webkit-animation: info-two 1s 1 0.5s forwards;
}
 .info.info-three {
   -webkit-transform: translate(-806px, 5px);
   -webkit-animation: info-three 1s 1 0.75s forwards;
}
 .bag-bottom {
   border-radius: 0 0 8px 8px;
   background: #4a0b10;
   bottom: 0;
   height: 12px;
   left: -806px;
   position: absolute;
   width: 72px;
   z-index: 2;
   -webkit-animation: coffee-bag-bottom 0.75s 1 forwards;
}
 .grounds-container {
   opacity: 0;
   position: absolute;
   -webkit-animation: grounds 1.25s 1 forwards 2.75s;
}
 .grounds {
   background: #4b0b09;
   height: 2px;
   width: 2px;
   z-index: 1;
   position: absolute;
}
 .grounds:before, .grounds:after {
   background: #4b0b09;
   content: '';
   display: block;
   height: 2px;
   width: 2px;
   position: absolute;
}
 .grounds:before {
   top: 5px;
   left: 5px;
}
 .grounds:after {
   bottom: 5px;
   right: 5px;
}
 .grounds-one {
   left: 10px;
   top: 10px;
}
 .grounds-two {
   left: 10px;
   top: 20px;
}
 .grounds-three {
   left: 10px;
   top: 30px;
}
 .grounds-four {
   left: 10px;
   top: 40px;
}
 .filter {
   background: #d1a978;
   border-radius: 0 0 10px 10px;
   height: 90px;
   position: relative;
   width: 100px;
   -webkit-transform: translate(400px, 550px);
   -webkit-animation: filter 2.5s 1 2s forwards;
}
 .filter:after, .filter:before {
   border-radius: 50%;
   content: '';
   display: block;
   left: 50%;
   position: absolute;
}
 .filter:before {
   background: #d1a978;
   height: 35px;
   margin-left: -60px;
   top: -10px;
   width: 120px;
   z-index: 1;
}
 .filter:after {
   background: #b18957;
   height: 20px;
   margin-left: -50px;
   top: -2px;
   width: 100px;
   z-index: 2;
}
 .roasting-top {
   background: #32262c;
   border-radius: 4px;
   height: 16px;
   position: relative;
   width: 125px;
   z-index: 2;
   -webkit-transform: translate(387px, -150px);
   -webkit-animation: roasting-top 2s 1 3s forwards;
}
 .roasting-top:before {
   background: #32262c;
   border-radius: 4px;
   content: '';
   display: block;
   height: 18px;
   position: absolute;
   top: -12px;
   width: 125px;
}
 .roasting-body {
   background: #1d1615;
   border-radius: 0 0 10px 10px;
   height: 90px;
   position: relative;
   width: 100px;
   -webkit-transform: translate(400px, 550px);
   -webkit-animation: roasting-body 2s 1 3s forwards;
}
 .roasting-body:before, .roasting-body:after {
   content: '';
   display: block;
   position: absolute;
}
 .roasting-body:before {
   border-radius: 50%;
   left: 50%;
   background: #1d1615;
   height: 35px;
   margin-left: -60px;
   top: -10px;
   width: 120px;
   z-index: 1;
}
 .roasting-body:after {
   background: #2f2827;
   border-radius: 0 0 10px 10px;
   bottom: 0;
   height: 20px;
   width: 100px;
}
 .handle-container {
   position: absolute;
   height: 48px;
   right: -25px;
   top: 23px;
   width: 26px;
}
 .handle-one {
   background: #1d1615;
   height: 17px;
   position: absolute;
   width: 26px;
   z-index: 1;
}
 .handle-two {
   background: #2f2827;
   height: 48px;
   position: absolute;
   right: 0;
   width: 8px;
   z-index: 2;
}
 .screen {
   background: #1d1615;
   border-radius: 4px;
   height: 12px;
   width: 164px;
   -webkit-transform: translate(-806px, -66px);
   -webkit-animation: screen 1.5s 1 4.25s forwards;
}
 .coffee-pot-top {
   background: #1c1616;
   border-radius: 6px;
   height: 16px;
   position: relative;
   width: 92px;
   z-index: 2;
   -webkit-transform: translate(806px, -303px);
   -webkit-animation: coffee-pot-top 1.5s 1 5s forwards;
}
 .coffee-pot-glass-top {
   background: #dfe3e6;
   border: 3px solid #f3f2f7;
   border-radius: 6px;
   height: 16px;
   width: 92px;
   -webkit-transform: translate(806px, -315px) skewX(25deg);
   -webkit-animation: glass-top 1.5s 1 4.25s forwards;
}
 .coffee-pot-glass-connector {
   background: #1c1616;
   border-radius: 6px;
   height: 7px;
   position: relative;
   width: 96px;
   z-index: 2;
   -webkit-transform: translate(806px, -313px);
   -webkit-animation: pot-connector 1.5s 1 5.25s forwards;
}
 .coffee-pot-glass-base {
   background: #dfe3e6;
   border: 3px solid #f3f2f7;
   border-radius: 6px;
   height: 66px;
   position: relative;
   width: 92px;
   -webkit-transform: translate(806px, -312px);
   -webkit-animation: glass-bottom 1.5s 1 4.5s forwards;
}
 .coffee-pot-gloss {
   background: #eff2f1;
   border-radius: 16px;
   height: 50px;
   left: 6px;
   position: absolute;
   top: 6px;
   width: 16px;
   z-index: 4;
}
 .coffee-pot-handle-container {
   height: 86px;
   position: relative;
   width: 52px;
   -webkit-transform: translate(806px, -411px);
   -webkit-animation: coffee-pot-handle 1.5s 1 5s forwards;
}
 .handle-top {
   background: #1d1614;
   border-radius: 10px 10px 0 10px;
   height: 26px;
   position: absolute;
   right: 0;
   top: 0;
   width: 48px;
}
 .handle-bottom {
   background: transparent;
   border: 4px solid #1d1614;
   bottom: 10px;
   height: 52px;
   position: absolute;
   right: 0;
   width: 20px;
}
 .water-attachment {
   background: #b3b2b4;
   border-radius: 4px;
   height: 12px;
   width: 110px;
   -webkit-transform: translate(-806px, -66px);
   -webkit-animation: water-attachment 1.5s 1 4.5s forwards;
}
 .water-lid {
   background: #130f10;
   border-radius: 4px;
   height: 12px;
   left: 13px;
   position: relative;
   width: 110px;
   -webkit-transform: translate(-806px, -201px);
   -webkit-animation: water-lid 1.5s 1 4.5s forwards;
}
 .water-lid:before {
   background: #2f2828;
   border-radius: 6px 6px 0 0;
   content: '';
   display: block;
   height: 14px;
   left: 12px;
   position: absolute;
   top: -14px;
   width: 85px;
}
 .water-pot {
   background: #eaeceb;
   border-radius: 4px;
   height: 64px;
   left: 13px;
   position: relative;
   width: 110px;
   -webkit-transform: translate(806px, -201px);
   -webkit-animation: water-pot 1.5s 1 4.75s forwards;
}
 .water-pot:before {
   background: #2f2828;
   border-radius: 0 0 6px 6px;
   content: '';
   display: block;
   height: 6px;
   left: 12px;
   position: absolute;
   top: 0;
   width: 85px;
}
 .fill-line {
   background: #1d1614;
   border-radius: 50%;
   height: 3px;
   left: 50%;
   margin-left: -11px;
   position: absolute;
   width: 22px;
   z-index: 3;
}
 .fill-line:after {
   background: #1d1614;
   border-radius: 50%;
   content: '';
   display: block;
   height: 3px;
   left: 50%;
   margin-left: -11px;
   position: absolute;
   top: 14px;
   width: 22px;
}
 .fill-line-first {
   top: 12px;
}
 .fill-line-last {
   top: 40px;
}
 .water {
   background: #0093be;
   border-radius: 0 0 4px 4px;
   bottom: 5px;
   height: 32px;
   left: 50%;
   margin-left: -50px;
   position: absolute;
   width: 100px;
   z-index: 1;
   -webkit-animation: water-fill 4s 1 8.25s forwards;
}
 .water-pot-gloss {
   background: rgba(255, 255, 255, .6);
   border-radius: 18px;
   height: 45px;
   left: 11px;
   position: absolute;
   top: 10px;
   width: 18px;
   z-index: 4;
}
 .warmer-plate {
   background: #191112;
   border-radius: 4px;
   height: 10px;
   width: 88px;
   -webkit-transform: translate(806px, -200px);
   -webkit-animation: warmer-plate 1.5s 1 4.5s forwards;
}
 .warmer {
   background: #9b9187;
   border-radius: 6px;
   height: 130px;
   position: relative;
   width: 94px;
   -webkit-transform: translate(806px, -200px);
   -webkit-animation: big-warmer 1.5s 1 5s forwards;
}
 .warmer-accent {
   background: #d5d4d5;
   border-radius: 24px;
   position: absolute;
   width: 24px;
}
 .accent-one {
   height: 86px;
   left: 10px;
   top: 6px;
}
 .accent-two {
   bottom: 6px;
   height: 24px;
   left: 10px;
}
 .accent-three {
   height: 120px;
   right: 10px;
   top: 6px;
}
 .warmer-base {
   background: #191112;
   border-radius: 4px;
   height: 10px;
   position: relative;
   width: 88px;
   -webkit-transform: translate(806px, -200px);
   -webkit-animation: warmer-base 1.5s 1 5s forwards;
}
 .warmer-base:before {
   background: #191112;
   border-radius: 4px;
   bottom: -16px;
   content: '';
   display: block;
   height: 22px;
   left: 0;
   position: absolute;
   width: 88px;
}
 .coffee-warmer-plate {
   background: #191112;
   border-radius: 4px;
   height: 10px;
   width: 94px;
   -webkit-transform: translate(-806px, -397px);
   -webkit-animation: coffee-warmer-plate 1.5s 1 4s forwards;
}
 .coffee-base-left-end, .coffee-base-right-end {
   background: #1c1512;
   height: 34px;
   position: relative;
   width: 16px;
   z-index: 3;
}
 .coffee-base-left-end {
   border-radius: 10px 0 0 10px;
   -webkit-transform: translate(806px, -397px);
   -webkit-animation: base-left 1.5s 1 5.5s forwards;
}
 .coffee-base-right-end {
   border-radius: 0 10px 10px 0;
   -webkit-transform: translate(806px, -487px);
   -webkit-animation: base-right 1.5s 1 5.5s forwards;
}
 .coffee-maker-base {
   background: #97938d;
   border-radius: 10px;
   height: 34px;
   position: relative;
   width: 344px;
   z-index: 2;
   -webkit-transform: translate(806px, -431px);
   -webkit-animation: coffee-base 1.5s 1 5.5s forwards;
}
 .control-panel {
   background: #d4d4d4;
   border-radius: 15px;
   height: 22px;
   position: relative;
   width: 283px;
   z-index: 3;
   -webkit-transform: translate(806px, -459px);
   -webkit-animation: control-panel 1.5s 1 5.75s forwards;
}
 .control-panel span {
   background: #2a2225;
   border-radius: 4px;
   height: 14px;
   position: relative;
   width: 28px;
}
 .control-panel span:after {
   border-radius: 8px;
   content: '';
   display: block;
   height: 8px;
   margin-top: -4px;
   position: absolute;
   top: 50%;
   width: 8px;
}
 .gauge-one {
   -webkit-transform: translate(15px, 4px);
}
 .gauge-one:after {
   background: #4ac861;
   left: 4px;
}
 .gauge-two {
   -webkit-transform: translate(55px, -10px);
}
 .gauge-two:after {
   background: #f00;
   right: 4px;
   -webkit-animation: ready 0.75s 1 7.5s forwards;
}
 .leg {
   background: #1b1317;
   border-radius: 4px;
   height: 20px;
   position: relative;
   width: 20px;
   z-index: 1;
}
 .leg-one {
   -webkit-transform: translate(806px, -498px);
   -webkit-animation: leg-one 1.5s 1 6s forwards;
}
 .leg-two {
   -webkit-transform: translate(806px, -518px);
   -webkit-animation: leg-two 1.5s 1 6s forwards;
}
 .coffee-drip {
   background: #38271d;
   height: 0;
   left: 450px;
   position: absolute;
   top: 159px;
   width: 5px;
   z-index: 1;
   -webkit-animation: drip 1.25s 1 8.5s forwards;
}
 .drip-cover {
   background: #dfe3e6;
   height: 0;
   left: 450px;
   position: absolute;
   top: 159px;
   width: 5px;
   z-index: 1;
   -webkit-animation: drip 2.5s 1 10s forwards;
}
 .coffee {
   background: #38271d;
   border-radius: 0 0 6px 6px;
   bottom: 202px;
   left: 404px;
   height: 0;
   position: absolute;
   width: 99px;
   z-index: 3;
   -webkit-animation: coffee 3.5s 1 9.25s forwards;
}
 @-webkit-keyframes coffee-bag-mast {
   0% {
     -webkit-transform: translate(806px, 0);
  }
   100% {
     -webkit-transform: translate(0, 0);
  }
}
 @-webkit-keyframes coffee-bag-top {
   0% {
     -webkit-transform: translate(-806px, 0);
  }
   100% {
     -webkit-transform: translate(0, 0);
  }
}
 @-webkit-keyframes info-one {
   0% {
     -webkit-transform: translate(-806px, -25px);
  }
   100% {
     -webkit-transform: translate(8px, -25px);
  }
}
 @-webkit-keyframes info-two {
   0% {
     -webkit-transform: translate(-806px, -10px);
  }
   100% {
     -webkit-transform: translate(8px, -10px);
  }
}
 @-webkit-keyframes info-three {
   0% {
     -webkit-transform: translate(-806px, 5px);
  }
   100% {
     -webkit-transform: translate(8px, 5px);
  }
}
 @-webkit-keyframes coffee-bag-body {
   0% {
     -webkit-transform: translate(806px, 38px);
  }
   100% {
     -webkit-transform: translate(0, 38px);
  }
}
 @-webkit-keyframes coffee-bag-bottom {
   0% {
     left: -806px;
  }
   100% {
     left: 0;
  }
}
 @-webkit-keyframes coffee-logo {
   0% {
     -webkit-transform: translate(15px, -75px) scale(0.25);
  }
   100% {
     -webkit-transform: translate(15px, -75px) scale(1);
  }
}
 @-webkit-keyframes bean-logo {
   0% {
     -webkit-transform: rotate(45deg) scale(0.25);
  }
   100% {
     -webkit-transform: rotate(45deg) scale(1);
  }
}
 @-webkit-keyframes coffee-bag {
   0% {
     -webkit-transform: translate(-50%, -50%) rotate(0);
  }
   50% {
     -webkit-transform: translate(180%, -100%) rotate(-95deg);
  }
   100% {
     -webkit-transform: translate(806px, -100%);
  }
}
 @-webkit-keyframes coffee-bag-exit {
   100% {
     -webkit-transform: translate(860px, -100%);
  }
}
 @-webkit-keyframes filter {
   0% {
     -webkit-transform: translate(400px, 550px);
  }
   50% {
     -webkit-transform: translate(400px, 250px);
  }
   100% {
     -webkit-transform: translate(400px, 40px);
  }
}
 @-webkit-keyframes roasting-body {
   0% {
     -webkit-transform: translate(400px, 550px);
  }
   100% {
     -webkit-transform: translate(400px, -65px);
  }
}
 @-webkit-keyframes roasting-top {
   0% {
     -webkit-transform: translate(387px, -150px);
  }
   100% {
     -webkit-transform: translate(387px, -48px);
  }
}
 @-webkit-keyframes screen {
   0% {
     -webkit-transform: translate(806px, -66px);
  }
   100% {
     -webkit-transform: translate(355px, -66px);
  }
}
 @-webkit-keyframes water-attachment {
   0% {
     -webkit-transform: translate(806px, -190px);
  }
   100% {
     -webkit-transform: translate(340px, -190px);
  }
}
 @-webkit-keyframes water-lid {
   0% {
     -webkit-transform: translate(-806px, -201px);
  }
   100% {
     -webkit-transform: translate(234px, -201px);
  }
}
 @-webkit-keyframes glass-top {
   0% {
     -webkit-transform: translate(806px, -315px) skewX(25deg);
  }
   100% {
     -webkit-transform: translate(397px, -315px) skewX(25deg);
  }
}
 @-webkit-keyframes glass-bottom {
   0% {
     -webkit-transform: translate(806px, -312px);
  }
   100% {
     -webkit-transform: translate(404px, -312px);
  }
}
 @-webkit-keyframes coffee-warmer-plate {
   0% {
     -webkit-transform: translate(-806px, -397px);
  }
   100% {
     -webkit-transform: translate(407px, -397px);
  }
}
 @-webkit-keyframes water-pot {
   0% {
     -webkit-transform: translate(806px, -201px);
  }
   100% {
     -webkit-transform: translate(233px, -201px);
  }
}
 @-webkit-keyframes warmer-plate {
   0% {
     -webkit-transform: translate(806px, -200px);
  }
   100% {
     -webkit-transform: translate(258px, -200px);
  }
}
 @-webkit-keyframes big-warmer {
   0% {
     -webkit-transform: translate(806px, -200px);
  }
   100% {
     -webkit-transform: translate(255px, -200px);
  }
}
 @-webkit-keyframes warmer-base {
   0% {
     -webkit-transform: translate(-806px, -200px);
  }
   100% {
     -webkit-transform: translate(258px, -200px);
  }
}
 @-webkit-keyframes coffee-pot-top {
   0% {
     -webkit-transform: translate(-806px, -503px);
  }
   100% {
     -webkit-transform: translate(408px, -303px);
  }
}
 @-webkit-keyframes coffee-pot-handle {
   0% {
     -webkit-transform: translate(-806px, 703px);
  }
   100% {
     -webkit-transform: translate(479px, -411px);
  }
}
 @-webkit-keyframes pot-connector {
   0% {
     -webkit-transform: translate(806px, 403px);
  }
   100% {
     -webkit-transform: translate(404px, -313px);
  }
}
 @-webkit-keyframes base-left {
   0% {
     -webkit-transform: translate(806px, 703px);
  }
   100% {
     -webkit-transform: translate(218px, -397px);
  }
}
 @-webkit-keyframes base-right {
   0% {
     -webkit-transform: translate(-806px, 703px);
  }
   100% {
     -webkit-transform: translate(546px, -487px);
  }
}
 @-webkit-keyframes coffee-base {
   0% {
     -webkit-transform: translate(806px, 903px);
  }
   100% {
     -webkit-transform: translate(218px, -431px);
  }
}
 @-webkit-keyframes control-panel {
   0% {
     -webkit-transform: translate(-806px, -459px);
  }
   100% {
     -webkit-transform: translate(246px, -459px);
  }
}
 @-webkit-keyframes leg-one {
   0% {
     -webkit-transform: translate(-806px, -800px);
  }
   100% {
     -webkit-transform: translate(248px, -498px);
  }
}
 @-webkit-keyframes leg-two {
   0% {
     -webkit-transform: translate(-806px, -800px);
  }
   100% {
     -webkit-transform: translate(508px, -518px);
  }
}
 @-webkit-keyframes water-fill {
   0% {
     height: 32px;
  }
   100% {
     height: 0;
  }
}
 @-webkit-keyframes drip {
   0% {
     height: 0;
  }
   100% {
     height: 93px;
  }
}
 @-webkit-keyframes coffee {
   0% {
     height: 0;
  }
   100% {
     height: 26px;
  }
}
 @-webkit-keyframes ready {
   0% {
     background: #f00;
  }
   100% {
     background: #4ac861;
  }
}
 @-webkit-keyframes grounds {
   0% {
     opacity: 0;
     left: 450px;
     top: 110px;
  }
   10% {
     opacity: 1;
  }
   100% {
     left: 440px;
     top: 170px;
     opacity: 0;
  }
}
</style>
</head>
<body>
	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="navbar-menu-left-side239">
						<ul>
              <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i>안내</a></li>
              <li><a href="#"><i class="fa fa-headphones" aria-hidden="true"></i>도움</a></li>
              <sec:authorize access="isAnonymous()">
              <li><a href="/customLogin"><i class="fa fa-user" aria-hidden="true"></i>로그인</a></li>
              </sec:authorize>
              <sec:authorize access="isAuthenticated()">
              <li><a href="/customLogout"><i class="fa fa-user" aria-hidden="true"></i>로그아웃</a></li>
              </sec:authorize>
            </ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ==========header mega navbar=======-->
  <div class="top-menu-bottom932">
    <nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/board/list"><img src="${root}/resources/image/logo.png" alt="Logo"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/board/list" class="pull-left">홈</a></li>
            <li><a href="/board/register">물어봐</a></li>
            <!--
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">카테고리 <span class="caret"></span></a>
              <ul class="dropdown-menu animated zoomIn">
                <li><a href="category.html">Question Category</a></li>
                <li><a href="category.html">HTML</a></li>
                <li><a href="category.html">CSS</a></li>
                <li><a href="category.html">Javascript</a></li>
                <li><a href="category.html">Bootstrap</a></li>
              </ul></li>
            <!--  
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">test <span class="caret"></span></a>
              <ul class="dropdown-menu animated zoomIn">
                <li><a href="blog.html">Blog </a></li>
              </ul></li>
            
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">page <span class="caret"></span></a>
              <ul class="dropdown-menu animated zoomIn">
                <li><a href="logIn.html">Login</a></li>
                <li><a href="contact_us.html"> Contact Us</a></li>
                <li><a href="ask_question.html"> Ask Question </a></li>
                <li><a href="post-deatils.html"> Post-Details </a></li>
                <li><a href="user.html">All User</a></li>
                <li><a href="user_question.html"> User Question </a></li>
                <li><a href="category.html"> Category </a></li>
                <li><a href="#"> 404 </a></li>
              </ul></li>
            -->   
            <li><a href="/customLogin">로그인</a></li>
            <li><a href="/customLogout">회원가입</a></li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </div>
  
	<section class="header-descriptin329">
		<div class="container">
			<h3>Post Details</h3>
			<ol class="breadcrumb breadcrumb839">
				<li><a href="#">Home</a></li>
				<li><a href="#">Post Details</a></li>
				<li class="active">This Is My first Question</li>
			</ol>
		</div>
	</section>
	<section class="main-content920">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<div class="post-details">
						<div class="details-header923">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label for="board_no">글번호</label>
										<input type="text" class="form-control" id="name" name="board_no" value='<c:out value="${board.board_no}"/>' readonly="readonly">
									</div>
									<div class="post-title-left129">
										<label for="board_title">제목</label>
										<input type="text" class="form-control" id="name" name="board_title" value='<c:out value="${board.board_title}"/>' readonly="readonly">
									</div>
								</div>
								<div class="col-md-4">
									<div class="post-que-rep-rihght320">
										<a href="#"><i class="fa fa-question-circle" aria-hidden="true"></i> Question</a> <a href="#" class="r-clor10">Report</a>
									</div>
								</div>
							</div>
						</div>
						<div class="post-details-info1982">
							<label>내용</label><br>
							<textarea id="txtEditor" name="board_contents" name="content" readonly="readonly"><c:out value="${board.board_contents}" /></textarea>
							<hr>
							<div class="post-footer29032">
								<div class="l-side2023">
									<i class="fa fa-check check2" aria-hidden="true"> solved</i> <a href="#"><i class="fa fa-star star2" aria-hidden="true"> 5</i></a> <i class="fa fa-folder folder2" aria-hidden="true"> wordpress</i> <i class="fa fa-clock-o clock2" aria-hidden="true"> 4 min ago</i> <a href="#"><i class="fa fa-commenting commenting2" aria-hidden="true"> 5 answer</i></a> <i class="fa fa-user user2" aria-hidden="true"> 70 views</i>
								</div>
								<div class="l-rightside39">
									<button type="button" class="tolltip-button thumbs-up2" data-toggle="tooltip" data-placement="bottom" title="Like">
										<i class="fa fa-thumbs-o-up " aria-hidden="true"></i>
									</button>
									<button type="button" class="tolltip-button  thumbs-down2" data-toggle="tooltip" data-placement="bottom" title="Dislike">
										<i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
									</button>
									<span class="single-question-vote-result">+22</span>
								</div>
								<sec:authentication property="principal" var="pinfo"/>
								  <sec:authorize access="isAuthenticated()">
								    <c:if test="${pinfo.username eq board.board_creator_id}">
								      <button data-oper='modify' class="fa fa-question-circle">Modify</button>
								    </c:if>
								  </sec:authorize>
								<button data-oper='list' class="fa fa-question-circle">List</button>

								<form id='operForm' action="/board/modify" method="get">
									<input type='hidden' id='board_no' name='board_no' value='<c:out value="${board.board_no}"/>'>
									<input type='hidden' name='pageNum' value='<c:out value="${criteria.pageNum}"/>'>
									<input type='hidden' name='amount' value='<c:out value="${criteria.amount}"/>'>
									<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.criteria.pageNum}"/>' />
									<input type='hidden' name='amount' value='<c:out value="${pageMaker.criteria.amount}"/>' />
								</form>
							</div>
						</div>
					</div>
					<div class="share-tags-page-content12092">
						<div class="l-share2093">
							<i class="fa fa-share" aria-hidden="true"> Share</i>
						</div>
						<div class="R-tags309">
							<i class="fa fa-tags" aria-hidden="true"> Wordpress, Question, Developer</i>
						</div>
					</div>
					
				
					<div class="author-details8392">
						<div class="author-img202l">
							<img src="${root}/resources/image/images.png" alt="image">
							<div class="au-image-overlay text-center">
								<a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a>
							</div>
						</div>
						<span class="author-deatila04re"> <label for="board_creator_id">작성자</label> <input type="text" class="form-control" id="name" name="board_creator_id" value='<c:out value="${board.board_creator_id}"/>' readonly="readonly">
						</span>
					</div>
					
					
					         <div class="share-tags-page-content12092">
          <div class="animation-container">
      
      <div class="coffee-bag-container">
        <div class="coffee-bag">
          <span class="mast"></span>
          <span class="bag-top"></span>
          <span class="bag-body"></span>
          <span class="logo">
            <span class="bean bean-one"></span>
            <span class="bean bean-two"></span>
          </span>
          <span class="info info-one"></span>
          <span class="info info-two"></span>
          <span class="info info-three"></span>
          <span class="bag-bottom"></span>
          
        </div><!-- ./coffee-bag -->
      </div><!-- ./coffee-bag-container -->
  <span class="grounds-container">
  <span class="grounds grounds-one"></span>
  <span class="grounds grounds-two"></span>
  <span class="grounds grounds-three"></span>
  <span class="grounds grounds-four"></span>
  </span>
      
      <div class="filter"></div><!-- ./filter -->
      
      <!-- TODO: create coffee grounds falling from the bag into the filter -->
      
      <span class="roasting-top"></span>
      
      <div class="roasting-body">
        <span class="handle-container">
          <span class="handle-one"></span>
          <span class="handle-two"></span>
        </span>
      </div><!-- ./roasting-body -->
      
      <!-- the black part between the coffee pot and the filter -->
      <span class="screen"></span>
      
      <span class="water-attachment"></span>
      
      <span class="water-lid"></span>
      
      <span class="water-pot">
        <span class="water-pot-gloss"></span>
        <span class="fill-line fill-line-first"></span>
        <span class="fill-line fill-line-last"></span>
        <span class="water"></span>
      </span>
      
      <span class="warmer-plate"></span>
      
      <span class="warmer">
        <span class="warmer-accent accent-one"></span>
        <span class="warmer-accent accent-two"></span>
        <span class="warmer-accent accent-three"></span>
      </span>
      
      <span class="warmer-base"></span>
      
      <span class="coffee-pot-container">
      
        <span class="coffee-pot-top"></span>
        
        <span class="coffee-pot-glass-top"></span>
        
        <span class="coffee-pot-glass-connector"></span>
        
        <span class="coffee-pot-glass-base">
          <span class="coffee-pot-gloss"></span>
        </span>
        
        <span class="coffee-pot-handle-container">
          <span class="handle-top"></span>
          <span class="handle-bottom"></span>
        </span>
        
        <span class="coffee-drip"></span>
      
        <span class="drip-cover"></span>
        
        <span class="coffee"></span>
      
      </span>
      
      <span class="coffee-warmer-plate"></span>
      
      <span class="coffee-base-left-end"></span>
      
      <span class="coffee-maker-base"></span>
      
      <span class="control-panel">
        <span class="gauge-one"></span>
        <span class="gauge-two"></span>
      </span>
      
      <span class="coffee-base-right-end"></span>
      
      <span class="leg leg-one"></span>
      
      <span class="leg leg-two"></span>
      
    </div>
      </div>

					<!-- /.row -->
					<div class="comment-list12993">
						<div class='row'>
							<div class="col-lg-12">
								<!--  /.panel -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<i class="fa fa-comments fa-fw"></i> Reply
										<sec:authorize access="isAuthenticated()">
										<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
										</sec:authorize>
									</div>

									<!--  /.panel-heading -->
									<div class="panel-body">
										<ul class="chat">
											<!-- start reply -->
											<li class="left clearfix" data-rid='12' data-reorder='0' data-depth='0'>
												<div>
													<div class="header">
														<strong class="primary-font">user00</strong> <small class="pull-right text-muted">2021-02-18 13: 13</small>
													</div>
													<p>Good job!</p>
												</div>
											</li>
											<!-- end reply -->
										</ul>
									</div>
									<div class="panel-footer"></div>



								</div>
							</div>
						</div>
					</div>
				</div>
				  <!--                end of col-md-9 -->
      <!--           strart col-md-3 (side bar)-->
      <aside class="col-md-3 sidebar97239">
        <div class="status-part3821">
          <h4>stats</h4>
          <a href="#"><i class="fa fa-question-circle" aria-hidden="true"> Question(20)</i></a> <i class="fa fa-comment" aria-hidden="true"> Answers(50)</i>
        </div>
        <div class="categori-part329">
          <h4>Category</h4>
          <ul>
            <li><a href="#">web developer</a></li>
            <li><a href="#">Andriod developer</a></li>
            <li><a href="#">grapics developer</a></li>
            <li><a href="#">web developer</a></li>
          </ul>
        </div>
        <!--             social part -->
        <div class="social-part2189">
          <h4>Find us</h4>
          <li class="rss-one"><a href="#" target="_blank"> <strong> <span>Subscribe</span> <i class="fa fa-rss" aria-hidden="true"></i> <br> <small>To RSS Feed</small>

            </strong>
          </a></li>
          <li class="facebook-two"><a href="#" target="_blank"> <strong> <span>Subscribe</span> <i class="fa fa-facebook" aria-hidden="true"></i> <br> <small>To Facebook Feed</small>

            </strong>
          </a></li>
          <li class="twitter-three"><a href="#" target="_blank"> <strong> <span>Subscribe</span> <i class="fa fa-twitter" aria-hidden="true"></i> <br> <small>To twitter Feed</small>

            </strong>
          </a></li>
          <li class="youtube-four"><a href="#" target="_blank"> <strong> <span>Subscribe</span> <i class="fa fa-youtube" aria-hidden="true"></i> <br> <small>To youtube Feed</small>

            </strong>
          </a></li>
        </div>
        <!--              login part-->
          <sec:authorize access="isAuthenticated()">
          <div class="login-part2389">
          <form:form action="/customLogout" method="post">
            <h4>Login</h4>
            <div class="input-group300">
              <span><i class="fa fa-user1" aria-hidden="true"></i></span>
            </div>
            <div>
              <p>어서오고, <sec:authentication property="principal.member.username"/>  </p>
              <p></p>
            </div>
              <input class="userlogin320" type="submit" value="logout"/>
            </form:form>
          </div>
          </sec:authorize>
          <!--              highest part-->
          <div class="highest-part302">
            <h4>Highest Points</h4>
            <c:forEach items="${recentList}" var="recentBoard">
            <div class="pints-wrapper">
              <div class="left-user3898">
                <a href="#"><img src="${root}/resources/image/images.png" alt="Image"></a>
                <div class="imag-overlay39">
                  <a href="#"><i class="fa fa-plus" aria-hidden="true"></i></a>
                </div>
              </div>
              <span class="points-details938"> <a href="#"><h5><c:out value="${recentBoard.board_creator_id}" /></h5>
              </a> <a href="#" class="designetion439">열정</a>
                <p>206 points</p>
              </span>
            </div>
            </c:forEach>
            <hr>
          </div>
          <!--               end of Highest points -->
        <!--          start tags part-->
        <div class="tags-part2398">
          <h4>Tags</h4>
          <ul>
            <li><a href="#">analytics</a></li>
            <li><a href="#">Computer</a></li>
            <li><a href="#">Developer</a></li>
            <li><a href="#">Google</a></li>
            <li><a href="#">Interview</a></li>
            <li><a href="#">Programmer</a></li>
            <li><a href="#">Salary</a></li>
            <li><a href="#">University</a></li>
            <li><a href="#">Employee</a></li>
          </ul>
        </div>
        <!--          End tags part-->
        <!--        start recent post  -->
          <div class="recent-post3290">
            <h4>Recent Post</h4>
              <c:forEach items="${recentList}" var="recentBoard">
            <div class="post-details021">         
              <a href="#"><h5><c:out value="${recentBoard.board_title}" /></h5></a>
              <p><c:out value="${recentBoard.board_contents}" /></p>
              <small style="color: #848991"><fmt:formatDate pattern="yyyy-MM-dd" value="${recentBoard.board_created_date}" /></small>
            </div>
              </c:forEach>
            <hr>
          </div>
          <!--       end recent post    -->
      </aside>
    </div>
    </div>
  </section>
  <!--    footer -->
  <section class="footer-part">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info-part-one320">
            <h4>Where We Are ?</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravida odio, sit amet suscipit risus ultrices eu.</p>
            <h4>Address :</h4>
            <p>
              Ask Me Network, 33 Street, syada <br> Zeinab, Cairo, Egypt.
            </p>
            <h4>Support :</h4>
            <p>Support Telephone No : (+2)01111011110</p>
            <p>Support Email Account :</p>
            <p>info@example.com</p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info-part-two320">
            <h4>Quick Links</h4>
            <a href="#">
              <p>-Home</p>
            </a> <a href="#">
              <p>-Ask Question</p>
            </a> <a href="#">
              <p>-Questions</p>
            </a> <a href="#">
              <p>-Users</p>
            </a> <a href="#">
              <p>-Edit Profile</p>
            </a> <a href="#">
              <p>-Page</p>
            </a> <a href="#">
              <p>-Contact Us</p>
            </a> <a href="#">
              <p>-Buy now</p>
            </a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info-part-three320">
            <h4>Popular Questions</h4>
            <div class="news-info209">
              <h5>Why are the British confused</h5>
              <p>(Why I darest say, they darest not get offended when they so ...</p>
              <small>July 16, 2017</small>
            </div>
            <div class="news-info209">
              <h5>How to approach applying for</h5>
              <p>(I am trying to find/change my career trajectory. Its a good cozy ...</p>
              <small>July 16, 2017</small>
            </div>
            <div class="news-info209">
              <h5>How to evaluate whether a</h5>
              <p>A friend of mine is the CEO of his own small business. ...</p>
              <small>July 16, 2017</small>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info-part-four320">
            <h4>Latest Tweets</h4>
            <div class="tweet-details29">
              <p>
                <i class="fa fa-twitter-square" aria-hidden="true"></i><a href="#"> codeThemesCheck a new update #AskMe #ThemeForest #WordPress #2code #Envato#2code Themehttps://t.co/urb3LgsOCi</a>
              </p>
              <small>about 2 weeks ago</small>
            </div>
            <div class="tweet-details29">
              <p>
                <i class="fa fa-twitter-square" aria-hidden="true"></i><a href="#"> codeThemesCheck a new update #AskMe #ThemeForest #WordPress #2code #Envato#2code Themehttps://t.co/urb3LgsOCi</a>
              </p>
              <small>about 2 weeks ago</small>
            </div>
            <div class="tweet-details29">
              <p>
                <i class="fa fa-twitter-square" aria-hidden="true"></i><a href="#"> codeThemesCheck a new update #AskMe #ThemeForest #WordPress #2code #Envato#2code Themehttps://t.co/urb3LgsOCi</a>
              </p>
              <small>about 2 weeks ago</small>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="footer-social">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <p>
            Copyright 2017 Ask me | <strong>Sudo Coder</strong>
          </p>
        </div>
        <div class="col-md-6">
          <div class="social-right2389">
            <a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a>
          </div>
        </div>
      </div>
    </div>
  </section>
			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Reply MODAL</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Reply</label>
								<input class="form-control" name='contents' value='New Reply!!!!' />
							</div>
							<div class="form-group">
								<label>Replyer</label>
								<input class="form-control" name='reg_id' value='replyer' />
							</div>
							<div class="form-group">
								<label>Reply Date</label>
								<input class="form-control" name='reg_dt' value='' />
							</div>
						</div>
						<div class="modal-footer">
							<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
							<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
							<button id='modalAddReplyBtn' type="button" class="btn btn-default">Reply</button>
							<button id='modalRegisterBtn' type="button" class="btn btn-danger" data-dismiss="modal">Register</button>
							<button id='modalCloseBtn' type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->

		
	<script type="text/javascript" src="/resources/js/reply.js"></script>

	<script>
    $(document).ready(function() {

      var bnoValue = '<c:out value="${board.board_no}"/>';
      var replyUL = $(".chat");
      var timeValue;
      showList(1);

      function showList(page) {

        console.log("show list " + page);

        replyService.getList({
        bid : bnoValue,
        page : page || 1
        }, function(replyCnt, list) {

       
          console.log("replyCnt 댓글수: " + replyCnt);
          console.log("list 댓글목록: " + list);

          if (page == -1) {
            pageNum = Math.ceil(replyCnt / 10.0);
            showList(pageNum);
            return;
          }

          var str = "";

          if (list == null || list.length == 0) {
            return;
          }

          for (var i = 0, len = list.length || 0; i < len; i++) {
            str += "<div style=margin-left:calc(" + 40 * list[i].depth + "px)><ul>"
            str += "<li class='left clearfix' data-rid='"+list[i].rid+"' data-depth='"+list[i].depth+"' data-reorder='"+list[i].reorder+"'>";
            str += "  <div><div class='header'><strong class='primary-font'>[" + list[i].rid + "] " + list[i].reg_id + "</strong>";
            str += "    <small class='text-muted'>" + replyService.displayTime(list[i].reg_dt) + "</small></div>";
            str += "    <p>" + list[i].contents + "</p></div></li>";
            str += "</ul></div>"
          }

          replyUL.html(str);

          showReplyPage(replyCnt);

        });//end function

      }//end showList

      var pageNum = 1;
      var replyPageFooter = $(".panel-footer");

      function showReplyPage(replyCnt) {

        var endNum = Math.ceil(pageNum / 10.0) * 10;
        var startNum = endNum - 9;

        var prev = startNum != 1;
        var next = false;

        if (endNum * 10 >= replyCnt) {
          endNum = Math.ceil(replyCnt / 10.0);
        }

        if (endNum * 10 < replyCnt) {
          next = true;
        }

        var str = "<ul class='pagination pull-right'>";

        if (prev) {
          str += "<li class='page-item'><a class='page-link' href='" + (startNum - 1) + "'>Previous</a></li>";
        }

        for (var i = startNum; i <= endNum; i++) {

          var active = pageNum == i ? "active" : "";

          str += "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>" + i + "</a></li>";
        }

        if (next) {
          str += "<li class='page-item'><a class='page-link' href='" + (endNum + 1) + "'>Next</a></li>";
        }

        str += "</ul></div>";

        console.log(str);

        replyPageFooter.html(str);
      }

      replyPageFooter.on("click", "li a", function(e) {
        e.preventDefault();
        console.log("page click");

        var targetPageNum = $(this).attr("href");

        console.log("targetPageNum: " + targetPageNum);

        pageNum = targetPageNum;

        showList(pageNum);
      });

      var modal = $(".modal");
      var modalInputReply = modal.find("input[name='contents']");
      console.log(modalInputReply);
      var modalInputReplyer = modal.find("input[name='reg_id']");
      console.log(modalInputReplyer);
      var modalInputReplyDate = modal.find("input[name='reg_dt']");
      console.log(modalInputReplyDate);
      var modalModBtn = $("#modalModBtn");
      var modalRemoveBtn = $("#modalRemoveBtn");
      var modalRegisterBtn = $("#modalRegisterBtn");
      var modalAddReplyBtn = $("#modalAddReplyBtn");
  
      var reg_id = null;
      
      <sec:authorize access="isAuthenticated()">
      reg_id ='<sec:authentication property="principal.username"/>';
      </sec:authorize>
      
      var csrfHeaderName = "${_csrf.headerName}";
      var csrfTokenValue = "${_csrf.token}";
      
      var reorder;

      $("#modalCloseBtn").on("click", function(e) {

        modal.modal('hide');
      });

      $("#addReplyBtn").on("click", function(e) {

        modal.find("input").val("");
        modal.find("input[name='reg_id']").val(reg_id);
        modalInputReplyDate.closest("div").hide();
        modal.find("button[id !='modalCloseBtn']").hide();

        modalRegisterBtn.show();

        $(".modal").modal("show");

      });
      
      //Ajax spring security header
      $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
      });
      
      modalRegisterBtn.on("click", function(e) {
        var reply = {
        'contents' : modalInputReply.val(),

        'reg_id' : modalInputReplyer.val(),

        'bid' : bnoValue,

        'depth' : 0,

        'reorder' : 0

        };
        replyService.add(reply, function(result) {

          alert(result);

          modal.find("input").val("");
          modal.modal("hide");

          showList(1);

        });
      });

      $(".chat").on("click", "li", function(e) {
        var rid = $(this).data("rid");
        reorder = $(this).data("rid");
        console.log("reorder" + reorder);
        replyService.get(rid, function(reply) { // 해당 댓글번호에 해당하는 내용 가져오기

          modalInputReply.val(reply.contents);
          modalInputReplyer.val(reply.reg_id);
          modalInputReplyDate.val(replyService.displayTime(reply.reg_dt)).attr("readonly", "readonly");
          modal.data("rid", reply.rid);
          modal.data("depth", reply.redepth);
          modal.data("reorder", reply.reorder);

          console.log("reply:" + JSON.stringify(reply));

          modal.find("button[id !='modalCloseBtn']").hide();
          modalModBtn.show();
          modalRemoveBtn.show();
          modalAddReplyBtn.show();

          $(".modal").modal("show");

        });

      });

      modalAddReplyBtn.on("click", function(e) {

        var contents = modalInputReply.val();
        var reg_id = modalInputReplyer.val();
        var reply = {
        'contents' : contents,
        'reg_id' : reg_id,
        'bid' : bnoValue,
        'depth' : 1,
        'reorder' : reorder
        };

        replyService.add(reply, function(result) {

          console.log("reorder 답글:" + JSON.stringify(reorder));
          alert(result);
          alert("답글을 달았습니다.");

          modal.find("input").val("");
          modal.modal("hide");

          //showList(1);
          showList(pageNum);
        });

      });

      modalModBtn.on("click", function(e) {
        var originalRegId = modalInputReplyer.val();
        var reply = {
        rid : modal.data("rid"),
        contents : modalInputReply.val(),
        reg_id : originalRegId
        };
        
        if(!reg_id){
          alert("로그인후 수정 가능");
          modal.modal("hide");
          return;
        }
        
        if(reg_id != originalRegId){
          alert("자신의 댓글만 수정 가능");
          modal.modal("hide");
          return;
        }
        
        replyService.update(reply, function(result) {

          alert(result);
          modal.modal("hide");
          showList(pageNum);

        });

      });

      modalRemoveBtn.on("click", function(e) {

        var rid = modal.data("rid");
        
        console.log("댓글번호: " + rid);
        console.log("댓글작성자: " + reg_id);
        
        if(!reg_id){
          alert("로그인후 삭제 가능");
          modal.modal("hide");
          return;
        }
        
        var originalRegId = modalInputReplyer.val();
        
        console.log("댓글 원작성자: " + originalRegId);
        
        if(reg_id != originalRegId){
          alert("자신의 댓글만 삭제가 가능");
          modal.modal("hide");
          return;
        }
        
        replyService.remove(rid, originalRegId, function(result) {

          alert(result);
          modal.modal("hide");
          showList(pageNum);

        });

      });

});
  </script>

	<script type="text/javascript">
    $(document).ready(function() {

      var operForm = $("#operForm");

      $("button[data-oper='modify']").on("click", function(e) {

        operForm.attr("action", "/board/modify").submit();

      });

      $("button[data-oper='list']").on("click", function(e) {

        operForm.find("#bid").remove();
        operForm.attr("action", "/board/list")
        operForm.submit();

      });
    });
  </script>
</body>

</html>