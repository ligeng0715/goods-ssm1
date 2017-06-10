/**
 * 通用函数
 * Author：Helen
 */

 function checkDelete(empno){
	 if(!confirm('您确认要删除这条记录吗?')){
		 return false;
	 }
	 window.location.href = 'delete?empno=' + row.empno;
 }