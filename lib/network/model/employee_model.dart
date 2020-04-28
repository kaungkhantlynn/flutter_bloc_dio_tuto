import 'package:json_annotation/json_annotation.dart';

part 'employee_model.g.dart';

@JsonSerializable()
class EmployeeModel {


  @JsonKey(name: 'employee_name')
  String employeeName;

  @JsonKey(name: 'employee_salary')
  String employeeSalary;

  @JsonKey(name: 'employee_age')
  String employeeAge;

  EmployeeModel({ this.employeeName, this.employeeSalary,
      this.employeeAge});

  factory EmployeeModel.fromJson(Map<String,dynamic> json) => _$EmployeeModelFromJson(json);
  Map<String,dynamic> toJson() => _$EmployeeModelToJson(this);


}
