class User{
  String? email;
  String? number;
  String? address;
  User({this.email,this.number,this.address});

  User.fromJson(Map<String,dynamic>json)
  : email = json['email'],
  number = json['number'],
  address = json['address'];
  Map <String,dynamic> toJson() => {
    'email' : email,
    'number' : number,
    'address' : address,
  };
}
