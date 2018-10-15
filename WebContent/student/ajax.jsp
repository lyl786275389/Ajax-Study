<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button>点我</button>
	<h1></h1>
	<a href="${pageContext.request.contextPath}/hello.jsp">a链接</a>
	<div></div>
	
	<form>
	   <input type="text" name="name">
	   <input type="text" name="age">
	</form>
</body>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
<script>
	 $('button').click(function(){
		/* $.get('${pageContext.request.contextPath}/HelloServlet',{"name":"xiaomei","age":30},function(r){
			//alert(r['age']);
			 obj = JSON.parse(r);
			alert(obj['name'] );
		}); */
		
		/* $.get('${pageContext.request.contextPath}/hello2.jsp',function(r){
			$('div').html(r);
		}); */
		//$('div').load('${pageContext.request.contextPath}/hello2.jsp');
		
		/* $.ajax({
			url:'${pageContext.request.contextPath}/HelloServlet',
			data: 'name=xiaoxiao&age=40',
			success:function(r){
				alert(r['name']);
			},
			dataType:'json'
		}); */
		 $.post('${pageContext.request.contextPath}/HelloServlet',$('form').serialize(),function(r){
			alert(r['name']);
			alert(r['age']);
		 },'json'); 
	}); 
	
</script>
</html>