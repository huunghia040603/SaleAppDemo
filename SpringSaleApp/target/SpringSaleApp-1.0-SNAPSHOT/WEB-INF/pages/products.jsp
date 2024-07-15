<%-- 
    Document   : products
    Created on : Jul 8, 2024, 11:24:42 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sản phẩm</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
  
    <body>
      
        <section class="container">
            <form:form method="post" enctype="multipart/form-data" modelAttribute="product">
                <div class="mb-3 mt-3">
                    <label for="name" class="form-label">Tên sản phẩm:</label>
                    <form:input path="name" type="text" class="form-control" id="name" placeholder="Tên sản phẩm..." name="name" />
                </div>
                 <div class="mb-3 mt-3">
                    <label for="name" class="form-label">Giá:</label>
                    <form:input path="price" type="text" class="form-control" id="price" placeholder="Tên sản phẩm..." name="price" />
                </div>
                 <div class="mb-3 mt-3">
                    <label for="name" class="form-label">Ảnh Sản Phẩm:</label>
                    <form:input path="image" type="file" class="form-control" id="file"  name="file" accept=".jpg,.png" />
                </div>
                <div class="mb-3 mt-3">
                    <label for="browser" class="form-label">Danh mục: </label>
                    <select class="form-select" path="categoryId" >
                        <c:forEach items="${categories}" var="c">
                            <option value="${c.id}">${c.name}</option>
                        </c:forEach>
                    </select>
                   
                </div>
                <button class="btn btn-success"> Thêm sản phẩm</button>
            </form:form>
        </section>
    </body>
</html>
