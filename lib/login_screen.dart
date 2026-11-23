import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutterapplication/Signup_screen.dart';
import 'package:flutterapplication/bottum_navigation.dart';

import 'package:url_launcher/url_launcher.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constrains){
      if(constrains.maxWidth < 1000){
        return Scaffold(
          backgroundColor: Colors.grey[100],
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(height: 30),

                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.bolt, color: Colors.white, size: 40),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Welcome Back 👋",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Login to continue learning Flutter",
                    style: TextStyle(color: Colors.grey[600]),
                  ),

                  SizedBox(height: 30),

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            prefixIcon: CountryCodePicker(
                              onChanged: (country){
                                print("country:${country.name}"
                                    "country:${country.dialCode}");
                              },
                            ),
                            // prefixIcon: Icon(Icons.email_outlined),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Password",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          obscureText: !showPassword,

                          decoration: InputDecoration(
                            hintText: "Enter your password",

                            prefixIcon: Icon(Icons.lock_outline),

                            suffixIcon: IconButton(
                              icon: Icon(
                                showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                            ),

                            filled: true,
                            fillColor: Colors.grey[200],

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        SizedBox(height: 10),

                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Forgot Password?"),
                          ),
                        ),

                        SizedBox(height: 10),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                          },
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 20),
                  // Container(
                  //   height: 50,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.circular(50),
                  //   ),
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       showModalBottomSheet(
                  //         backgroundColor: Colors.green,
                  //         constraints: BoxConstraints(maxWidth: double.infinity),
                  //         context: context,
                  //         builder: (context) {
                  //           return Container(
                  //             height: 500,
                  //             width: double.infinity,
                  //             child: Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 // Text("Flutter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  //                 SizedBox(height: 20),
                  //                 ElevatedButton(
                  //                   onPressed: () {
                  //                     Navigator.pop(context);
                  //                   },
                  //                   child: Text("Login Screen"),
                  //                 ),
                  //                 SizedBox(height: 25),
                  //               ],
                  //             ),
                  //           );
                  //         },
                  //       );
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.transparent,
                  //     ),
                  //     child: Text(
                  //       "SecretSheet",
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  //
                  SizedBox(height: 55),

                  Text(
                    "QUICK PRACTICE MODE",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 55),

                  Text(
                    "< >   Fill Demo Student",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: TextStyle(fontSize: 20)),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 10),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     final Uri url = Uri.parse(
                  //       "https://www.facebook.com/",
                  //     );
                  //     if (await canLaunchUrl(url)) {
                  //       await launchUrl(url, mode: LaunchMode.externalApplication);
                  //     }
                  //   },
                  //   child: Icon(Icons.facebook),
                  // ),
                ],
              ),
            ),
          ),
        );
      }
      else{
        return Scaffold(
          backgroundColor: Colors.grey[100],
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 600,right: 600),
              child: Column(
                children: [
                  SizedBox(height: 30),

                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.bolt, color: Colors.white, size: 40),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Welcome Back 👋",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Login to continue learning Flutter",
                    style: TextStyle(color: Colors.grey[600]),
                  ),

                  SizedBox(height: 30),

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            prefixIcon: CountryCodePicker(
                              onChanged: (country){
                                print("country:${country.name}"
                                    "country:${country.dialCode}");
                              },
                            ),
                            // prefixIcon: Icon(Icons.email_outlined),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Password",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          obscureText: !showPassword,

                          decoration: InputDecoration(
                            hintText: "Enter your password",

                            prefixIcon: Icon(Icons.lock_outline),

                            suffixIcon: IconButton(
                              icon: Icon(
                                showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                            ),

                            filled: true,
                            fillColor: Colors.grey[200],

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        SizedBox(height: 10),

                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Forgot Password?"),
                          ),
                        ),

                        SizedBox(height: 10),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                          },
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 20),
                  // Container(
                  //   height: 50,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.circular(50),
                  //   ),
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       showModalBottomSheet(
                  //         backgroundColor: Colors.green,
                  //         constraints: BoxConstraints(maxWidth: double.infinity),
                  //         context: context,
                  //         builder: (context) {
                  //           return Container(
                  //             height: 500,
                  //             width: double.infinity,
                  //             child: Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 // Text("Flutter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  //                 SizedBox(height: 20),
                  //                 ElevatedButton(
                  //                   onPressed: () {
                  //                     Navigator.pop(context);
                  //                   },
                  //                   child: Text("Login Screen"),
                  //                 ),
                  //                 SizedBox(height: 25),
                  //               ],
                  //             ),
                  //           );
                  //         },
                  //       );
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.transparent,
                  //     ),
                  //     child: Text(
                  //       "SecretSheet",
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  //
                  SizedBox(height: 55),

                  Text(
                    "QUICK PRACTICE MODE",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 55),

                  Text(
                    "< >   Fill Demo Student",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: TextStyle(fontSize: 20)),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 10),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     final Uri url = Uri.parse(
                  //       "https://www.facebook.com/",
                  //     );
                  //     if (await canLaunchUrl(url)) {
                  //       await launchUrl(url, mode: LaunchMode.externalApplication);
                  //     }
                  //   },
                  //   child: Icon(Icons.facebook),
                  // ),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
