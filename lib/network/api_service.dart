import 'package:blocemployee/network/model/employees_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://dummy.restapiexample.com/api/v1/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;



  @GET("/employees")
  Future<EmployeesModel> getEmployees();

}