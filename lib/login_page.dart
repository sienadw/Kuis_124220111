import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({Key? key}) : super(key: key);

  @override 
  LoginPageState createState() => LoginPageState();
}

  class LoginPageState extends State<LoginPage>{
    String username = '';
    String password = '';
    bool isLoginSuccess = true;
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
          children: [
            usernameField(),
            passwordField(),
            loginButton(context)

            _navigate.page()async{
              Navigator.push(
                context, MaterialPageRoute(builder: (context){
                  return Homepage (username: username);
                })
              )
            }
          ],
        ),
      ),
    );

    // ignore: dead_code
    Widget usernameField(){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          onChanged: (value) {
            username = value;
          },
          enabled: true,
          decoration: InputDecoration(
            labelText: 'Username',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)
            )
          ),
        ),
        );
    }

  }

  Widget passwordField(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          onChanged: (value) {
            password = value;
          },
          enabled: true,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)
            )
          ),
        ),
        );
  }

  Widget loginButton(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(onPressed: (){
        String Text = '';
        if(username == 'admin' && password == 'admin'){
          _navigate.page();
        }
        else{}
      }
      child: Text('Login'),),
    )
  }
