class Comment {
  String collectionName = "comments";
  String? firstName;
  String? lastName;
  String? email;
  String? comment;
  String? join;
  String? iAm;
  String? country;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? zip;
  String? phone;
  String? email1;

  Comment(
    this.collectionName, 
    this.firstName,
    this.lastName,
    this.email,
    this.comment,
    this.join,
    this.iAm,
    this.country,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.zip,
    this.phone,
    this.email1,
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'a. First Name': firstName,
      'b. Last Name': lastName,
      'c. Email': email,
      'd. Comment': comment,
      'e. I would like to': join,
      'f. I am': iAm,
      'g. Country': country,
      'h. Address Line 1': address1,
      'i. Address Line 2': address2,
      'j. City': city,
      'k. State': state,
      'l. ZIP': zip,
      'm. Phone Number': phone,
      'n. Email Address (if changed)': email1
    };
    return data;
  }
}
