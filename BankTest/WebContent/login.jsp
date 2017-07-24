<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>  
<!DOCTYPE html>  
<html>  
<head>  
    <meta charset="GBK"/>  
    <title></title>  
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>  
    <style>  
        body{  
            background: #ebebeb;  
            font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;  
            color: #222;  
            font-size: 12px;  
        }  
        *{padding: 0px;margin: 0px;}  
        .top_div{  
            
            width: 100%;  
            height: 400px;  
        }  
        .ipt{  
            border: 1px solid #d3d3d3;  
            padding: 10px 10px;  
            width: 290px;  
            border-radius: 4px;  
            padding-left: 35px;  
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);  
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);  
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;  
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;  
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s  
        }  
        .ipt:focus{  
            border-color: #66afe9;  
            outline: 0;  
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);  
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)  
        }  
        .u_logo{  
            background: url("images/username.png") no-repeat;  
            padding: 10px 10px;  
            position: absolute;  
            top: 43px;  
            left: 40px;  
  
        }  
        .p_logo{  
            background: url("images/password.png") no-repeat;  
            padding: 10px 10px;  
            position: absolute;  
            top: 12px;  
            left: 40px;  
        }  
        a{  
            text-decoration: none;  
        }  
        .tou{  
            background: url("images/tou.png") no-repeat;  
            width: 97px;  
            height: 92px;  
            position: absolute;  
            top: -87px;  
            left: 140px;  
        }  
        .left_hand{  
            background: url("images/left_hand.png") no-repeat;  
            width: 32px;  
            height: 37px;  
            position: absolute;  
            top: -38px;  
            left: 150px;  
        }  
        .right_hand{  
            background: url("images/right_hand.png") no-repeat;  
            width: 32px;  
            height: 37px;  
            position: absolute;  
            top: -38px;  
            right: -64px;  
        }  
        .initial_left_hand{  
            background: url("images/hand.png") no-repeat;  
            width: 30px;  
            height: 20px;  
            position: absolute;  
            top: -12px;  
            left: 100px;  
        }  
        .initial_right_hand{  
            background: url("images/hand.png") no-repeat;  
            width: 30px;  
            height: 20px;  
            position: absolute;  
            top: -12px;  
            right: -112px;  
        }  
        .left_handing{  
            background: url("images/left-handing.png") no-repeat;  
            width: 30px;  
            height: 20px;  
            position: absolute;  
            top: -24px;  
            left: 139px;  
        }  
        .right_handinging{  
            background: url("images/right_handing.png") no-repeat;  
            width: 30px;  
            height: 20px;  
            position: absolute;  
            top: -21px;  
            left: 210px;  
        }  
  
    </style>  
    
</head>  
<body>  
<div class="top_div"></div>  
<div style="width: 400px;height: 200px;margin: auto auto; background: #ffffff;text-align: center;margin-top: -200px;border: 1px solid #e7e7e7">  
    <span style="color:red;">${message}</span>  
    <div style="width: 165px;height: 96px;position: absolute;display:none;" >  
        <div class="tou"></div>  
        <div id="left_hand" class="initial_left_hand"></div>  
        <div id="right_hand" class="initial_right_hand"></div>  
    </div>  
    
    
<form action="loginCheck.jsp" method="post" id="form">  
    <p style="padding: 30px 0px 10px 0px;position: relative;">  
        <span class="u_logo"></span>  
        <input class="ipt" type="text" placeholder="请输入用户名" name="name" id="name">  
    </p>  
    <p style="position: relative;">  
        <span class="p_logo"></span>  
        <input id="password" class="ipt" type="text" name="password"  placeholder="请输入密码" onkeydown="keyLogin();">  
    </p>  
    <div style="height: 50px;line-height: 50px;margin-top: 30px;border-top: 1px solid #e7e7e7;">  
        <p style="margin: 0px 35px 20px 45px;">  
           <span style="float: right">  
               <input type="submit" name="submit" id="submit" value="登录" style="background: #008ead;padding: 7px 10px;border-radius: 4px;border: 1px solid #1a7598;color: #FFF;font-weight: bold;"> 
               <a href="register.jsp" style="background: #008ead;padding: 7px 10px;border-radius: 4px;border: 1px solid #1a7598;color: #FFF;font-weight: bold;">注册</a> 
           </span>  
        </p>  
    </div>  
</form>  
</div>  
<div style="position: fixed;bottom: 0px;text-align: center;width: 100%;">  
</div>  
  
</body>  
</html>  