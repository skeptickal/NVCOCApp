class WorshipDetails {
  String collectionName = "worship info";
  final String meetingPlace;
  final String meetingTime;
  final String unsure;
  final String whatAboutKids;
  final String whatAboutMe;
  final String whatToExpect;

  WorshipDetails({
    required this.meetingPlace,
    required this.meetingTime,
    required this.unsure,
    required this.whatAboutKids,
    required this.whatAboutMe,
    required this.whatToExpect,
  });

  factory WorshipDetails.fromJson(Map<String, dynamic> json) {
    return WorshipDetails(
      meetingPlace: json['meeting place'].toString(),
      meetingTime: json['meeting time'].toString(),
      unsure: json['unsure'].toString(),
      whatAboutKids: json['what about kids'].toString(),
      whatAboutMe: json['what about me'].toString(),
      whatToExpect: json['what to expect'].toString(),
    );
  }
}
