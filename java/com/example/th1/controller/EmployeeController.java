package com.example.th1.controller;

import com.example.th1.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {
    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/employee")
    public String employee(Model model) {
        List<Employee> employees = List.of(
                new Employee(1, "Tran Huu Nhat", "IT" , 50000),
                new Employee(2, "Tran Tri DUong", "Nursing" , 17000),
                new Employee(3, "La The Phong", "Docter" , 3000),
                new Employee(4, "Nguyen Van A", "IT" , 12000),
                new Employee(5, "Tran Thi B", "Hacker" , 4500)
                );
        model.addAttribute("employees", employees);
        return "employee";
    }
}
