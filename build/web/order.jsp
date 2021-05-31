<%-- 
    Document   : ManagerAllOrder
    Created on : 14-Mar-2021, 09:44:19
    Author     : hp
--%>

<%-- 
    Document   : ManagerOrderDetail
    Created on : 13-Mar-2021, 18:18:58
    Author     : hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manager All Order | Apple Store</title>
        <link rel="icon" href="https://i.pinimg.com/originals/77/c3/66/77c366436d8bd35fe8b3ce5b8c66992e.png"
              type ="image/x-icon">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #404E67;
                background: #F5F7FA;
                font-family: 'Open Sans', sans-serif;
            }
            .table-wrapper {
                width: 1100px;
                margin: 30px auto;
                background: #fff;
                padding: 20px;	
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {
                padding-bottom: 10px;
                margin: 0 0 10px;
            }
            .table-title h2 {
                margin: 6px 0 0;
                font-size: 22px;
            }
            .table-title .add-new {
                float: right;
                height: 30px;
                font-weight: bold;
                font-size: 12px;
                text-shadow: none;
                min-width: 100px;
                border-radius: 50px;
                line-height: 13px;
            }
            .table-title .add-new i {
                margin-right: 4px;
            }
            table.table {
                table-layout: fixed;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }
            table.table th:last-child {
                width: 100px;
            }
            table.table td a {
                cursor: pointer;
                display: inline-block;
                margin: 0 5px;
                min-width: 24px;
            }    
            table.table td a.add {
                color: #27C46B;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #E34724;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table td a.add i {
                font-size: 24px;
                margin-right: -1px;
                position: relative;
                top: 3px;
            }    
            table.table .form-control {
                height: 32px;
                line-height: 32px;
                box-shadow: none;
                border-radius: 2px;
            }
            table.table .form-control.error {
                border-color: #f50000;
            }
            table.table td .add {
                display: none;
            }
        </style>
        <script>
            function checkReceiver() {
                window.location = "loadOrder?action=search";
            }
        </script>
    </head>
    <body>

        <div class="container-lg">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div>
                        <!--                            <button type="submit"> BACK TO HOME </button>
                                                    <input type="hidden" name="action" value="back">-->
                        <img src="https://i.pinimg.com/originals/77/c3/66/77c366436d8bd35fe8b3ce5b8c66992e.png" width="55px" height="60px" />
                        <a href="managerbill?action=back" >BACK TO HOME</a>
                    </div>
                    <form action="loadOrderbyStatus" method="post">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-8"><h2>Order ***TOTAL MONEY*** : ${total} $</h2></div>
                                
                                Filter<select name="option">
                                    <option value="1" selected>All</option>
                                    <option value="2" ${op == 2 ? "selected" : ""}>Process</option>
                                    <option value="0" ${op == 0 ? "selected" : ""}>Wait</option>
                                </select>
                                <input type="submit" value="search" />
                                <input type="hidden" name="action" value="search"> 
                            </div>
                        </div>
                    </form>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Total Money</th>
                                <th>Account </th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Date</th>
                                <th>Status</th>
                                <th>Actions</th>
                                <th>Detail</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listo}" var="o">
                                <tr>
                                    <td>${o.cid}</td>
                                    <td>${o.total}</td>
                                    <td>${o.account}</td>
                                    <td>${o.address}</td>
                                    <td>${o.phone}</td>
                                    <td>${o.date}</td>
                                    <c:if test="${o.status == 1}">
                                        <td>Done</td>
                                    </c:if>
                                    <c:if test="${o.status == 0}">
                                        <td>Wait</td>
                                    </c:if>
                                    <c:if test="${o.status == 2}">
                                        <td>Process</td>
                                    </c:if>
                                    <td><c:if test="${o.status == 0}">
                                            <a href="ControlerOrderDetails?action=edit&id=${o.cid}"  class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i>Process</a>
                                        </c:if>
                                        <c:if test="${o.status == 2}">
                                            <a href="ControlerOrderDetails?action=edit2&id=${o.cid}"  class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i>Wait</a>
                                        </c:if>
                                        <c:if test="${o.status != 1}">
                                            <a href="ControlerOrderDetails?action=edit1&id=${o.cid}"  class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i>Done</a>
                                        </c:if>
                                    </td>
                                    <td>
                                        <a href="managerbill?id=${o.cid}"  class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i>Detail</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>    
    </body>
</html>