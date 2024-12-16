package com.sritech.emp.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class EmployeeMapping implements RowMapper<Employee>{

	@Override
	public Employee mapRow(ResultSet res, int rowNum) throws SQLException {
	
		Employee employee=new Employee();
		
		employee.setEmpId(res.getInt(1));
		employee.setEmpName(res.getString(2));
		employee.setEmpJob(res.getString(3));
		employee.setEmpSalary(res.getDouble(4));
		employee.setEmpDeptName(res.getString(5));
		employee.setEmpAge(res.getInt(6));
		employee.setEmpGender(res.getString(7));
		
		return employee;
	}

}
