<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工列表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/boostrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap-table/bootstrap-table.min.css">
</head>
<body>
<div id="toolbar">
    <button id="btnDelete" class="btn btn-danger">
        <i class="glyphicon glyphicon-trash"></i> 批量删除
    </button>
    <button onclick="window.open('addPage')">
        <i class="glyphicon glyphicon-plus"></i> 添加
    </button>
</div>
<table id="table"></table>
<script src="${pageContext.request.contextPath}/lib/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/boostrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script>
$('#table').bootstrapTable({
    url: 'find_all',
    pagination: true,
    pageSize: 5,
    search: true,
    
	columns : [  {
		     checkbox:true
	    },{
			field : 'empno',
			title : '编号'
		}, {
			field : 'ename',
			title : '姓名',
			formatter : function(value, row, index) {
				/* console.group();
				console.log(value);
				console.log(row);
				console.log(index);
				console.groupEnd(); */
				return '<a href="#">' + value + '</a>';
			}
		}, {
			field : 'dname',
			title : '部门'
		}, {
			field : 'job',
			title : '职位'
		}, {
			field : 'sal',
			title : '基本工资'
		}, {
			field : 'loc',
			title : '位置'
		},
		 {
				field : 'Id',
				title : '操作',
				formatter : function(value, row, index) {
					var opt='';
					    opt+='<a href="delete?empno='+ row.empno +'" class="btn btn-default">删除</a>';
				        opt+='<a href="detail?empno='+ row.empno +'"  class="btn btn-default">查看详情</a>';
				        opt+='<a href="updatePage?empno='+ row.empno +'"  class="btn btn-default">修改</a>';
				        return opt;
				}
			}
		]

	});
	
var $btnDelete = $('#btnDelete');
$btnDelete.click(function(){
    var url = 'delete_all';
    var rows = $('#table').bootstrapTable('getSelections');
    for (var i = 0; i < rows.length; i++) {
        var id = rows[i].empno;
        if( i == 0){
            url += '?';
        }else{
            url += '&';
        }
        url += 'ids=' + id;
    }
      if(id!=null){
    	 window.location.href = url;
    }else{
    	alert("没有选中所要删除的行");
    }
});
</script>
<script src="${pageContext.request.contextPath}/js/common-function.js"></script>
</body>
</html>