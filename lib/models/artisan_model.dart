// To parse this JSON data, do
//

import 'dart:convert';

List<Artisan> artisanFromJson(String str) =>
    List<Artisan>.from(json.decode(str).map((x) => Artisan.fromJson(x)));

// String artisanToJson(List<Artisan> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
// final artisan = artisanFromJson(jsonString);

class Artisan {
  Artisan({
    this.name,
    this.age,
    this.location,
    this.contact,
  });

  String name;
  int age;
  String location;
  int contact;

  factory Artisan.fromJson(Map<String, dynamic> json) => Artisan(
        name: json["name"],
        age: json["age"],
        location: json["location"],
        contact: json["contact"],
      );
}

class ArtisanList {
  List<Artisan> artisanData;
  ArtisanList({this.artisanData});
  factory ArtisanList.fromJson(List<dynamic> parsedJson) {
    List<Artisan> art = <Artisan>[];

    art = parsedJson.map((e) => Artisan.fromJson(e)).toList();

    return ArtisanList(artisanData: art);
  }
}
