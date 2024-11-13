class LoginModel {
  Map<String, dynamic> data;
  bool status;

  LoginModel({required this.data, required this.status});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
        data: json['data'],  status: json['status']);
  }
}
