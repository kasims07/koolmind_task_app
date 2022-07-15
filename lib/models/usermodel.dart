/// data : {"id":"061da5b0-37f1-4356-b6a8-266b7db245e8","referral_id":"PJBOTFSX","referred_id":null,"first_name":"Mihir","last_name":"Dudhia","email":"mihirdudhia@gmail.com","phone":"1234568790","avatar":null,"active":true,"provider":"email","device":"ios","language":"english","otp":null,"timezone":"UTC","status":"active","created_at":"2022-07-07T07:48:57.000000Z","updated_at":"2022-07-07T07:48:57.000000Z","deleted_at":null,"role":"User","is_verified":false,"name":"Mihir Dudhia"}
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9rb29sbWluZGFwcHMuY29tXC9raG9tZXNcL2FwaVwvdjFcL2F1dGhcL2xvZ2luIiwiaWF0IjoxNjU3ODc3Mzg3LCJuYmYiOjE2NTc4NzczODcsImp0aSI6Ik9lWVNpbUdEZkg4WEJzdkkiLCJzdWIiOiIwNjFkYTViMC0zN2YxLTQzNTYtYjZhOC0yNjZiN2RiMjQ1ZTgiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.oesnGtJyY7ooHj3o1LD7URFgg6O8cfoyVr22dYqONt8"
/// token_type : "bearer"
/// status_code : 200

class Usermodel {
  Usermodel({
      Data? data, 
      String? accessToken, 
      String? tokenType, 
      int? statusCode,}){
    _data = data;
    _accessToken = accessToken;
    _tokenType = tokenType;
    _statusCode = statusCode;
}

  Usermodel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _accessToken = json['access_token'];
    _tokenType = json['token_type'];
    _statusCode = json['status_code'];
  }
  Data? _data;
  String? _accessToken;
  String? _tokenType;
  int? _statusCode;
Usermodel copyWith({  Data? data,
  String? accessToken,
  String? tokenType,
  int? statusCode,
}) => Usermodel(  data: data ?? _data,
  accessToken: accessToken ?? _accessToken,
  tokenType: tokenType ?? _tokenType,
  statusCode: statusCode ?? _statusCode,
);
  Data? get data => _data;
  String? get accessToken => _accessToken;
  String? get tokenType => _tokenType;
  int? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['access_token'] = _accessToken;
    map['token_type'] = _tokenType;
    map['status_code'] = _statusCode;
    return map;
  }

}

/// id : "061da5b0-37f1-4356-b6a8-266b7db245e8"
/// referral_id : "PJBOTFSX"
/// referred_id : null
/// first_name : "Mihir"
/// last_name : "Dudhia"
/// email : "mihirdudhia@gmail.com"
/// phone : "1234568790"
/// avatar : null
/// active : true
/// provider : "email"
/// device : "ios"
/// language : "english"
/// otp : null
/// timezone : "UTC"
/// status : "active"
/// created_at : "2022-07-07T07:48:57.000000Z"
/// updated_at : "2022-07-07T07:48:57.000000Z"
/// deleted_at : null
/// role : "User"
/// is_verified : false
/// name : "Mihir Dudhia"

class Data {
  Data({
      String? id, 
      String? referralId, 
      dynamic referredId, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? phone, 
      dynamic avatar, 
      bool? active, 
      String? provider, 
      String? device, 
      String? language, 
      dynamic otp, 
      String? timezone, 
      String? status, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? role, 
      bool? isVerified, 
      String? name,}){
    _id = id;
    _referralId = referralId;
    _referredId = referredId;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _phone = phone;
    _avatar = avatar;
    _active = active;
    _provider = provider;
    _device = device;
    _language = language;
    _otp = otp;
    _timezone = timezone;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _role = role;
    _isVerified = isVerified;
    _name = name;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _referralId = json['referral_id'];
    _referredId = json['referred_id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _phone = json['phone'];
    _avatar = json['avatar'];
    _active = json['active'];
    _provider = json['provider'];
    _device = json['device'];
    _language = json['language'];
    _otp = json['otp'];
    _timezone = json['timezone'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _role = json['role'];
    _isVerified = json['is_verified'];
    _name = json['name'];
  }
  String? _id;
  String? _referralId;
  dynamic _referredId;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;
  dynamic _avatar;
  bool? _active;
  String? _provider;
  String? _device;
  String? _language;
  dynamic _otp;
  String? _timezone;
  String? _status;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _role;
  bool? _isVerified;
  String? _name;
Data copyWith({  String? id,
  String? referralId,
  dynamic referredId,
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  dynamic avatar,
  bool? active,
  String? provider,
  String? device,
  String? language,
  dynamic otp,
  String? timezone,
  String? status,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  String? role,
  bool? isVerified,
  String? name,
}) => Data(  id: id ?? _id,
  referralId: referralId ?? _referralId,
  referredId: referredId ?? _referredId,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  email: email ?? _email,
  phone: phone ?? _phone,
  avatar: avatar ?? _avatar,
  active: active ?? _active,
  provider: provider ?? _provider,
  device: device ?? _device,
  language: language ?? _language,
  otp: otp ?? _otp,
  timezone: timezone ?? _timezone,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  role: role ?? _role,
  isVerified: isVerified ?? _isVerified,
  name: name ?? _name,
);
  String? get id => _id;
  String? get referralId => _referralId;
  dynamic get referredId => _referredId;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get phone => _phone;
  dynamic get avatar => _avatar;
  bool? get active => _active;
  String? get provider => _provider;
  String? get device => _device;
  String? get language => _language;
  dynamic get otp => _otp;
  String? get timezone => _timezone;
  String? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get role => _role;
  bool? get isVerified => _isVerified;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['referral_id'] = _referralId;
    map['referred_id'] = _referredId;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['avatar'] = _avatar;
    map['active'] = _active;
    map['provider'] = _provider;
    map['device'] = _device;
    map['language'] = _language;
    map['otp'] = _otp;
    map['timezone'] = _timezone;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['role'] = _role;
    map['is_verified'] = _isVerified;
    map['name'] = _name;
    return map;
  }

}