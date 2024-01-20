class Housechurch {
  String collectionName = "house churches";
  final String name;
  final String leaders;
  final String location;
  final String number;

  Housechurch({
    required this.name,
    required this.leaders,
    required this.location,
    required this.number,
  });

  factory Housechurch.fromJson(Map<String, dynamic> json) {
    return Housechurch(
      name: json['name'].toString(),
      leaders: json['leaders'].toString(),
      location: json['location'].toString(),
      number: json['number'].toString(),
    );
  }
}
