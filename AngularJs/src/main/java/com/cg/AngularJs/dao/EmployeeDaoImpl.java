package com.cg.AngularJs.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.cg.AngularJs.bean.Employee;
import com.cg.AngularJs.repo.EmployeeRepository;

@Repository
@Component("dao")
public class EmployeeDaoImpl implements EmployeeDao{
	@Autowired
	private EmployeeRepository empRepo;
	
	public EmployeeRepository getEmpRepo() {
		return empRepo;
	}

	public void setEmpRepo(EmployeeRepository empRepo) {
		this.empRepo = empRepo;
	}

	@Override
	public Employee add(Employee employee) {
		return empRepo.save(employee);
	}

	@Override
	public List<Employee> find() {
		System.out.println("dao find all");
		return (List<Employee>) empRepo.findAll();
	}

	@Override
	public Employee delete(Employee employee) {
		// TODO Auto-generated method stub
		 empRepo.delete(employee);
		 return employee;
	}

}
