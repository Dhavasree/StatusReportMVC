package com.cg.AngularJs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cg.AngularJs.bean.Employee;
import com.cg.AngularJs.dao.EmployeeDao;
@Service
@Component("service")
public class EmployeeServiceImpl implements EmployeeService {
@Autowired
EmployeeDao dao;

	public EmployeeDao getDao() {
	return dao;
}

public void setDao(EmployeeDao dao) {
	this.dao = dao;
}

	@Override
	public Employee add(Employee employee) {
		return dao.add(employee);
	}

	@Override
	public List<Employee> find() {
		// TODO Auto-generated method stub
		return dao.find();
	}

	@Override
	public Employee delete(Employee employee) {
		// TODO Auto-generated method stub
		return dao.delete(employee);
	}

}
