<%@ page language="java" contentType="text/html; charset=utf-8"pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<<<<<<< HEAD
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/global.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/page.css">
<style>
a{text-decoration: none;}
.red_star{
   color:red;
}
</style>
<title>用户组查询</title>
</head>
<body>
<form action="FlowManager" id="subForm">
<div class="main-panel">
<jsp:include page="top.jsp" flush="true"/>
<div style="margin-top:1px;">
<!-- 左 -->
<div class="left">
    	<div class="left-nav-box">
    	<div class="left-nav"><a name="userList" href="FlowManager?action=getUserList">用户</a></div>
        <div class="left-nav-orange-line">&nbsp;</div>
       	<div class="left-nav"><a name="myTask" href="#">组</a></div>
       	  	<c:if test="${groupList!= null && fn:length(groupList) != 0}">
			    <c:forEach items="${groupList}" var="group" varStatus="index">
			      <div class="left-nav"><a name="groupList" href="FlowManager?action=getGroupList&groupType=${group.typeId}"><img src="images/temp/user01.jpg" />${group.typeName}</a></div>
			    </c:forEach>
       	  	</c:if>
        </div> 
</div>
<!-- 右-->
	<div class="right">
	  <!-- 查 -->
	  <div class="search">
        	<table width="100%">
              <tr>
                <td class="title-r">组ID：</td>
                <td><input type="text" id="text_3" name="queryGroupId" class="fix-input" style="width:160px;" value="${result.queryGroupId}"/></td>
                <td class="title-r">组名称：</td>
                <td><input type="text" id="text_4" name="queryGroupName" class="fix-input" style="width:69px;" value="${result.queryGroupName}"/>
                <td></td>
                <td><div class="btn-normal"><a href="#" onclick="$('#subForm').submit();">查 找<em class="arrow-small"></em></a></div></td>
              </tr>
            </table>
        </div>
	  <div>
		<!-- 表 -->
		<table style="width:100%;" class="fix-table">
		  <thead>
		   <th width="2%"></th>
		    <th width="30%">组ID</th>
		    <th >用户姓名</th>
		    <th width="5%">登陆号</th>
		    <th width="8%">邮箱</th>
		  </thead>
		  <tbody>
		   <c:forEach items="${result.dataList}" var="dataList" varStatus="index">
		    <tr>
		     <td><input type="checkbox"/></td>
		      <td>${dataList.ORGID}</td>
		      <td>${dataList.ORGNAME}</td>
		      <td></td>
		      <td></td>
		    </tr>
		    </c:forEach>
		  </tbody>
	    </table>
		<!-- 分页 -->	    
	   <jsp:include page="../center/page.jsp" flush="true"/>
=======
<jsp:include page="head.jsp" flush="true"/>
<title>用户组查询</title>
</head>
<body>
<form action="FlowManager" id="subForm">
<div class="main-panel">
<jsp:include page="top.jsp" flush="true"/>
<div style="margin-top:1px;">
<!-- 左 -->
<div class="left">
    	<div class="left-nav-box">
    	<div class="left-nav"><a name="userList" href="FlowManager?action=getUserList">用户</a></div>
        <div class="left-nav-orange-line">&nbsp;</div>
       	<div class="left-nav"><a name="group" href="#">组</a></div>
       	  	<c:if test="${groupList!= null && fn:length(groupList) != 0}">
			    <c:forEach items="${groupList}" var="group" varStatus="index">
			      <div class="left-nav"><a name="groupList" href="FlowManager?action=getGroupList&groupType=${group.typeId}"><img src="images/temp/user01.jpg" />${group.typeName}</a></div>
			    </c:forEach>
       	  	</c:if>
        </div> 
</div>
<!-- 右-->
	<div class="right">
	  <!-- 查 -->
	  <div class="search">
        	<table width="100%">
              <tr>
                <td class="title-r">组ID：</td>
                <td><input type="text" id="text_3" name="queryGroupId" class="fix-input" style="width:160px;" value="${result.queryGroupId}"/></td>
                <td class="title-r">组名称：</td>
                <td><input type="text" id="text_4" name="queryGroupName" class="fix-input" style="width:69px;" value="${result.queryGroupName}"/>
                <td></td>
                <td><div class="btn-normal"><a href="#" onclick="$('#subForm').submit();">查 找<em class="arrow-small"></em></a></div></td>
              </tr>
            </table>
        </div>
	  <div>
		<!-- 表 -->
		<table style="width:100%;" class="fix-table">
		  <thead>
		   <th width="2%"></th>
		    <th width="30%">组ID</th>
		    <th >用户姓名</th>
		    <th width="5%">登陆号</th>
		    <th width="8%">邮箱</th>
		  </thead>
		  <tbody>
		   <c:forEach items="${result.dataList}" var="dataList" varStatus="index">
		    <tr>
		     <td><input type="checkbox"/></td>
		      <td>${dataList.groupId}</td>
		      <td>${dataList.groupName}</td>
		      <td></td>
		      <td></td>
		    </tr>
		    </c:forEach>
		  </tbody>
	    </table>
		<!-- 分页 -->	    
	   <jsp:include page="page.jsp" flush="true"/>
>>>>>>> branch 'develop' of https://github.com/fixteam/fixflow.git
	    </div>
	  </div>
	</div>
</div>
<!-- 隐藏参数部分 -->
<input type="hidden" name="action" id="action" value="getGroupList"> 
</form>
</body>
</html>