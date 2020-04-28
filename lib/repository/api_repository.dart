import 'package:blocemployee/network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiRepository{
  static final ApiRepository _singalatonApiRepository =
      ApiRepository._internal();

  factory ApiRepository() {
    return _singalatonApiRepository;
  }

  ApiRepository._internal();



  Future<dynamic> getEmployee() async {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return await ApiService(dio).getEmployees();

  }
}