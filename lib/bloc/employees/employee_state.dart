import 'package:blocemployee/network/model/employees_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class EmployeeState {}

class InitialEmployeeState extends EmployeeState {}

class EmployeeLoading extends EmployeeState {}

class EmployeeLoaded extends EmployeeState {
  EmployeesModel employeesModel;

  EmployeeLoaded(this.employeesModel);
}

class EmployeeFailed extends EmployeeState {
  Error e;

  EmployeeFailed(this.e);


}
