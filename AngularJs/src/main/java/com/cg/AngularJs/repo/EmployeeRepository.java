package com.cg.AngularJs.repo;

import org.springframework.data.repository.CrudRepository;

import com.cg.AngularJs.bean.Employee;



public interface EmployeeRepository extends CrudRepository<Employee,Integer>{

}
