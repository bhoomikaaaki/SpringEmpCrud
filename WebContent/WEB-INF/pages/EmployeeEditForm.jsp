<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <html>
        <head>
            <title>User Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" >
                    <div>
                        <h1> Edit Employee Details </h1>             
       		     </div>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">    
                            <form action="updateEmployee" method="post">  

							<fieldset class="form-group">
                            		<label>Id</label> <input type="text" value="<c:out value='${emp.empId}' />" class="form-control" name="id" readonly >
                        	</fieldset>
         
                        	<fieldset class="form-group">
                            		<label>Name</label> <input type="text" value="<c:out value='${emp.empName}' />" class="form-control" name="name" required="required">
                        	</fieldset>
                        	
                        	<fieldset class="form-group">
                            		<label>Job</label> <input type="text" value="<c:out value='${emp.empJob}' />" class="form-control" name="job" required="required">
                        	</fieldset>
                        	
                        	<fieldset class="form-group">
                            		<label>Salary</label> <input type="text" value="<c:out value='${emp.empSalary}' />" class="form-control" name="salary" required="required">
                        	</fieldset>

							<fieldset class="form-group">
                            		<label>DeptName </label> <input type="text" value="<c:out value='${emp.empDeptName}' />" class="form-control" name="dept">
                        	</fieldset>
                        	
                        	<fieldset class="form-group">
                            		<label>Age </label> <input type="text" value="<c:out value='${emp.empAge}' />" class="form-control" name="age">
                        	</fieldset>


							<hr>
                        	
                        	<fieldset class="form-group">
                         
                            	<label>Employee Gender</label>  <br>  
                            
                            	<c:set var="gender" value='${emp.empGender}'/>
                            
          
							<c:choose>
								<c:when test="${(gender == 'male')}">
									<input type="radio" name="gender" value="male" checked />
								</c:when>
								<c:otherwise>
								<input type="radio" name="gender" value="male" />
								</c:otherwise>
							</c:choose>	
													
							<label >Male</label> 
							
							<c:choose>
								<c:when test="${(gender == 'female')}">
									<input type="radio" name="gender" value="female" checked />
								</c:when>
								<c:otherwise>
								<input type="radio" name="gender" value="female" />
								</c:otherwise>
							</c:choose>		
												
							<label >Female</label> 
							
							<c:choose>
								<c:when test="${(gender == 'others')}">
									<input type="radio" name="gender" value="others" checked />
								</c:when>
								<c:otherwise>
								<input type="radio" name="gender" value="others" />
								</c:otherwise>
							</c:choose>							
							<label >Others</label> 
                            
                        </fieldset>                   
       
    						
                        	<button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

</html>
