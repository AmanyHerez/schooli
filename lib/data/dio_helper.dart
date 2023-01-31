

import 'package:dio/dio.dart';
import 'package:school/constant/constant.dart';

import '../model/submit_form.dart';

class DioHelper {
  DioHelper._();

  static DioHelper dioHelper = DioHelper._();
  Dio dio = Dio();

  // Dio(BaseOptions(
  //     baseUrl: 'https://student.valuxapps.com/api/',
  //     receiveDataWhenStatusError: true,
  //     headers: {
  //       'Content-Type': 'application/json',
  //     }));

  // login(String email, String password) async {
  //   // String baseUrl='https://student.valuxapps.com/api/';
  //   // String userEndPoint = 'login';
  //   var url = Uri.parse(baseUrl);
  //   Map<String, dynamic> mapData = {
  //     'email': email,
  //     'password': password,
  //   };
  //   Map<String, dynamic> mapHeaders = {
  //     'lang': 'en',
  //     'Content-Type': 'application/json',
  //   };
  //
  //   Response response = await dio.post(url.toString(),
  //       data: mapData, options: Options(headers: mapHeaders));
  //   SubmitFormModel submitFormModel = SubmitFormModel.fromJson(response.data);
  //   //print(response.data);
  //   // print(" token :${loginModel.data!.token}");
  //   //print(response.data['data']);
  //
  //   return submitFormModel.status;
  //   //return response.data['token'];
  // }

  ParentRegister(String studentName,String fatherName,String familyName,String motherName,String gradianName,String nationalityName,) async {
    var url = Uri.parse(baseUrl);
    Map<String, dynamic> mapData = {
      "0": studentName,
      "4": fatherName,
      "6": familyName,
      "1": motherName,
      "5": gradianName,
      "3": nationalityName,
    };
    // Map<String, dynamic> mapHeaders = {
    //   'lang': 'en',
    //   'Content-Type': 'application/json',
    // };

    Response response = await dio.post(url.toString(),
        data: mapData,
        //options: Options(headers: mapHeaders)
    );
    SubmitFormModel submitFormModel = SubmitFormModel.fromJson(response.data);
    print(response.data);
     print(" status :${submitFormModel.status}");
     print(" status :${submitFormModel.message}");


    return submitFormModel.status;
  }





}