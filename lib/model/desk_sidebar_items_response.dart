// class DeskSidebarItemsResponse {
//   late List<DeskMessage> message;
//
//   DeskSidebarItemsResponse({required this.message});
//
//   DeskSidebarItemsResponse.fromJson(Map<dynamic, dynamic> json) {
//     if (json['message'] != null) {
//       message = [];
//       json['message'].forEach((v) {
//         message.add(new DeskMessage.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['message'] = this.message.map((v) => v.toJson()).toList();
//     return data;
//   }
// }
//
// class DeskMessage {
//   late String name;
//   late String? category;
//   late String? icon;
//   late String module;
//   late String label;
//   late String? content;
//
//   DeskMessage({
//     required this.name,
//     this.category,
//     this.icon,
//     this.content,
//     required this.module,
//     required this.label,
//   });
//
//   DeskMessage.fromJson(Map<dynamic, dynamic> json) {
//     name = json['name'];
//     category = json['category'];
//     icon = json['icon'];
//     module = json['module'];
//     label = json['label'];
//     content = json['content'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['category'] = this.category;
//     data['icon'] = this.icon;
//     data['module'] = this.module;
//     data['label'] = this.label;
//     data['content'] = this.content;
//     return data;
//   }
// }

class DeskSidebarItemsResponse {
  Message? message;

  DeskSidebarItemsResponse({this.message});

  DeskSidebarItemsResponse.fromJson(Map<String, dynamic> json) {
    message =
    json['message'] != null ? new Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    return data;
  }
}

class Message {
  List<DeskMessage>? pages;
  bool? hasAccess;

  Message({this.pages, this.hasAccess});

  Message.fromJson(Map<String, dynamic> json) {
    if (json['pages'] != null) {
      pages = <DeskMessage>[];
      json['pages'].forEach((v) {
        pages!.add(new DeskMessage.fromJson(v));
      });
    }
    hasAccess = json['has_access'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pages != null) {
      data['pages'] = this.pages!.map((v) => v.toJson()).toList();
    }
    data['has_access'] = this.hasAccess;
    return data;
  }
}

class DeskMessage {
  String? name;
  String? title;
  String? forUser;
  String? parentPage;
  String? content;
  int? public;
  String? module;
  String? icon;
  String? label;
  String? category;

  DeskMessage(
      {this.name,
        this.title,
        this.forUser,
        this.parentPage,
        this.content,
        this.public,
        this.module,
        this.icon,
        this.label,
        this.category});

  DeskMessage.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    forUser = json['for_user'];
    parentPage = json['parent_page'];
    content = json['content'];
    public = json['public'];
    module = json['module'];
    icon = json['icon'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['title'] = this.title;
    data['for_user'] = this.forUser;
    data['parent_page'] = this.parentPage;
    data['content'] = this.content;
    data['public'] = this.public;
    data['module'] = this.module;
    data['icon'] = this.icon;
    data['label'] = this.label;
    return data;
  }
}
