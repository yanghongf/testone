<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    .triangle{
        width: 0;
        height: 0;
        border-left:50px solid red;
        border-bottom:50px solid blue;
        border-top:50px solid black;
        border-right:50px solid purple
    }
    .triangle{
      width: 0;
      height: 0;
      border:50px transparent solid; /*这里我们将元素的边框宽度设置为50px，transparent表示边框颜色是透明的，solid表示边框是实线的*/
      border-top-color: black;  /*这里我们仅将上边框的颜色设置为黑色，众所周知，css后面的样式代码会覆盖之前的相同的样式代码，至于其他三边的还是透明色*/
      /*border-bottom-color: black; /*这里设置底部边框色为黑色*/
      border-left-color: black;  /*这里设置左边边框色为黑色*/
      border-right-color:black*/ /*这里设置右边边框色为黑色*/
  }
  .test-div{
        position: relative;  /*日常相对定位*/
        width:150px;
        height:36px;
        border-radius:5px;
        border:black 1px solid;
        background: rgba(245,245,245,1)
    }
    .test-div:before{
        content: "";  /*:before和:after必带技能，重要性为满5颗星*/
        display: block;
        position: absolute;  /*日常绝对定位*/
        top:8px;
        width: 0;
        height: 0;
        border:6px transparent solid;
        left:-12px;
        border-right-color: rgba(245,245,245,1);
    }
    .test-div{
        position: relative;  /*日常相对定位*/
        width:150px;
        height: 36px;
        border:black 1px solid;
        border-radius:5px;
        background: rgba(245,245,245,1)
    }
    .test-div:before,.test-div:after{
        content: "";  /*:before和:after必带技能，重要性为满5颗星*/
        display: block;
        position: absolute;  /*日常绝对定位*/
        top:8px;
        width: 0;
        height: 0;
        border:6px transparent solid;
    }
    .test-div:before{
        left:-11px;
        border-right-color: rgba(245,245,245,1);
        z-index:1
    }
    .test-div:after{
        left:-12px;
        border-right-color: rgba(0,0,0,1);
        z-index: 0
    }
    body{
          background: url(img/1.jpg) no-repeat left top /*这里本兽加了个图片背景，用以区分背景的半透明及内容的完全不透明*/
      }
      .test-div{
          position: relative;  /*日常相对定位(重要，下面内容也会介绍)*/
          width:300px;
          height: 120px;
          padding: 20px 10px;
          font-weight: bold;
      }
      .test-div:before{
          position: absolute;  /*日常绝对定位(重要，下面内容也会略带介绍)*/
          content: "";  /*:before和:after必带技能，重要性为满5颗星*/
          top:0;
          left: 0;
          width: 100%;  /*和内容一样的宽度*/
          height: 100%;  /*和内容一样的高度*/
          background: rgba(255,255,255,.5); /*给定背景白色，透明度50%*/
          z-index:-1 /*日常元素堆叠顺序(重要，下面内容也会略带介绍)*/
      }
  </style>
  
</head>
<body>
<div class="test-div">
	<div>hello</div>
      <table>
          <tr>
              <td>Name</td>
              <td><input placeholder="your name" /></td>
          </tr> 
          <tr>
              <td>Password</td>
              <td><input placeholder="your password" /></td>
          </tr> 
          <tr>
              <td></td>
              <td><input type="button" value="login" /></td>
          </tr>
      </table>
  </div>
</body>
</html>