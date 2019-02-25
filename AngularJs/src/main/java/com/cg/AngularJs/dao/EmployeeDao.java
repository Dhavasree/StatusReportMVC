package com.cg.AngularJs.dao;

import java.util.List;

import com.cg.AngularJs.bean.Employee;

public interface EmployeeDao {

	public Employee add(Employee employee);

	public List<Employee> find();

	public Employee delete(Employee employee);

}
