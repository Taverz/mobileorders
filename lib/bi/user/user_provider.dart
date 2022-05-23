


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserProvider extends ChangeNotifier{

  FirebaseAuth? auth;
  User?  user;

  UserProvider(FirebaseAuth auth){
    this.auth = auth;
    user = auth.currentUser!;
  }

  String? _name;
  // String? _lastname;
  String? _email;
  // String? _dateUser;
  String? _passwords;

  String get name  => _name ?? user!.displayName ?? "No name";
  String get email  => _email ?? user!.email ?? "No email";
  // String get lastname  => _lastname ?? "No lastname";
  // String get dataUser  => _dateUser ?? "No data"; 

  // DateTime get dataTimeUser  =>  DateFormat('yyyy-MM-dd HH:mm:ss').parse(_dateUser!);

  // DateFormat.yMMMMd('ru')
  // .format(_dateUser??""); 




  setUserData({required String name,required String email, 
  // lastname, date,
   required VoidCallback auth}){
    this._name = name;
    this._email = email;
    // this._lastname = lastname;
    // this._dateUser = DateFormat('yyyy-MM-dd').format(date) + " 00:00:00Z";
    // this._dateUser = date;
  }

  getUserData(){

  }


}