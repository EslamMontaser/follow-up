
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:followup/authentication.dart';
import 'package:followup/signup.dart';
import 'package:followup/studentpage.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red[800],
                Colors.red[600],
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36.0 ,horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize:40.0 , color: Colors.white ,fontWeight: FontWeight.w800 ),
                    ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Please Login or Sign Up Our App",
                    style: TextStyle(fontSize: 17.0 , color: Colors.white ,fontWeight: FontWeight.w300 ),
                  ),
                ],
              ),
                  ),
              ),
              Expanded(flex: 5,
                  child: AnimatedContainer(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: Duration(
                      milliseconds:1000
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextField(

                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none
                              ),
                              filled: true ,
                              fillColor: Color(0xffe7edeb),
                              hintText: "E-mail",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none
                              ),
                              filled: true ,
                              fillColor: Color(0xffe7edeb),
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forget Your Password ?",
                                style: TextStyle(fontSize:16.0 , color: Colors.red , decoration: TextDecoration.underline ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: RaisedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                return Student();
                              }));
                            } ,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
                              color: Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 24.0 , ),
                              child: Text("Login",style: TextStyle(fontSize: 20.0 , color: Colors.white , ),),
                            ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't Have an Account ? ",
                                style: TextStyle(fontSize:16.0 , color: Colors.black45 , ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                    return SignUp();
                                  }));
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(fontSize:16.0 , color: Colors.red , ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}











