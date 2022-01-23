import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';



class AuthenticScreen extends StatefulWidget {
  @override
  _AuthenticScreenState createState() => _AuthenticScreenState();
}

class _AuthenticScreenState extends State<AuthenticScreen> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            // color: Colors.greenAccent,
            // decoration: BoxDecoration(
            //  color: Colors.black,
            //   gradient: LinearGradient(
            //     colors: [Colors.pink,
            //       Colors.greenAccent],
            //     begin: const FractionalOffset(0.0,0.0),
            //     end: const FractionalOffset(1.0,0.0),
            //     stops: [0.0,1.0],
            //     tileMode: TileMode.clamp,
            //   ),
            // ),
          ),
          title: Text("GhostWalla",
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.lock, color: Colors.black ),
                text: "Login",
              ),
              Tab(
                icon: Icon(Icons.perm_contact_calendar, color: Colors.black ),
                text: "Register",
              ),
            ],
            indicatorColor: Colors.white38,
            indicatorWeight: 5.0,
          ),
        ),
        body: Container(
          // color: Colors.greenAccent,
          // decoration: BoxDecoration(
          //   color: Colors.black,
          // //   gradient: LinearGradient(
          //                 colors: [Colors.pink,
          //                   Colors.greenAccent],
          //                 begin: Alignment.bottomRight,
          //     end: Alignment.bottomLeft,
          //   ),
          // ),
          child: TabBarView(
            children: [
              Login(),
              Register(),
            ],
          ),
        ),
      ),
    );
  }
}
