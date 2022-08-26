//TODO: imports

//TODO: List of  Employees

//TODO: Stream Controllers
//TODO: Stream Sink getter
//TODO: Constructor - add data; listen to changes
//TODO: Core functions
//TODO: dispose

import 'dart:async';
import 'employee.dart';

class EmployeeBloc {

  final List<Employee> _employeeList = [
    Employee(1, 'Employee One', 10000.0),
    Employee(2, 'Employee Two', 20000.0),
    Employee(3, 'Employee Three', 30000.0),
    Employee(4, 'Employee Four', 40000.0),
    Employee(5, 'Employee Five', 50000.0),
    Employee(6, 'Employee Six', 60000.0),
  ];

  final _employeeListStreamController = StreamController<List<Employee>>();

  //for increment  and  decrement

final _employeeSalaryIncrementStreamController = StreamController<Employee>();
  final _employeeSalaryDecrementStreamController = StreamController<Employee>();

  //getters

 Stream <List<Employee>> get employeeListStream => _employeeListStreamController.stream;
 StreamSink<List<Employee>> get employeeSinkStream => _employeeListStreamController.sink;

 StreamSink<Employee> get employeeSalaryIncrement => _employeeSalaryIncrementStreamController.sink;
  StreamSink<Employee> get employeeSalaryDecrement => _employeeSalaryDecrementStreamController.sink;

  //constructor
EmployeeBloc (){
  _employeeListStreamController.add(_employeeList);

  _employeeSalaryIncrementStreamController.stream.listen(_incrementSalary);
  _employeeSalaryDecrementStreamController.stream.listen(_decrementSalary);
}

  get employeeListSink => '';


_incrementSalary(Employee employee) {
  double salary = employee.salary;

  double incrementedSalary = salary * 20/100;
  _employeeList[employee.id -1].salary = salary + incrementedSalary;


  employeeListSink.add(_employeeList);
   }
     _decrementSalary(Employee employee) {
       double salary = employee.salary;

       double decrementedSalary = salary * 20/100;
       _employeeList[employee.id -1].salary = salary - decrementedSalary;


       employeeListSink.add(_employeeList);
   }
   void dispose (){
   _employeeSalaryIncrementStreamController.close();
   _employeeSalaryDecrementStreamController.close();
   _employeeListStreamController.close();
   }
}

