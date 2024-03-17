import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_app/home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    // Check if the user's email is verified when the page is loaded
    checkEmailVerification();
  }

  void checkEmailVerification() async {
    setState(() {
      _loading = true;
    });
    User? user = _auth.currentUser;
    if (user != null && user.emailVerified) {
      // If email is verified, navigate to the home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage(username: 'Tharusha')),
      );
    } else {
      setState(() {
        _loading = false;
      });
    }
  }

  Future<void> sendVerificationEmail() async {
    User? user = _auth.currentUser;
    if (user != null) {
      try {
        await user.sendEmailVerification();
        // Show a message that the verification email has been sent
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Verification email has been sent.'),
          ),
        );
      } catch (e) {
        // Show an error message if the verification email fails to send
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to send verification email. Please try again later.'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_loading)
              CircularProgressIndicator(), // Show CircularProgressIndicator if loading
            SizedBox(height: _loading ? 20 : 0), // Add spacing if loading
            Text(
              'Please verify your email to continue.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(username: 'Tharusha')),
                );
              },
              child: Text('Verify'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: sendVerificationEmail,
              child: Text('Resend Verification Email'),
            ),
          ],
        ),
      ),
    );
  }
}
