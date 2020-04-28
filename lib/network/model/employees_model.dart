import 'package:blocemployee/network/model/employee_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'employees_model.g.dart';

@JsonSerializable()
class EmployeesModel {
  @JsonKey(name: 'status')
  String id;

  @JsonKey(name: 'data')
  List<EmployeeModel> employeeModels;


  EmployeesModel({this.id, this.employeeModels});

  factory EmployeesModel.fromJson(Map<String,dynamic> json) => _$EmployeesModelFromJson(json);
  Map<String,dynamic> toJson() => _$EmployeesModelToJson(this);


}
