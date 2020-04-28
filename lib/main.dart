
import 'package:blocemployee/bloc/employees/bloc.dart';
import 'package:blocemployee/ui/employee_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EmployeeBloc>(
          create: (context) => EmployeeBloc()..add(GetEmployee()),
        )
      ],
      child: MaterialApp(
        title: "Employee List",
        home: Scaffold(
          body:  EmployeePage(),
        ),
      ),
    );
  }

}

