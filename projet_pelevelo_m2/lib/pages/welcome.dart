// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:projet_pelevelo_m2/pages/login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Image en arrière-plan
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/image.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenu au premier plan
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Bienvenue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 100,),
                const SizedBox(
                  width: 357,
                  height: 66,
                  child: Text(
                    'PÉLÉVÉLO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                      height: 0.03,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                Container (
                  padding: const EdgeInsets.all(16.0),
                  width: MediaQuery.of(context).size.width*0.8,
                  child: const Column (
                    children: <Widget>[
                        Text ("Lorem ipsum dolor sit amet,",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.10,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text ("consectetur adipiscing elit, sed",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.10,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text ("do eiusmod tempor incididunt u",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.10,
                          ),
                        ),
                    ],
                  ),
                ),

                const SizedBox(height: 50,),
                SizedBox(
                  width: 300,
                  height: 39,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      "SE CONNECTER",
                      style: TextStyle(
                        color: Color(0xFF303535),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
