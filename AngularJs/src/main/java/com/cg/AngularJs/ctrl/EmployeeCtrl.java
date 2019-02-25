package com.cg.AngularJs.ctrl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cg.AngularJs.bean.Employee;
import com.cg.AngularJs.service.EmployeeService;
@Controller
public class EmployeeCtrl {
	@Autowired
	EmployeeService service;
	@RequestMapping("/")
	public String view()
	{
		return "index";
	}
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/add", consumes = MediaType.APPLICATION_JSON_VALUE,method = RequestMethod.POST)
	public ResponseEntity  addDetails(@RequestBody Employee employee)
	{
service.add(employee);
		return new ResponseEntity(HttpStatus.OK);
	}
	@ResponseBody
	@RequestMapping(value="/empdetails",method=RequestMethod.GET,produces="application/json")
	public List<Employee> display()
	{System.out.println("in find all");
		List<Employee> list=service.find();
		return list;
	}
	 @SuppressWarnings("rawtypes")
		@RequestMapping(value="/deleteuser",consumes = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.DELETE)
		    public ResponseEntity DeleteUser(@RequestBody Employee employee)
		    {System.out.println("in delete");
		    
		    Employee e=service.delete(employee);
				return new ResponseEntity(HttpStatus.OK);
		    }
	 @SuppressWarnings("rawtypes")
		@RequestMapping(value="/update", consumes = MediaType.APPLICATION_JSON_VALUE,method = RequestMethod.POST)
		public ResponseEntity  updateDetails(@RequestBody Employee employee)
		{
	//service.update(employee);
			return new ResponseEntity(HttpStatus.OK);
		}
	
}
