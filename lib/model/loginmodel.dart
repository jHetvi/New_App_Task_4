class LoginModel {
  int status;
  String message;
  Data data;

  LoginModel({this.status, this.message, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String token;
  User user;

  Data({this.token, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int id;
  String name;
  String email;
  Null emailVerifiedAt;
  String phoneNo;
  Null profilePic;
  String status;
  Null deviceToken;
  String deviceId;
  String deviceType;
  String lat;
  String lang;
  Null coverPic;
  Null location;
  Null description;
  Null fbId;
  Null googleId;
  Null instaId;
  Null googleLink;
  Null fbLink;
  Null instaLink;
  String createdAt;
  String updatedAt;
  int votes;

  User(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.phoneNo,
      this.profilePic,
      this.status,
      this.deviceToken,
      this.deviceId,
      this.deviceType,
      this.lat,
      this.lang,
      this.coverPic,
      this.location,
      this.description,
      this.fbId,
      this.googleId,
      this.instaId,
      this.googleLink,
      this.fbLink,
      this.instaLink,
      this.createdAt,
      this.updatedAt,
      this.votes});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    phoneNo = json['phone_no'];
    profilePic = json['profile_pic'];
    status = json['status'];
    deviceToken = json['device_token'];
    deviceId = json['device_id'];
    deviceType = json['device_type'];
    lat = json['lat'];
    lang = json['lang'];
    coverPic = json['cover_pic'];
    location = json['location'];
    description = json['description'];
    fbId = json['fb_id'];
    googleId = json['google_id'];
    instaId = json['insta_id'];
    googleLink = json['google_link'];
    fbLink = json['fb_link'];
    instaLink = json['insta_link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    votes = json['votes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['phone_no'] = this.phoneNo;
    data['profile_pic'] = this.profilePic;
    data['status'] = this.status;
    data['device_token'] = this.deviceToken;
    data['device_id'] = this.deviceId;
    data['device_type'] = this.deviceType;
    data['lat'] = this.lat;
    data['lang'] = this.lang;
    data['cover_pic'] = this.coverPic;
    data['location'] = this.location;
    data['description'] = this.description;
    data['fb_id'] = this.fbId;
    data['google_id'] = this.googleId;
    data['insta_id'] = this.instaId;
    data['google_link'] = this.googleLink;
    data['fb_link'] = this.fbLink;
    data['insta_link'] = this.instaLink;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['votes'] = this.votes;
    return data;
  }
}
