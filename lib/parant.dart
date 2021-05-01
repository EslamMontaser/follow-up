import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:followup/teacher.dart';

class Parent extends StatefulWidget {
  @override
  _ParentState createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  List Subject = ['Machine Learning' , 'Database' , 'Network' ,  'parallel' , 'animation'];
  int _Selecteditem = 0 ;
  List<Widget> _widgetOption = <Widget> [
    Text('home'),
    Text('search'),
    Text('Notification'),
    Text('Chat'),
  ];

  void _onItemTap(int index){
    setState(() {
      _Selecteditem = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _Selecteditem,
        onTap: _onItemTap,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        items: const<BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home , ),
            title: Text('Home',style: TextStyle(color: Colors.red)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search , ),
            title: Text('search',style: TextStyle(color: Colors.red)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications , ),
            title: Text('Notification',style: TextStyle(color: Colors.red)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus_rounded , ),
            title: Text('Bus',style: TextStyle(color: Colors.red)),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(left: 16 , right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("assets/pics/sta.png",),
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi Parant",style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.w800 )),
                  Text("Your Son Subject" , style: TextStyle(fontSize: 20.0 ,  )),
                ],
              ),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Subject.length,
                itemBuilder: (context , index){
                  return Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    height: 199,
                    width: 344,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.red,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Text(
                              Subject[index],style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.w800 ,color: Colors.white)
                          ),
                          left: 29,
                          top: 20,
                        ),
                        Positioned(
                          child: Text(
                              'this is subject explane ... ',style: TextStyle(fontSize: 17.0  ,color: Colors.white)
                          ),
                          left: 29,
                          top: 60,
                        ),
                        Positioned(
                          child: Text(
                              'how we can progarming the roboties ',style: TextStyle(fontSize: 17.0  ,color: Colors.white)
                          ),
                          left: 29,
                          top: 90,
                        ),
                        Positioned(
                          child: Text(
                              'DR / Mohamed Ramdan ',style: TextStyle(fontSize: 17.0  ,color: Colors.white)
                          ),
                          left:130,
                          top: 150,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return Teacher();
                        }));
                      },
                      child: Text("Your Son Homework" , style: TextStyle(fontSize: 20.0 ,  ))),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Subject.length,
                itemBuilder: (context , index){
                  return Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    height: 199,
                    width: 344,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.blueGrey,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Text(
                              Subject[index],style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.w800 ,color: Colors.white)
                          ),
                          left: 29,
                          top: 20,
                        ),
                        Positioned(
                          child: Text(
                              'this is subject explane ... ',style: TextStyle(fontSize: 17.0  ,color: Colors.white)
                          ),
                          left: 29,
                          top: 60,
                        ),
                        Positioned(
                          child: Text(
                              'how we can progarming the roboties ',style: TextStyle(fontSize: 17.0  ,color: Colors.white)
                          ),
                          left: 29,
                          top: 90,
                        ),
                        Positioned(
                          child: Text(
                              'DR / Mohamed Ramdan ',style: TextStyle(fontSize: 17.0  ,color: Colors.white)
                          ),
                          left:130,
                          top: 150,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


