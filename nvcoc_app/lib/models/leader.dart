class Leader {
  String collectionName = "leaders";
  final String leaderName;
  final String role;
  final String image;

  Leader({
    required this.leaderName,
    required this.role,
    required this.image,
  });

  factory Leader.fromJson(Map<String, dynamic> json) {
    return Leader(
      leaderName: json['leaderName'].toString(),
      role: json['role'].toString(),
      image: json['image'].toString(),
    );
  }
}
