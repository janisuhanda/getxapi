class GetUsersList {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<DataGetUsersList>? data;
  Support? support;

  GetUsersList(
      {this.page,
      this.perPage,
      this.total,
      this.totalPages,
      this.data,
      this.support});

  GetUsersList.fromJson(Map<String, dynamic> json) {
    this.page = json["page"];
    this.perPage = json["per_page"];
    this.total = json["total"];
    this.totalPages = json["total_pages"];
    this.data = json["data"] == null
        ? null
        : (json["data"] as List)
            .map((e) => DataGetUsersList.fromJson(e))
            .toList();
    this.support =
        json["support"] == null ? null : Support.fromJson(json["support"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["page"] = this.page;
    data["per_page"] = this.perPage;
    data["total"] = this.total;
    data["total_pages"] = this.totalPages;
    if (this.data != null)
      data["data"] = this.data!.map((e) => e.toJson()).toList();
    if (this.support != null) data["support"] = this.support!.toJson();
    return data;
  }
}

class Support {
  String? url;
  String? text;

  Support({this.url, this.text});

  Support.fromJson(Map<String, dynamic> json) {
    this.url = json["url"];
    this.text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["url"] = this.url;
    data["text"] = this.text;
    return data;
  }
}

class DataGetUsersList {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  DataGetUsersList(
      {this.id, this.email, this.firstName, this.lastName, this.avatar});

  DataGetUsersList.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.email = json["email"];
    this.firstName = json["first_name"];
    this.lastName = json["last_name"];
    this.avatar = json["avatar"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["email"] = this.email;
    data["first_name"] = this.firstName;
    data["last_name"] = this.lastName;
    data["avatar"] = this.avatar;
    return data;
  }
}
