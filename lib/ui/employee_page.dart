import 'package:blocemployee/bloc/employees/bloc.dart';
import 'package:blocemployee/network/model/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class EmployeePage extends StatefulWidget {
  @override
  _EmployeePageState createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {

  List<EmployeeModel> employees;


  @override
  void initState() {
    super.initState();
//    BlocProvider.of<EmployeeBloc>(context).add(GetEmployee());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: double.infinity,
          child: BlocBuilder<EmployeeBloc,EmployeeState>(
            builder: (context,state){
              if (state is EmployeeLoading){
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              if (state is EmployeeLoaded){
                employees = state.employeesModel.employeeModels;
                return ListView.builder(
                    itemCount: state.employeesModel.employeeModels.length,
                    itemBuilder: (context,int index){
                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5.5),
                        child: Card(
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Text(employees[index].employeeName),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Text(employees[index].employeeAge),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Text(employees[index].employeeSalary),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              }

              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          )
        ),
      ),
    );
  }
}
