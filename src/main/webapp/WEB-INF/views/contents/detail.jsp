<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function calcPrice(){
		let cnt = document.getELementById("count");
		document.getElementById("price").innerHTML="${dto.price}*cnt";
	}
</script>
</head>
<body>
	<!-- contentsno, cateno, pname, price, filename, stock, detail -->
	<br>
	<br>
	<div class="container">
		<table class="table-bordered">
			<tr>
				<td colspan="3" rowspan="4" style="text-align: center"><img
					src="${root}/pstorage/${dto.filename}" width="450px" height="350px"
					class="img-rounded"></td>
				<td colspan="2" width="300px"><h3 align="center">${dto.pname}</h3></td>
			</tr>
			<tr>
				<td colspan="2" width="300px"><h3 class="col-sm-offset-2 col-sm-10">
						수량 <input type="number" class="form-control" id="count"
							name="count" value="1" style="text-align:center; 
							width:100px;" onclick="calcPrice()">
					</h3></td>
			</tr>
			<tr>
				<td colspan="2" width="300px"><h3 id="price" class="col-sm-offset-2 col-sm-10"></h3>
				</td>
			</tr>
			<tr>
				<td width="300px"><h4 align="center">
				<a href="">장바구니</a>
				</h4></td>
				<td width="300px"><h4 align="center">
				<a href="/">구매</a>
				</h4></td>
			</tr>
		</table>
	</div>
</body>
</html>