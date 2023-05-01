class Message {
  int ID;
  String Email;
  String Pass;
  String ID_card;
  String Fname;
  String Lname;
  String Address;
  String Profile;

  Message(
      {required this.ID,
      required this.Email,
      required this.Pass,
      required this.ID_card,
      required this.Fname,
      required this.Lname,
      required this.Address,
      required this.Profile});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      ID: json["ID"] ?? 0,
      Email: json["Email"] ?? "",
      Pass: json["Pass"] ?? "",
      ID_card: json["ID_card"] ?? "",
      Fname: json["Fname"] ?? "",
      Lname: json["Lname"] ?? "",
      Address: json["Address"] ?? "",
      Profile: json["Profile"] ?? "",
    );
  }
}
