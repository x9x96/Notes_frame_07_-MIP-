// Copyright (c) 2021, the Frame(s) project author.
// All rights reserved. Use of this source code is governed by X-Softwares.
// Frame(s) Apps
// Note:
//      This is not a proprietary application, but a mini framework for staffs to easily pick-up code bits and build projects
//      It's built simply for pupils learning and educational consumption...
// Copyright @  X-Softwares
// Built by Israel Oyetunji, Staff ID: 000
//

//                                             Notice To Developers...
//This is a simple, DEBUGGED, non-optimized App, which posses no proper documentation,build and signings...
//The essence of the excessive simplicity of this source code is to enable armature/beginner developers to easily make alterations and pick-up code bits
//The code base contains all the code and non-code files (i.e files such as the subject, which is supposed to be in separate files
//< But due to issues experienced with package:audioplayers/audio_cache.dart and package:audioplayers/audioplayers.dart>
//< As well as package:videoplayers/videoplayers.dart>
//The source code had to be amended and all the subjects is now encapsulated under the class "_BodyLayoutState" )...
//This is because this is a non-proprietary app, and it's to enable  armature developers to make edits without hidden code bases)
//Making alterations has been simplified into the _HomePageState, _BodyLayoutState, MAIN DART and MyApp class...

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frame_07/Pri_5.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'package:frame_07/Body_Layout_State.dart';
import 'package:frame_07/Recom1_repo.dart';
import 'package:frame_07/Contents_On_HomeScreen.dart';
//_______________________________________________________________________________________________
void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Great Nissi Academy International School';

  @override
  Widget build(BuildContext context) {return MaterialApp(theme: ThemeData(highlightColor: Colors.purpleAccent[100]),
      debugShowCheckedModeBanner: false, title: _title, home: new MyHomePage());}}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
/// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/// This is the stateful widget that the main application instantiates.
/// The class "MyHomePage" is the basis on which this whole apple is built ...
/// it can be referenced to "class MyApp extends StatelessWidget"
class MyHomePage extends StatefulWidget {MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final tabs = [
    BodyLayout(),
    Recom_View_More_Page(),
  ];

  @override
  Widget build(BuildContext context) {return Container(decoration: new BoxDecoration(color: Colors.white, image: new DecorationImage(
      image: AssetImage('assets/b31.png'), fit: BoxFit.cover)),
    child: Scaffold(key: scaffoldKey, backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          actions: <Widget>[
            Tooltip(
              message: 'Click to view the Main Menu',
              child: IconButton(
                color: Colors.purple[400],
                icon: Icon(Icons.more_outlined),
                onPressed: () {
                  Lecture_page(context);
                },
              ),

            ),
          ],
          title: Container(
            child: Center(
              child: RichText(text: TextSpan(style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.purple[400],
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ), children: <TextSpan>[
                new TextSpan(text: 'Your ', style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.purple[400],
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  fontSize: 24,
                )),
                new TextSpan(text:'Logo',)])),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.purple[400]) ,

          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        ),
        drawer: Container(

          padding: const EdgeInsets.only(top: 24),
          child: ClipRRect(
            // give it your desired border radius
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
            ),
            // wrap with a sizedbox for a custom width [for more flexibility]
            child: SizedBox(
              child: Drawer(
                elevation: 10,
                child: Scrollbar(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(18),
                          ),
                          color: Colors.purpleAccent[400],
                          image: DecorationImage(
                              image: AssetImage('assets/lo.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          'LearnX',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: Icon(Icons.school),
                          title: Text(
                            'LearnX',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          onTap: () =>
                              launch('https://www.greatnissischools.com/?m=1'),
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black26))),
                      ),
                      Container(
                        child: ListTile(
                          leading: Icon(Icons.add_ic_call_outlined),
                          title: Text(
                            'Contact',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          onTap: () {
                            // Contact(context);
                          },
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black26))),
                      ),
                      Container(
                        child: ListTile(
                          leading: Icon(Icons.architecture),
                          title: Text(
                            'About',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          onTap: () {
                            //About(context);
                          },
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black26))),
                      ),
                      Container(
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text(
                            'Settings',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          onTap: () {
                            // About(context);
                          },
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black26))),
                      ),
                      Container(
                        child: ListTile(
                          title: Text(
                            'Powered By:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          title: Text(
                            'LearnX',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black26))),
                      ),
                      Container(
                        child: ListTile(
                          title: Text(
                            'Term :\t\t First Term \n\n'
                                'App version :\t1.0.2 ( Prototype )\n\n'
                                'LearnX version :\t0.0.1 ( Beta )\n\n'
                                'Class :\t\t Nursery, Primary, Secondary\n\n',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            iconSize: 25,

            selectedIconTheme: IconThemeData(color: Color.fromRGBO(171, 71, 188, 0.8), size: 29),
            selectedItemColor: Colors.lightGreen[500],
            unselectedItemColor: Color.fromRGBO(171, 71, 188, 0.8),
            selectedLabelStyle: TextStyle(fontStyle: FontStyle.italic,),
            unselectedIconTheme: IconThemeData(color: Colors.lightGreen[500],),
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.computer_rounded , ),
            label: 'Study',

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.center_focus_strong_outlined, ),
            label: 'Discover',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        }
    ),

        body: tabs[_currentIndex]),
  );}}
