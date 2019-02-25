package com.cg.AngularJs.service;

import java.util.List;

import com.cg.AngularJs.bean.Employee;

public interface EmployeeService {

	public Employee add(Employee employee);

	public List<Employee> find();

	public Employee delete(Employee employee);

}
