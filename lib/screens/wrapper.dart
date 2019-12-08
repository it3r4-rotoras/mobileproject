import 'package:follow/screens/authenticate/authenticate.dart';
import 'package:follow/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:follow/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      final user = Provider.of<User>(context);
      print(user);

      //return home or authenticate Widget
      if (user == null){
         return Authenticate();
      }else{
        return Home();
      }
  }
}