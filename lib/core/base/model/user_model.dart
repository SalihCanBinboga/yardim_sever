class UserModel {
  String _userName;
  String _userEmail;
  String _userPassword;

  UserModel(this._userName, this._userEmail, this._userPassword);

  UserModel.forLogin(this._userEmail, this._userPassword);

  UserModel.fromMap(Map<String, dynamic> map) {
    userName = map['userEmail'];
    userEmail = map['userEmail'];
    userPassword = map['userPassword'];
  }

  Map<String, dynamic> toMap() {
    return {'userName': userName, 'userEmail': userEmail, 'userPassword': userPassword};
  }

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }

  String get userEmail => _userEmail;

  set userEmail(String value) {
    _userEmail = value;
  }

  String get userPassword => _userPassword;

  set userPassword(String value) {
    _userPassword = value;
  }

  @override
  String toString() {
    return 'UserModel{userName: $userName, userEmail: $userEmail, userPassword: $userPassword}';
  }
}
