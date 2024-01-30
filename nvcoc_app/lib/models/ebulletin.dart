class Ebulletin {
  String collectionName = "ebulletins";
  final String link;

  Ebulletin({required this.link});

  factory Ebulletin.fromJson(Map<String, dynamic> json) {
    return Ebulletin(
      link: json['link'].toString(),
    );
  }
}
