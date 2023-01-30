class SubmitFormModel {
  String? status;
  String? message;
  String? permissionCallback;

  SubmitFormModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    permissionCallback = json['permission_callback'];
  }


}