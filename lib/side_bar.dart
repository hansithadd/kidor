import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_app/firebase_auth_methods.dart';
import 'package:my_first_app/login_page.dart';
import 'package:provider/provider.dart';



class SideBar extends StatelessWidget {
    const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sidebar.jpg'),
                fit: BoxFit.fill,
              ),
       
                    
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Kidor',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:  FontWeight.bold,
                  color: Colors.white
                ),),
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/me.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Text('Tharusha',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),
                const Text('tharusha22589@gmail.com',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),
              ],
            ),

          ),
          ListTile(
              leading: Icon(Icons.home), 
              title: Text('Home'),
              onTap: () {
                // Navigate to item 1 page
                Navigator.pop(context);
                // You can use Navigator to push to the desired page
              },
            ),

          ListTile(
            leading: Icon(Icons.play_lesson), 
            title: Text('AR Lessons'),
            onTap: () {
                // Navigate to item 1 page
              Navigator.pop(context);
                // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.handshake_outlined), 
            title: Text('HandWork'),
            onTap: () {
                // Navigate to item 1 page
              Navigator.pop(context);
                // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.gamepad), 
            title: Text('AR games'),
            onTap: () {
                // Navigate to item 1 page
              Navigator.pop(context);
                // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.door_back_door), 
            title: Text('AR portal'),
            onTap: () {
                // Navigate to item 1 page
              Navigator.pop(context);
                // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.quiz), 
            title: Text('Quiz'),
            onTap: () {
                // Navigate to item 1 page
              Navigator.pop(context);
                // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark_outlined), 
            title: Text('How AR works'),
            onTap: () {
                // Navigate to item 1 page
              Navigator.pop(context);
                // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.person), 
            title: Text('Profile'),
            onTap: () {
                // Navigate to item 1 page
              Navigator.pop(context);
                // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.settings), 
            title: Text('Settings'),
            onTap: () {
                // Navigate to item 1 page
              Navigator.pop(context);
                // You can use Navigator to push to the desired page
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward_rounded), 
            title: Text('Sign Out'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Login()), 
            );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 28),
            height: 30,
            width: 500,
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "©Researched & Developed By",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            height: 20,
            width: 500,
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "CS-12 Code X",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}