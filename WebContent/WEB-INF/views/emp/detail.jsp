<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员详情</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/boostrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/lib/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="center-block" style="width:300px;">
        <table class="table table-bordered ">
            <caption class="text-center">员工薪资明细</caption>
            <tr><th>员工编号</th><td>${emp.empno}</td></tr>
            <tr><th>员工姓名</th><td>${emp.ename}</td></tr>
            <tr><th>员工部门</th><td>${emp.dname}</td></tr>
            <tr><th>员工职位</th><td>${emp.job}</td></tr>
            <tr>
                <th>基本薪资</th>
                <td>
                    <fmt:formatNumber type="number" value="${emp.sal}" pattern="0" />
                </td>
            </tr>
           
            <tr><td colspan="2" class="text-center"><a class="btn btn-default" href="list">返回</a></td></tr>
         </table>
    </div>
</body>
</html>