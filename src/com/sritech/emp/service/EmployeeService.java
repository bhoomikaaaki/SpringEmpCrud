package com.sritech.emp.service;

import java.util.List;

import com.sritech.emp.model.Employee;

public interface EmployeeService {
	
	
	public List<Employee> getEmployeeList();

	public Employee getEmployeeById(Integer id);

	public int addEmployeeRecord(Employee employee);

	public int updateEmployeeRecord(Employee employee);

	public int deleteEmployeeById(Integer id);

}
