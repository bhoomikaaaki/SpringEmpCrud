package com.sritech.emp.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import com.sritech.emp.dao.EmployeeDAO;
import com.sritech.emp.model.Employee;
import com.sritech.emp.service.EmployeeService;

public class EmployeeServiceImpl implements EmployeeService {
	
	
	@Autowired
	private EmployeeDAO employeeDAO;
	

	@Override
	public List<Employee> getEmployeeList() {
		
		System.out.println("entered into  Layer");
		
		List<Employee> list = employeeDAO.getEmployeeList();
		
		
		return list;
	}


	@Override
	public Employee getEmployeeById(Integer id) {

		Employee employee = employeeDAO.getEmployeeById(id);		
		
		return employee;
	}


	@Override
	public int addEmployeeRecord(Employee employee) {
		
		int count = employeeDAO.addEmployeeRecord(employee);
		
		return count;
	}


	@Override
	public int updateEmployeeRecord(Employee employee) {
		int count = employeeDAO.updateEmployeeRecord(employee);
		return count;
	}


	@Override
	public int deleteEmployeeById(Integer id) {
		
		int count = employeeDAO.deleteEmployeeById(id);
		
		return count;
	}

}
