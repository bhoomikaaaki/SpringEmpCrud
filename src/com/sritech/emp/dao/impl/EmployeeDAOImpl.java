package com.sritech.emp.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sritech.emp.dao.EmployeeDAO;
import com.sritech.emp.model.Employee;
import com.sritech.emp.model.EmployeeMapping;


public class EmployeeDAOImpl implements EmployeeDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Employee> getEmployeeList() {
		
		
		System.out.println("entered into DAO Layer");
		
		List<Employee> list = jdbcTemplate.query("select * from employee",new EmployeeMapping());
		
		System.out.println(list);
		
		return list;
	}

	@Override
	public Employee getEmployeeById(Integer id) {
		
		
		List<Employee> list=jdbcTemplate.query("select * from employee where Id=?",new EmployeeMapping(),id);
		
		Employee employee = list.get(0);
		
		System.out.println(employee);
		return employee;
	}

	@Override
	public int addEmployeeRecord(Employee employee) {
		
		
		int count = jdbcTemplate.update("INSERT INTO employee (Name,Job,Salary,DeptName,Age,Gender) VALUES(?,?,?,?,?,?)",employee.getEmpName(),employee.getEmpJob(),employee.getEmpSalary(),employee.getEmpDeptName(),employee.getEmpAge(),employee.getEmpGender());
		
		System.out.println("sucessfully employee records"+count+" inserted");
		
		return count;
	}

	@Override
	public int updateEmployeeRecord(Employee employee) {
		int count = jdbcTemplate.update("update employee set Name=?,Job=?,Salary=?,DeptName=?,Age=?,Gender=? where Id=?",employee.getEmpName(),employee.getEmpJob(),employee.getEmpSalary(),employee.getEmpDeptName(),employee.getEmpAge(),employee.getEmpGender(),employee.getEmpId());
		
		return count;
	}

	@Override
	public int deleteEmployeeById(Integer id) {
int count = jdbcTemplate.update("delete from employee where Id=?",id);
		
		return count;
	}

}
