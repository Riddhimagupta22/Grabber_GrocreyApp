import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? uimageUrl;
  bool? isAdmin;

  MyUser(
      {this.uid,
      this.name,
      this.email,
      this.phone,
      this.address,
      this.uimageUrl,
      this.isAdmin});

  Map<String, dynamic> toMap() => {
        'uid': uid,
        'name': name,
        'email': email,
        'phone': phone,
        'address': address,
        'uimageUrl': uimageUrl,
        'isAdmin': isAdmin,
      };

  MyUser.fromDocumentSnapshot({required DocumentSnapshot snapshot}) {
    uid = snapshot['uid'];
    name = snapshot['name'];
    email = snapshot['email'];
    uimageUrl = snapshot['uimageUrl'];
    phone = snapshot['phone'];
    address = snapshot['address'];
    isAdmin = snapshot['isAdmin'];
  }
}
