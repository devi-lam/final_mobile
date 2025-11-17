class UserModel {
  final String uId;
  final String email;

  UserModel({
    required this.uId,
    required this.email,
  });

  factory UserModel.fromFirebase(UserModel user){
    return UserModel(uId: user.uId, email:user.email);
  }
}