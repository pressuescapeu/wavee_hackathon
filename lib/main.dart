import 'package:flutter/material.dart';
import 'package:wavee_first_try/login.dart';
import 'package:wavee_first_try/signup.dart';
import 'package:wavee_first_try/wavee.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'WAVEE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'be eco-friendly with us!',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      )
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/welcome.png")
                    )
                  ),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text(
                        'login', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                      color: Color(0xff3e3e54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => WaveeMain()));
                      },
                      color: Color(0xff335984),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Continue without progress',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
      )

    );
  }
}

