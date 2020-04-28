// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) {
  return EmployeeModel(
    employeeName: json['employee_name'] as String,
    employeeSalary: json['employee_salary'] as String,
    employeeAge: json['employee_age'] as String,
  );
}

Map<String, dynamic> _$EmployeeModelToJson(EmployeeModel instance) =>
    <String, dynamic>{
      'employee_name': instance.employeeName,
      'employee_salary': instance.employeeSalary,
      'employee_age': instance.employeeAge,
    };
