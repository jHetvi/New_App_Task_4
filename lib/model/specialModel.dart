class SpecialModel {
  int status;
  String message;
  List<Data> data;

  SpecialModel({this.status, this.message, this.data});

  SpecialModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
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
  String profilePic;
  int isfav;
  int favorites;
  List<EventCategory> eventCategory;
  List<String> images;
  String categoryImage;

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
      this.profilePic,
      this.isfav,
      this.favorites,
      this.eventCategory,
      this.images,
      this.categoryImage});

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
    profilePic = json['profile_pic'];
    isfav = json['isfav'];
    favorites = json['favorites'];
    if (json['event_category'] != null) {
      eventCategory = new List<EventCategory>();
      json['event_category'].forEach((v) {
        eventCategory.add(new EventCategory.fromJson(v));
      });
    }
    images = json['images'].cast<String>();
    categoryImage = json['category_image'];
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
    data['profile_pic'] = this.profilePic;
    data['isfav'] = this.isfav;
    data['favorites'] = this.favorites;
    if (this.eventCategory != null) {
      data['event_category'] =
          this.eventCategory.map((v) => v.toJson()).toList();
    }
    data['images'] = this.images;
    data['category_image'] = this.categoryImage;
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