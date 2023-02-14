//
// import 'package:e_commerce_ui/models/dod.dart';
// import 'package:e_commerce_ui/models/id.dart';
// import 'package:e_commerce_ui/models/location.dart';
// import 'package:e_commerce_ui/models/loging.dart';
// import 'package:e_commerce_ui/models/name.dart';
// import 'package:e_commerce_ui/models/picture.dart';
// import 'package:e_commerce_ui/models/registered.dart';
// import 'package:json_annotation/json_annotation.dart';
//
//
// @JsonSerializable()
// class User {
//   String gender;
//   Name name;
//   Location location;
//   String email;
//   Login login;
//   Dob dob;
//   Registered registered;
//   String phone;
//   String cell;
//   Id id;
//   Picture picture;
//   String nat;
//
//   User(
//       {required this.gender,
//       required this.name,
//       required this.location,
//       required this.email,
//       required this.login,
//       required this.dob,
//       required this.registered,
//       required this.phone,
//       required this.cell,
//       required this.id,
//       required this.picture,
//       required this.nat});
//
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       gender: json['gender'] as String,
//       name: Name.fromJson(json['name'] as Map<String, dynamic>),
//       location: Location.fromJson(json['location'] as Map<String, dynamic>),
//       email: json['email'] as String,
//       login: Login.fromJson(json['login'] as Map<String, dynamic>),
//       dob: Dob.fromJson(json['dob'] as Map<String, dynamic>),
//       registered: Registered.fromJson(json['registered'] as Map<String, dynamic>),
//       phone: json['phone'] as String,
//       cell: json['cell'] as String,
//       id: Id.fromJson(json['id'] as Map<String, dynamic>),
//       picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
//       nat: json['nat'] as String,
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['gender'] = this.gender;
//     if (this.name != null) {
//       data['name'] = this.name!.toJson();
//     }
//     if (this.location != null) {
//       data['location'] = this.location!.toJson();
//     }
//     data['email'] = this.email;
//     if (this.login != null) {
//       data['login'] = this.login!.toJson();
//     }
//     if (this.dob != null) {
//       data['dob'] = this.dob!.toJson();
//     }
//     if (this.registered != null) {
//       data['registered'] = this.registered!.toJson();
//     }
//     data['phone'] = this.phone;
//     data['cell'] = this.cell;
//     if (this.id != null) {
//       data['id'] = this.id!.toJson();
//     }
//     if (this.picture != null) {
//       data['picture'] = this.picture!.toJson();
//     }
//     data['nat'] = this.nat;
//     return data;
//   }
//
//
//   // User _$UserFromJson(Map<String, dynamic> json) {
//   //   return User(
//   //     gender: json['gender'] as String,
//   //     name: Name.fromJson(json['name'] as Map<String, dynamic>),
//   //     location: Location.fromJson(json['location'] as Map<String, dynamic>),
//   //     email: json['email'] as String,
//   //     login: Login.fromJson(json['login'] as Map<String, dynamic>),
//   //     dob: Dob.fromJson(json['dob'] as Map<String, dynamic>),
//   //     registered: Registered.fromJson(json['registered'] as Map<String, dynamic>),
//   //     phone: json['phone'] as String,
//   //     cell: json['cell'] as String,
//   //     id: Id.fromJson(json['id'] as Map<String, dynamic>),
//   //     picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
//   //     nat: json['nat'] as String,
//   //   );
//   // }
//   //
//   // Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
//   //   'gender': instance.gender,
//   //   'name': instance.name,
//   //   'location': instance.location,
//   //   'email': instance.email,
//   //   'login': instance.login,
//   //   'dob': instance.dob,
//   //   'registered': instance.registered,
//   //   'phone': instance.phone,
//   //   'cell': instance.cell,
//   //   'id': instance.id,
//   //   'picture': instance.picture,
//   //   'nat': instance.nat,
//   // };
//   //
//   // User.fromJson(Map<String, dynamic> json) {
//   //   gender = json['gender'];
//   //   name = (json['name'] != null ? new Name.fromJson(json['name']) : null)!;
//   //   location = (json['location'] != null
//   //       ? new Location.fromJson(json['location'])
//   //       : null)!;
//   //   email = json['email'];
//   //   login = (json['login'] != null ? new Login.fromJson(json['login']) : null)!;
//   //   dob = (json['dob'] != null ? new Dob.fromJson(json['dob']) : null)!;
//   //   registered = (json['registered'] != null
//   //       ? new Dob.fromJson(json['registered'])
//   //       : null) as Registered;
//   //   phone = json['phone'];
//   //   cell = json['cell'];
//   //   id = (json['id'] != null ? new Id.fromJson(json['id']) : null)!;
//   //   picture =
//   //   (json['picture'] != null ? new Picture.fromJson(json['picture']) : null)!;
//   //   nat = json['nat'];
//   // }
//   //
//   // Map<String, dynamic> toJson() {
//   //   final Map<String, dynamic> data = new Map<String, dynamic>();
//   //   data['gender'] = this.gender;
//   //   if (this.name != null) {
//   //     data['name'] = this.name!.toJson();
//   //   }
//   //   if (this.location != null) {
//   //     data['location'] = this.location!.toJson();
//   //   }
//   //   data['email'] = this.email;
//   //   if (this.login != null) {
//   //     data['login'] = this.login!.toJson();
//   //   }
//   //   if (this.dob != null) {
//   //     data['dob'] = this.dob!.toJson();
//   //   }
//   //   if (this.registered != null) {
//   //     data['registered'] = this.registered!.toJson();
//   //   }
//   //   data['phone'] = this.phone;
//   //   data['cell'] = this.cell;
//   //   if (this.id != null) {
//   //     data['id'] = this.id!.toJson();
//   //   }
//   //   if (this.picture != null) {
//   //     data['picture'] = this.picture!.toJson();
//   //   }
//   //   data['nat'] = this.nat;
//   //   return data;
//   // }
//
// }
