package com.sritech.emp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sritech.emp.model.Employee;
import com.sritech.emp.service.EmployeeService;


@Controller
public class EmployeeController {
	
	
	@Autowired
	private EmployeeService employeeService;

	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView getEmployeesList(ModelAndView model){
		
		System.out.println("entered into controller");
		
		List<Employee> employeeList = employeeService.getEmployeeList();
		System.out.println("controller back to Controller layer");
		
		model.addObject("employeeList", employeeList);
		model.setViewName("EmployeeList");

		return model;
	}
	
	
	@RequestMapping(value="/newEmployee",method=RequestMethod.GET)
	public ModelAndView showEmployeeNewForm(ModelAndView model){
		
		System.out.println("entered into showEmployeeNewForm");
		
		model.setViewName("EmployeeNewForm");

		return model;
	}
	
	
	
	
	@RequestMapping(value="/addEmployee",method=RequestMethod.POST)
	public String addEmployeeRecord(@RequestParam  String name,@RequestParam  String job,@RequestParam  String salary,@RequestParam  String dept,@RequestParam  String age,@RequestParam  String gender){
		
		
		System.out.println("entered into addEmployeeRecord");
		
		Employee employee=new Employee();
		
		employee.setEmpName(name);
		employee.setEmpJob(job);
		employee.setEmpSalary(Double.parseDouble(salary));
		employee.setEmpDeptName(dept);
		employee.setEmpAge(Integer.parseInt(age));
		employee.setEmpGender(gender);
		
		int count = employeeService.addEmployeeRecord(employee);

		return "redirect:/";
	}
	
	
	@RequestMapping(value="/editEmployee",method=RequestMethod.GET)
	public ModelAndView showEmployeeEditForm(ModelAndView model,@RequestParam  String employeeid){
		
		System.out.println("entered into showEmployeeEditForm");
		
		int id=Integer.parseInt(employeeid);
		System.out.println(id);
		Employee emp = employeeService.getEmployeeById(id);
		model.addObject("emp", emp);
		model.setViewName("EmployeeEditForm");
		return model;
	}
	
	
	
	
	@RequestMapping(value="/updateEmployee",method=RequestMethod.POST)
	public String updateEmployeeRecord(@RequestParam  String id,@RequestParam  String name,@RequestParam  String job,@RequestParam  String salary,@RequestParam  String dept,@RequestParam  String age,@RequestParam  String gender){
		
		
		System.out.println("entered into updateEmployeeRecord");
		
		Employee employee=new Employee();
		
		employee.setEmpId(Integer.parseInt(id));
		employee.setEmpName(name);
		employee.setEmpJob(job);
		employee.setEmpSalary(Double.parseDouble(salary));
		employee.setEmpDeptName(dept);
		employee.setEmpAge(Integer.parseInt(age));
		employee.setEmpGender(gender);
		
		System.out.println(employee);
		
		int count = employeeService.updateEmployeeRecord(employee);
		
		System.out.println(count+"records updated");

		return "redirect:/";
	}
	
	
	@RequestMapping(value="/deleteEmployee",method=RequestMethod.GET)
	public String deleteEmployeeRecord(@RequestParam  String employeeid){
		
		System.out.println("entered into deleteEmployeeRecord");
		
		int id=Integer.parseInt(employeeid);
		System.out.println(id);
		
		int count = employeeService.deleteEmployeeById(id);
		
		System.out.println(count+"records deleted sucessfully");
		
		return "redirect:/";
		
	}
	

}
