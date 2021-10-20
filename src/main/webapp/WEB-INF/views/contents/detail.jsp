<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html> 
<head>
  <title>homepage</title>
  <meta charset="utf-8">
  <script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js" />
</head>
<body> 

<div class="container">
<h1 class="col-sm-offset-2 col-sm-10">상품 등록</h1>
<form class="form-horizontal" 
      action="/contents/create"
      method="post"
      enctype="multipart/form-data"
      onsubmit="return checkIn(this)">

  <div class="form-group">
    <label class="control-label col-sm-2" for="cateno">상품분류</label>
    <div class="col-sm-6">
      <select class="form-control" name="cateno">
        <option value="1"
        <c:if test= "${cateno==1}"> selected </c:if>
        >Jean</option>
        <option value="2"
        <c:if test= "${cateno==2}"> selected </c:if>
        >Bag</option>
        <option value="3"
        <c:if test= "${cateno==3}"> selected </c:if>
        >Shoes</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pname">상품명</label>
    <div class="col-sm-8">
      <input type="text" name="pname" id="pname" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="price">가격</label>
    <div class="col-sm-8">
      <input type="text" name="price" id="price" class="form-control">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="detail">상세정보</label>
    <div class="col-sm-8">
    <textarea rows="12" cols="7" id="detail" name="detail" class="form-control"></textarea>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="stock">재고</label>
    <div class="col-sm-6">
      <input type="text" name="stock" id="stock" class="form-control">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="filenameMF">상품이미지</label>
    <div class="col-sm-6">
      <input type="file" name="filenameMF" id="filenameMF" class="form-control">
    </div>
  </div>
   <div class="form-group">
   <div class="col-sm-offset-2 col-sm-5">
    <button class="btn">등록</button>
    <button type="reset" class="btn">취소</button>
   </div>
 </div>
</form>
</div>
</body> 
</html> 