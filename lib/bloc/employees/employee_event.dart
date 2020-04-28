import 'package:meta/meta.dart';

@immutable
abstract class EmployeeEvent {
  const EmployeeEvent();
}

class GetEmployee extends EmployeeEvent{

  GetEmployee();
}



