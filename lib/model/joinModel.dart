class JoinModel {
  int status;
  String message;
  Data data;

  JoinModel({this.status, this.message, this.data});

  JoinModel.fromJson(Map<String, dynamic> json) {
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
  int id;
  String title;
  String description;
  String website;
  String location;
  Null time;
  Null price;
  String date;
  int userId;
  String type;
  Null categoryId;
  Null createdAt;
  Null updatedAt;
  String lat;
  String lang;
  Null votes;
  Null startTime;
  Null endTime;
  String name;
  Null profilePic;
  int favorites;
  int join;
  int isfav;
  List<EventImages> eventImages;
  List<EventUsers> eventUsers;
  List<EventCategory> eventCategory;

  Data(
      {this.id,
      this.title,
      this.description,
      this.website,
      this.location,
      this.time,
      this.price,
      this.date,
      this.userId,
      this.type,
      this.categoryId,
      this.createdAt,
      this.updatedAt,
      this.lat,
      this.lang,
      this.votes,
      this.startTime,
      this.endTime,
      this.name,
      this.profilePic,
      this.favorites,
      this.join,
      this.isfav,
      this.eventImages,
      this.eventUsers,
      this.eventCategory});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    website = json['website'];
    location = json['location'];
    time = json['time'];
    price = json['price'];
    date = json['date'];
    userId = json['user_id'];
    type = json['type'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    lat = json['lat'];
    lang = json['lang'];
    votes = json['votes'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    name = json['name'];
    profilePic = json['profile_pic'];
    favorites = json['favorites'];
    join = json['join'];
    isfav = json['isfav'];
    if (json['event_images'] != null) {
      eventImages = new List<EventImages>();
      json['event_images'].forEach((v) {
        eventImages.add(new EventImages.fromJson(v));
      });
    }
    if (json['event_users'] != null) {
      eventUsers = new List<EventUsers>();
      json['event_users'].forEach((v) {
        eventUsers.add(new EventUsers.fromJson(v));
      });
    }
    if (json['event_category'] != null) {
      eventCategory = new List<EventCategory>();
      json['event_category'].forEach((v) {
        eventCategory.add(new EventCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['website'] = this.website;
    data['location'] = this.location;
    data['time'] = this.time;
    data['price'] = this.price;
    data['date'] = this.date;
    data['user_id'] = this.userId;
    data['type'] = this.type;
    data['category_id'] = this.categoryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['lat'] = this.lat;
    data['lang'] = this.lang;
    data['votes'] = this.votes;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['name'] = this.name;
    data['profile_pic'] = this.profilePic;
    data['favorites'] = this.favorites;
    data['join'] = this.join;
    data['isfav'] = this.isfav;
    if (this.eventImages != null) {
      data['event_images'] = this.eventImages.map((v) => v.toJson()).toList();
    }
    if (this.eventUsers != null) {
      data['event_users'] = this.eventUsers.map((v) => v.toJson()).toList();
    }
    if (this.eventCategory != null) {
      data['event_category'] =
          this.eventCategory.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EventImages {
  String images;
  int id;

  EventImages({this.images, this.id});

  EventImages.fromJson(Map<String, dynamic> json) {
    images = json['images'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['images'] = this.images;
    data['id'] = this.id;
    return data;
  }
}

class EventUsers {
  int id;
  String name;
  String email;
  Null emailVerifiedAt;
  String password;
  String phoneNo;
  Null profilePic;
  String status;
  String deviceToken;
  String deviceId;
  String deviceType;
  String lat;
  String lang;
  Null coverPic;
  Null location;
  Null description;
  Null fbId;
  String googleId;
  Null instaId;
  Null googleLink;
  Null fbLink;
  Null instaLink;
  Null rememberToken;
  String createdAt;
  String updatedAt;
  int votes;

  EventUsers(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.password,
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
      this.rememberToken,
      this.createdAt,
      this.updatedAt,
      this.votes});

  EventUsers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    password = json['password'];
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
    rememberToken = json['remember_token'];
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
    data['password'] = this.password;
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
    data['remember_token'] = this.rememberToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['votes'] = this.votes;
    return data;
  }
}

class EventCategory {
  int eventId;
  int id;
  String name;
  Null createdAt;
  Null updatedAt;
  Null icon;

  EventCategory(
      {this.eventId,
      this.id,
      this.name,
      this.createdAt,
      this.updatedAt,
      this.icon});

  EventCategory.fromJson(Map<String, dynamic> json) {
    eventId = json['event_id'];
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['event_id'] = this.eventId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['icon'] = this.icon;
    return data;
  }
}