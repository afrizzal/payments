class SignUpFormModel {
  final String? name;
  final String? email;
  final String? password;
  final String? pin;
  final String? profilePicture;
  final String? ktp;

  SignUpFormModel({
    this.name,
    this.email,
    this.password,
    this.pin,
    this.profilePicture,
    this.ktp,
  });

  Map<String, dynamic> toJson(){
    return {
      'name':name,
      'email':email,
      'password': password,
      'pin': pin,
      'profile_picture': profilePicture,
      'ktp': ktp,
    };
  }
  
  SignUpFormModel copyWith({
    String? pin,
    String? profile_picture,
    String? ktp,
  }) =>
      SignUpFormModel(
        name: name,
        email: email,
        password: password,
        pin: pin ?? this.pin,
        profilePicture: profile_picture ?? this.profilePicture,
        ktp: ktp ?? this.ktp,
      );
}