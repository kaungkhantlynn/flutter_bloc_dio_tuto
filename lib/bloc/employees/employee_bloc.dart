import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:blocemployee/network/model/employees_model.dart';
import 'package:blocemployee/repository/api_repository.dart';
import './bloc.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  ApiRepository apiRepository = ApiRepository();
  @override
  EmployeeState get initialState => InitialEmployeeState();


  @override
  Stream<EmployeeState> mapEventToState(
    EmployeeEvent event,
  ) async* {
    if(event is GetEmployee){
      yield EmployeeLoading();
      try{
        EmployeesModel employeesModel = await apiRepository.getEmployee();
        yield EmployeeLoaded(employeesModel);
        print(employeesModel);
      } catch (e){
        print("myerror" + e.toString());
        yield EmployeeFailed(e);
      }
    }
  }
}
