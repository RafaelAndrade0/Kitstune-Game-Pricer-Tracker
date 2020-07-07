import 'dart:convert';

import 'package:flutter/foundation.dart';

class Game {
  final int id;
  final String title;
  final String thumb;
  final String splash;
  final String description;
  final double originalPrice;
  final double discountedPrice;
  final List<String> previewImage;
  Game({
    this.id,
    this.title,
    this.thumb,
    this.splash,
    this.description,
    this.originalPrice,
    this.discountedPrice,
    this.previewImage,
  });

  Game copyWith({
    int id,
    String title,
    String thumb,
    String splash,
    String description,
    double originalPrice,
    double discountedPrice,
    List<String> previewImage,
  }) {
    return Game(
      id: id ?? this.id,
      title: title ?? this.title,
      thumb: thumb ?? this.thumb,
      splash: splash ?? this.splash,
      description: description ?? this.description,
      originalPrice: originalPrice ?? this.originalPrice,
      discountedPrice: discountedPrice ?? this.discountedPrice,
      previewImage: previewImage ?? this.previewImage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'thumb': thumb,
      'splash': splash,
      'description': description,
      'originalPrice': originalPrice,
      'discountedPrice': discountedPrice,
      'previewImage': previewImage,
    };
  }

  static Game fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Game(
      id: map['id'],
      title: map['title'],
      thumb: map['thumb'],
      splash: map['splash'],
      description: map['description'],
      originalPrice: map['originalPrice'],
      discountedPrice: map['discountedPrice'],
      previewImage: List<String>.from(map['previewImage']),
    );
  }

  String toJson() => json.encode(toMap());

  static Game fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Game(id: $id, title: $title, thumb: $thumb, splash: $splash, description: $description, originalPrice: $originalPrice, discountedPrice: $discountedPrice, previewImage: $previewImage)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Game &&
        o.id == id &&
        o.title == title &&
        o.thumb == thumb &&
        o.splash == splash &&
        o.description == description &&
        o.originalPrice == originalPrice &&
        o.discountedPrice == discountedPrice &&
        listEquals(o.previewImage, previewImage);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        thumb.hashCode ^
        splash.hashCode ^
        description.hashCode ^
        originalPrice.hashCode ^
        discountedPrice.hashCode ^
        previewImage.hashCode;
  }
}

List<Game> gameList = [
  Game(
    id: 1,
    title: "Resident Evil 2",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem IpsumLorem IpsumLorem",
    originalPrice: 150.0,
    discountedPrice: 99.0,
    splash: "assets/images/splash1.jpg",
    thumb: "assets/images/card1.jpg",
    previewImage: [
      "assets/images/re2_1.jpg",
      "assets/images/re2_2.jpg",
      "assets/images/re2_3.jpg",
      "assets/images/re2_4.jpg",
    ],
  ),
  Game(
    id: 2,
    title: "Persona 5",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
    originalPrice: 200.0,
    discountedPrice: 80.0,
    splash: "assets/images/splash2.jpg",
    thumb: "assets/images/card2.jpg",
    previewImage: [
      "assets/images/p5_1.jpg",
      "assets/images/p5_2.jpeg",
      "assets/images/p5_3.jpg",
      "assets/images/p5_4.jpg",
    ],
  ),
  Game(
    id: 2,
    title: "Nier Automata",
    description:
        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
    originalPrice: 300.0,
    discountedPrice: 299.0,
    splash: "assets/images/splash3.jpg",
    thumb: "assets/images/card3.jpg",
    previewImage: [
      "assets/images/na_1.jpg",
      "assets/images/na_2.jpg",
      "assets/images/na_3.jpg",
      "assets/images/na_4.jpg",
    ],
  ),
];
