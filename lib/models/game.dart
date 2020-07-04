import 'dart:convert';

class Game {
  final int id;
  final String title;
  final String thumb;
  final String splash;
  final String description;
  final double originalPrice;
  final double discountedPrice;
  Game({
    this.id,
    this.title,
    this.thumb,
    this.splash,
    this.description,
    this.originalPrice,
    this.discountedPrice,
  });

  Game copyWith({
    int id,
    String title,
    String thumb,
    String splash,
    String description,
    double originalPrice,
    double discountedPrice,
  }) {
    return Game(
      id: id ?? this.id,
      title: title ?? this.title,
      thumb: thumb ?? this.thumb,
      splash: splash ?? this.splash,
      description: description ?? this.description,
      originalPrice: originalPrice ?? this.originalPrice,
      discountedPrice: discountedPrice ?? this.discountedPrice,
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
    };
  }

  // ignore: prefer_constructors_over_static_methods
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
    );
  }

  String toJson() => json.encode(toMap());

  static Game fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Game(id: $id, title: $title, thumb: $thumb, splash: $splash, description: $description, originalPrice: $originalPrice, discountedPrice: $discountedPrice)';
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
        o.discountedPrice == discountedPrice;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        thumb.hashCode ^
        splash.hashCode ^
        description.hashCode ^
        originalPrice.hashCode ^
        discountedPrice.hashCode;
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
      splash: "https://wallpapercave.com/wp/wp4661365.jpg",
      thumb:
          "https://oimparcial.com.br/app/uploads/2019/12/Resident-Evil-2-Remake-696x392-1.jpg"),
  Game(
      id: 2,
      title: "Persona 5",
      description:
          "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
      originalPrice: 200.0,
      discountedPrice: 80.0,
      splash: "https://images2.alphacoders.com/106/thumb-1920-1066635.png",
      thumb:
          "https://s2.glbimg.com/hqXTORVC-9lEJmRs3pMZeuJmkRg=/0x0:695x390/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2019/4/O/2xxTYZQvGEv2hSNv1nMw/persona-5-the-royal-joker.jpg"),
  Game(
      id: 2,
      title: "Nier Automata",
      description:
          "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
      originalPrice: 300.0,
      discountedPrice: 299.0,
      splash:
          "https://catwithmonocle.com/wp-content/uploads/2020/01/nier-automata-cover-art-yorha-edition-1440x2560-1.jpg",
      thumb:
          "https://uploads.jovemnerd.com.br/wp-content/uploads/2017/03/nier-automata-capa-1210x540.jpg"),
];
