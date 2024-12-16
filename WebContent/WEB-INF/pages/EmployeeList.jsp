<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <html>

        <head>
            	<title>Employee Management App</title>
               
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" >
                    <div>
                         <h1> User  Management App </h1> 
                    </div>
                    
                </nav>
            </header>
            
            
            <br>

            <div class="row">

                <div class="container">
                    <h3 class="text-center">List of Users</h3>
                    <hr>
                    <div class="container text-left">

                       <a href="<%=request.getContextPath()%>/newEmployee" class="btn btn-success">Add
     New Employee</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID </th>
                                <th>Name </th>
                                <th>Job </th>
                                <th>Salary </th>
                                <th>DeptName </th>                
                                <th>Age </th>  
                                <th>Gender </th>                         
                                <th>Action </th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="emp" items="${employeeList}">

                                <tr>
                                    <td>
                                        <c:out value="${emp.empId}" />
                                    </td>
                                    
                                    <td>
                                        <c:out value="${emp.empName}" />
                                    </td>
                                    <td>
                                        <c:out value="${emp.empJob}" />
                                    </td>
                                    <td>
                                        <c:out value="${emp.empSalary}" />                                   
                            
                                    </td>
                                    
                                     <td>
                                        <c:out value="${emp.empDeptName}" />                        
                          
                                    </td>
                                    
                             
                                     <td>
                                        <c:out value="${emp.empAge}" />                        
                          
                                    </td>
                                    
                                     <td>
                                        <c:out value="${emp.empGender}" />                        
                          
                                    </td>
                                    
                                    <td> <a href="editEmployee?employeeid=<c:out value='${emp.empId}' />"> Edit </a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="deleteEmployee?employeeid=<c:out value='${emp.empId}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

   </html>
