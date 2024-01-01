import 'package:myproject/Screen/Offline_Database/Models/Student.dart';
import 'package:myproject/Screen/Offline_Database/repository.dart';

class MyService
{
  late Repository _repository;

  MyService()
  {
    _repository = Repository();
  }

  insertService(Student student) async
  {
    return await _repository.insertData("student", student.studentMap());
  }

  readService() async
  {
    return await _repository.getData("student");
  }

  readSingleService(Student student) async
  {
    return await _repository.readSingleData("student", student.id);
  }

  updateService(Student student) async
  {
    return await _repository.updateData("student", student);
  }

 deleteService(Student student) async
  {
    return await _repository.deleteData("student", student);
  }

}