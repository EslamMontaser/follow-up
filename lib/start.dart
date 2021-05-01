
import 'package:flutter/material.dart';
import 'package:followup/login.dart';


class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 120),
              child: Column(
                children: [
                  Text(
                    "Educational and Behavioral Advising System (EBAS)",
                    style: TextStyle(fontSize:27 , color: Colors.red , fontWeight: FontWeight.bold , ),textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,right:  28,top: 18),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "To Facilitate The process For The Guardian To Follow Up On His Son Through the Application",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                  child: Image.asset("assets/pics/sta.png"),
                )),
            Container(

                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return Login();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.all(32),
                    padding: EdgeInsets.all(20),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xff1A237E),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 18 , color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
