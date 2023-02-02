import 'package:dio/dio.dart';
import 'package:school/constant/constant.dart';

import '../model/artical_model.dart';
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
  // getArticel() async {
  //   var url = Uri.parse(baseUrlArticle);
  //
  //
  //   Response response =
  //   await dio.get(url.toString(), );
  //   ArticleModel articleModel = ArticleModel.fromJson(response.data);
  //
  //   print(articleModel.status);
  //   print(articleModel.date);
  //   return articleModel;
  // }

  ParentRegister(
    String studentName,
    String fatherName,
    String familyName,
    String motherName,
    String gradianName,
    String nationalityName,
    String id,
    String secondLanguage,
    String medicalProblems,
    String religion,
    String city,
    String arae,
    String district,
    String street,
    String home,
    String gov,
    String birthDay,
    String gender,
    String parentCellular1,
    String parentCellular2,
    String previousSchool,
    String homePhone,
    String newClass,
    String previousClass,
    String prevEdu,
    String requiredEdu,
    String newAcademic,
    String region,
  ) async {
    var url = Uri.parse(baseUrl);
    Map<String, dynamic> mapData = {
      "0": studentName,
      "4": fatherName,
      "6": familyName,
      "1": motherName,
      "5": gradianName,
      "3": nationalityName,
      "7": id,
      "8": secondLanguage,
      "9": medicalProblems,
      "23": religion,
      "10": city,
      "11": arae,
      "12": district,
      "16": street,
      "17": home,
      "18": gov,
      "13": birthDay,
      "14": gender,
      "28": parentCellular1,
      "29": parentCellular2,
      "26": previousSchool,
      "30": homePhone,
      "24": newClass,
      "25": previousClass,
      "34": prevEdu,
      "36": requiredEdu,
      "35": newAcademic,
      "38": region,



    };
    // Map<String, dynamic> mapHeaders = {
    //   'lang': 'en',
    //   'Content-Type': 'application/json',
    // };

    Response response = await dio.post(
      url.toString(),
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
