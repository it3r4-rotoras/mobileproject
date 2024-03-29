import 'package:flutter/material.dart';
import 'package:follow/services/auth.dart';
import 'package:follow/shared/constants.dart';
import 'package:follow/shared/loading.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text field state

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
  return loading ? Loading() : Scaffold(
      backgroundColor:Colors.brown[100],
      appBar: AppBar(
        backgroundColor:Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign up to Follow'),
            actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign in'),
            onPressed: (){
               widget.toggleView();
            }
          )
        ],
    ),
    body: Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: 'Email'),
              validator: (val) => val.isEmpty ? 'Enter an Email' : null,
              onChanged: (val) {
                setState(() => email = val);
              }
              ),
            SizedBox(height: 20.0),
             TextFormField(
              decoration: textInputDecoration.copyWith(hintText: 'Password'),
              validator: (val) => val.length < 6 ? 'Enter a password greater than 6 character': null,
              onChanged: (val) {
                setState(() => password = val);
              }
              ),
            SizedBox(height: 20.0),
            RaisedButton(
              color: Colors.pink[400],
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white)
            ),
            onPressed: () async{
              if (_formKey.currentState.validate()) {
                setState(() => loading = true);
                dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                if (result == null){
                  setState(() => error = 'please enter a valid email');
                  loading = false;
                }
              }
            }
            ),
            SizedBox(height: 12.0),
            Text(
              error,
              style: TextStyle(color: Colors.red, fontSize: 14.0),
            ),
          ],
        ),
      ),
      ),
    );
  }
}