import 'package:flutter/material.dart';

import 'Signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Icon
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                child: Image.asset('images/pf.jpg'), // Replace with your asset
              ),
              SizedBox(height: 40),

              // Phone number, email, or username field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Phone number, email or username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),

              // Password field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Forgot your login details?
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 5.0),
                      Text(
                        "Forget your login Details? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Create new account',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // OR Divider
              Row(
                children: [
                  Expanded(child: Divider(thickness: 2)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 2)),
                ],
              ),
              SizedBox(height: 20),

              // Login with Google
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('images/google.jpg'),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle Google login
                        },
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Connect with Google',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),

              // Login with Facebook
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('images/facebook.jpg'),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle Facebook login
                        },
                      ),
                      SizedBox(
                          width: 10.0), // Adjusted width for better spacing
                      Text(
                        'Connect with Facebook',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: Divider(thickness: 3)),
                  Expanded(child: Divider(thickness: 3)),
                ],
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 5.0),
                      Text(
                        "Doesn't have an account? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signup(
                                  // child: Text(
                                  //   'Create new account',
                                  //   style: TextStyle(
                                  //     color: Colors.blue,
                                  //     fontSize: 17,
                                  //     fontWeight: FontWeight.bold,
                                  //   ),
                                  // ),
                                  ),
                            ),
                          );
                        },
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
