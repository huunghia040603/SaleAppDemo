<%-- 
    Document   : index
    Created on : Jul 8, 2024, 7:43:57 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<section class="container">
    <h1 class="text-center text-info m-1">DANH MỤC SẢN PHẨM</h1>
    <div class="row">
        <div class="col-md-2 col-12 bg-secondary">
            <c:url value="/" var="action" />
            <form action="${action}">
                <div class="mb-3 mt-3">
                    <label for="kw" class="form-label">Từ khóa:</label>
                    <input type="text" class="form-control" id="kw" placeholder="Từ khóa..." name="q">
                </div>
                <div class="mb-3 mt-3">
                    <label for="fromPrice" class="form-label">Từ giá (VNĐ):</label>
                    <input type="number" class="form-control" id="fromPrice" placeholder="Từ giá..." name="fromPrice">
                </div>
                <div class="mb-3 mt-3">
                    <label for="toPrice" class="form-label">Đến giá (VNĐ):</label>
                    <input type="number" class="form-control" id="toPrice" placeholder="Đến giá..." name="toPrice">
                </div>
                <div class="mb-3 mt-3">
                    <button class="btn btn-info" type="submit">Tìm kiếm</button>
                </div>
            </form>
        </div>
        <div class="col-md-10 col-12">
            <a class="btn btn-info m-1" href="<c:url value="/products" />">Thêm sản phẩm</a>
            <table class="table table-striped">
                <tr>
                    <th></th>
                    <th>Id</th>
                    <th>Tên sản phẩm</th>
                    <th>Gía</th>
                    <th></th>
                </tr>
                <c:forEach items="${products}" var="p">
                    <tr>
                        <td>
                            <img src="${p.image}" width="120" />
                        </td>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${String.format("%,d", p.price)} VND</td>
                        <td>
                            <a href="#" class="btn btn-success">&orarr;</a>
                            <button class="btn btn-danger">&times;</button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
