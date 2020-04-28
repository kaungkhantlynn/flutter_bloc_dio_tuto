// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeesModel _$EmployeesModelFromJson(Map<String, dynamic> json) {
  return EmployeesModel(
    id: json['status'] as String,
    employeeModels: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : EmployeeModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EmployeesModelToJson(EmployeesModel instance) =>
    <String, dynamic>{
      'status': instance.id,
      'data': instance.employeeModels,
    };
