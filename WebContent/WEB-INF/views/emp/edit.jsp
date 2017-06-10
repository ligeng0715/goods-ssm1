<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员详情</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/boostrap/css/bootstrap.min.css">
</head>
<body>
  <form action="update" method="post">
    
     <input type="hidden" name="empno" value="${emp.empno}"><div class="center-block" style="width:300px;">
        <table class="table table-bordered ">
            <caption class="text-center">员工明细</caption>
             <tr><th>员工姓名</th>
            <td><input name="ename" value="${emp.ename}">
            </td>
            </tr>
            <tr><th>员工部门</th>
                <td>　
                <select name="deptno">
                 <c:forEach var="dept" items="${deptList}">      
                	<option value="${dept.deptno}"  
                <c:if test="${dept.deptno==emp.deptno}">selected="selected"</c:if>>${dept.dname}</option>
                </c:forEach>       
                </select><br/>
            </tr>
            <tr><th>员工职位</th>
            <td><input name="job" value="${emp.job}"></td>
            </tr>
            <tr>
                <th>基本薪资</th>
                <td>
                   <input name="sal" value="${emp.sal}">
                </td>
            </tr>
           
            <tr><th colspan="2" class="text-center"><input type="submit" value="修改"></th></tr>
        </table>
    </div>
    </form>
</body>
</html>