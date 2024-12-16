<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <html>
        <head>
            <title> Employee Management App</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" >
                    <div>
                        <h1> Add New Employee </h1>             
       		     </div>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">    
                            <form action="addEmployee" method="post">  
                                     
                        	<fieldset class="form-group">
                            		<label> Employee Name</label> <input type="text" " class="form-control" name="name" required="required">
                        	</fieldset>
                        	
                        	<fieldset class="form-group">
                            		<label> Employee Job </label> <input type="text" " class="form-control" name="job" required="required">
                        	</fieldset>

                        	<fieldset class="form-group">
                            		<label> Employee Salary </label> <input type="text" " class="form-control" name="salary" required="required">
                        	</fieldset>

                        	<fieldset class="form-group">
                            		<label> Employee Dept Name </label> <input type="text" " class="form-control" name="dept" required="required">
                        	</fieldset>
                        	
                        	<fieldset class="form-group">
                            		<label> Employee Age </label> <input type="text" " class="form-control" name="age" required="required">
                        	</fieldset>
                        	
                        	<hr>
                        	
                        	<fieldset class="form-group">
                            		<label> Employee Gender </label> 
                        	</fieldset>
                        	
                            <input type="radio"   name="gender" value="male" checked > <label> Male </label> <br>                       	
                        	
                        	
                            <input type="radio"   name="gender" value="female"> <label> Female </label> <br>
                        	                  
                        	
                            <input type="radio"  name="gender" value="other" > <label> Other </label>
                        	
                        	
                        	<hr>
                        	
                        	<button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

</html>
