class RegisterModel{
  Map<String, dynamic> data;
  bool status;

  RegisterModel({required this.data,  required this.status});

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
        data: json['data'], status: json['status']);
  }
}