import 'package:myproject/Screen/Offline_Database/Models/Student.dart';
import 'package:myproject/Screen/Offline_Database/repository.dart';

class StudentService
{
  // object declaration
  late Repository _repository;

  // constructor
  StudentService()
  {
    _repository = Repository();
  }

  // insert service
  insertService(Student student) async
  {
    return await _repository.insertData("student", student.studentMap());
  }

  // read service
  readService() async
  {
    return await _repository.readData("student");
  }

  readSingleService(Student student) async
  {
    return await _repository.readSingleData("student", student.id);
  }

  // update service
  updateService(Student student) async
  {
    return await _repository.updateData("student", student);
  }

  // delete service
  deleteService(Student student) async
  {
    return await _repository.deleteData("student", student.studentMap());
  }

}