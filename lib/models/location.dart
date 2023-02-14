// import 'dart:html';
//
// import 'package:e_commerce_ui/models/timezone.dart';
//
//
// @JsonSerializable()
// class Location {
//   String street;
//   String city;
//   String state;
//   String postcode;
//   Coordinates coordinates;
//   Timezone timezone;
//
//   Location({
//     required this.street,
//     required this.city,
//     required this.state,
//     required this.postcode,
//     required this.coordinates,
//     required this.timezone,
//   });
//
//   factory Location.fromJson(Map<String, dynamic> json) {
//     return Location(
//       street: json['street'] as String,
//       city: json['city'] as String,
//       state: json['state'] as String,
//       postcode: json['postcode'] as String,
//       coordinates:
//       Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
//       timezone: Timezone.fromJson(json['timezone'] as Map<String, dynamic>),
//     );
//   }
//
//   Map<String, dynamic> toJson(Location instance) {
//     <String, dynamic>{
//       'street': instance.street,
//       'city': instance.city,
//       'state': instance.state,
//       'postcode': instance.postcode,
//       'coordinates': instance.coordinates,
//       'timezone': instance.timezone,
//     };
//   }
//
//
//   // Location _$LocationFromJson(Map<String, dynamic> json) {
//   //   return Location(
//   //     street: json['street'] as String,
//   //     city: json['city'] as String,
//   //     state: json['state'] as String,
//   //     postcode: json['postcode'] as String,
//   //     coordinates:
//   //     Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
//   //     timezone: Timezone.fromJson(json['timezone'] as Map<String, dynamic>),
//   //   );
//   // }
//
//   // Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
//   //   'street': instance.street,
//   //   'city': instance.city,
//   //   'state': instance.state,
//   //   'postcode': instance.postcode,
//   //   'coordinates': instance.coordinates,
//   //   'timezone': instance.timezone,
//   // };
// }
