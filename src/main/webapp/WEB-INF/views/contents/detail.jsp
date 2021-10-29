<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var count = document.getElementById("count").value;
	function buy(contentsno){
		var url = "buy";
		url += "?contentsno="+contentsno;
		url += "&stock="+count;
		location.href=url;
	}
	function basket(contentsno){
		var url = "basket";
		url += "?contentsno="+contentsno;
		
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
				<td colspan="2" width="300px"><h3
						class="col-sm-offset-2 col-sm-10">
						수량 <input type="number" class="form-control" id="count"
							name="count" value="1" min="0" max="${dto.stock }"
							style="text-align: center; width: 100px;">
					</h3></td>
			</tr>

			<tr>
				<td colspan="2" width="300px"><h3 id="price"
						class="col-sm-offset-2 col-sm-10">
						${dto.price}
				</h3></td>
			</tr>
			<tr>
				<td width="300px"><h4 align="center">
						<a href="javascript:basket('${dto.contentsno}')">장바구니추가</a>
					</h4></td>
				<td width="300px"><h4 align="center">
						<a href="javascript:buy('${dto.contentsno}')">구매</a>
					</h4></td>
			</tr>
			<tr>
				<td colspan="5">
					<h2 align="center">${dto.detail }</h2>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>