import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:followup/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String chooseValue;
  List listItem = ['student', 'parent', 'teacher'];
  String _email='' , _password ='';
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
                  child: Container(
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
                            onChanged: (value)=>_email = value,
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
                            onChanged: (value)=>_password = value,
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
                              hintText: "Phone",
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            //padding: const EdgeInsets.all(16.0),
                              padding: const EdgeInsets.only(left: 1 ,right: 1),
                            child: Container(
                              padding: EdgeInsets.only(left: 16 , right: 16),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: DropdownButton(

                                dropdownColor: Colors.grey[300],
                                iconSize: 30,
                                isExpanded: true,
                                hint: Text('your state'),
                                icon: Icon(Icons.arrow_drop_down),
                                value: chooseValue,
                                onChanged: (newValue){
                                  setState(() {
                                    chooseValue = newValue;
                                  });
                                },
                                items: listItem.map((valueItem){
                                  return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem)
                                  );
                                }).toList(),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: RaisedButton(onPressed: (){

                            } ,
                              color: Colors.red,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical:24.0 , ),
                                child: Text("Sign Up",style: TextStyle(fontSize: 20.0 , color: Colors.white , ),),
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
                                "Already Have an Account ? ",
                                style: TextStyle(fontSize:16.0 , color: Colors.black45 , ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                    return Login();
                                  }));
                                },
                                child: Text(
                                  "Login",
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










// return Stack(
// children: [
// Container(
// color: Colors.white,
// child: Column(
// children: [
// Padding(padding: EdgeInsets.only(top: 70)),
// Text("Welcome" , textAlign: TextAlign.start,  style: TextStyle(fontSize: 25 , color: Colors.red), ),
// Padding(padding: EdgeInsets.only(top: 10)),
// Text("Please Login or Sign Up Our App                        " ,  style: TextStyle(fontSize: 16 , color: Colors.red)),
// ],
// ),
// ),
// Container(
// transform: Matrix4.translationValues(0, 270, 1),
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(20),
// topRight: Radius.circular(20),
// )
// ),
//
// )
//
// ],
// );
