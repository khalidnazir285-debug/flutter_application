
import 'package:flutter/material.dart';
import 'package:flutterapplication/splash_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool darkMode = false;
  bool notification = false;
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (context, constrains){
          if(constrains.maxWidth<1000){
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                toolbarHeight: width * 0.11,
                backgroundColor: Colors.grey[50],
                leadingWidth: width*0.5,
                leading: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,size: MediaQuery.of(context).size.width*0.05,)
                      ),
                      SizedBox(width: width*0.01,),
                      Container(
                        padding: EdgeInsets.all(4),
                        // height: height*0.04,
                        width: width*0.08,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Icon(Icons.bolt,color: Colors.white,size: MediaQuery.of(context).size.width*0.05,),
                      ),
                      SizedBox(width: width*0.03,),
                      Text("Setting",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.03,),),

                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: MediaQuery.of(context).size.width*0.05,
                      child: Icon(Icons.person,color: Colors.white,size: MediaQuery.of(context).size.width*0.05,),
                    ),
                  )
                ],

              ),
              body: Padding(
                padding:   EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.width*0.07,
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.person,color: Colors.white,size: MediaQuery.of(context).size.width*0.07,),
                                ),
                                SizedBox(width: width*0.01,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Alex Rivera",style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold),),
                                    Text("Flutter Apprentice . leve....",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,),),

                                  ],
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  // height: height*0.08,
                                  width: width*0.2,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent[100],
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,


                                    children: [
                                      Text("PRO",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.blue[900],fontWeight: FontWeight.bold),),
                                      Text("SYNC",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                )

                              ],
                            ),
                            SizedBox(height: height*0.02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Practice streak",style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                                Text("14 Days Active",style: TextStyle(color: Colors.lightBlueAccent,fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                value: 0.8,
                                minHeight: height*0.01,
                                backgroundColor: Colors.lightBlue,
                                color: Colors.blue[800],
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("APP SETTINGS",style: TextStyle(color: Colors.grey[400],fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),),
                          Text("DEVICE & UI",style: TextStyle(color: Colors.grey[700],fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Container(

                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.dark_mode_outlined,size: MediaQuery.of(context).size.width*0.1,color: Colors.blue,),
                            SizedBox(width: width*0.01,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("DARK MODE",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("Change app appearance",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                              ],
                            ),
                            Spacer(),
                            Switch(
                                value: darkMode,
                                onChanged: (value){
                                  setState(() {
                                    darkMode = value;
                                  });
                                }
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(height: height*0.02,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,

                        ),
                        child: Row(
                          children: [
                            Icon(Icons.notifications,size: MediaQuery.of(context).size.width*0.1,color: Colors.blueAccent,),
                            SizedBox(width: width*0.01,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Notifications",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Receive app notification",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                              ],
                            ),
                            Spacer(),
                            Switch(
                                value: notification,
                                onChanged: (value){
                                  setState(() {
                                    notification = value;
                                  });
                                }
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("OTHER",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("General",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: height*0.01,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.05,
                              backgroundColor: Colors.lightBlue[10],
                              child: Icon(Icons.language,size: MediaQuery.of(context).size.width*0.08,color: Colors.blue[900],),
                            ),
                            SizedBox(width: width*0.01,),
                            Text("Language",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.04),),
                            Spacer(),
                            Row(
                              children: [
                                Text("English",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04),),
                                SizedBox(width: width*0.01,),
                                Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(height: height*0.02,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.05,
                              backgroundColor: Colors.lightBlue[10],
                              child: Icon(Icons.privacy_tip_outlined,size: MediaQuery.of(context).size.width*0.08,color: Colors.blue[400],),
                            ),
                            SizedBox(width: width*0.01,),
                            Text("About App",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.04),),
                            Spacer(),
                            Row(
                              children: [
                                Text("Learn about this app",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),),
                                SizedBox(width: width*0.01,),
                                Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(height: height*0.01,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.05,
                              backgroundColor: Colors.lightBlue[10],
                              child: Icon(Icons.lock_outline,size: MediaQuery.of(context).size.width*0.08,color: Colors.blue[400],),
                            ),
                            SizedBox(width: width*0.01,),
                            Text("Privacy",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.04),),
                            Spacer(),
                            Row(
                              children: [
                                Text("Setting privacy",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),),
                                SizedBox(width: 15,),
                                Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // height: height*0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.login,size: MediaQuery.of(context).size.width*0.05,color: Colors.redAccent,),
                              SizedBox(width: width*0.01,),
                              Text("Logout",style: TextStyle(fontSize:MediaQuery.of(context).size.width*0.05,color: Colors.redAccent,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Text("Flutter Sandbox v3.19.0 . build 104",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.grey[400],fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text("Designed with Flutter Expressive UI",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                      // SizedBox(height: 30,),

                    ],
                  ),
                ),
              ),






            );
          }
          else{
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                toolbarHeight: width * 0.10,
                backgroundColor: Colors.grey[50],
                leadingWidth: width*0.5,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 600),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,size: MediaQuery.of(context).size.width*0.03,)
                      ),
                      SizedBox(width: width*0.01,),
                      Container(
                        padding: EdgeInsets.all(5),
                        // height: height*0.04,
                        width: width*0.02,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Icon(Icons.bolt,color: Colors.white,size: MediaQuery.of(context).size.width*0.01,),
                      ),
                      SizedBox(width: width*0.03,),
                      Text("Setting",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.01,),),

                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 600),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: MediaQuery.of(context).size.width*0.02,
                      child: Icon(Icons.person,color: Colors.white,size: MediaQuery.of(context).size.width*0.02,),
                    ),
                  )
                ],

              ),
              body:  Padding(
                padding:   EdgeInsets.only(left: 600,right: 600),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.width*0.03,
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.person,color: Colors.white,size: MediaQuery.of(context).size.width*0.03,),
                                ),
                                SizedBox(width: width*0.01,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Alex Rivera",style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.012,fontWeight: FontWeight.bold),),
                                    Text("Flutter Apprentice . leve....",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.012,),),

                                  ],
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  // height: height*0.08,
                                  width: width*0.05,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent[100],
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,


                                    children: [
                                      Text("PRO",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.005,color: Colors.blue[900],fontWeight: FontWeight.bold),),
                                      Text("SYNC",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.005,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                )

                              ],
                            ),
                            SizedBox(height: height*0.02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Practice streak",style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.01),),
                                Text("14 Days Active",style: TextStyle(color: Colors.lightBlueAccent,fontSize: MediaQuery.of(context).size.width*0.01,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                value: 0.8,
                                minHeight: height*0.01,
                                backgroundColor: Colors.lightBlue,
                                color: Colors.blue[800],
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("APP SETTINGS",style: TextStyle(color: Colors.grey[400],fontSize: MediaQuery.of(context).size.width*0.01,fontWeight: FontWeight.bold),),
                          Text("DEVICE & UI",style: TextStyle(color: Colors.grey[700],fontSize: MediaQuery.of(context).size.width*0.01,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Container(

                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.dark_mode_outlined,size: MediaQuery.of(context).size.width*0.05,color: Colors.blue,),
                            SizedBox(width: width*0.01,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("DARK MODE",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01,color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("Change app appearance",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                              ],
                            ),
                            Spacer(),
                            Switch(
                                value: darkMode,
                                onChanged: (value){
                                  setState(() {
                                    darkMode = value;
                                  });
                                }
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(height: height*0.02,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,

                        ),
                        child: Row(
                          children: [
                            Icon(Icons.notifications,size: MediaQuery.of(context).size.width*0.05,color: Colors.blueAccent,),
                            SizedBox(width: width*0.01,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Notifications",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("Receive app notification",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                              ],
                            ),
                            Spacer(),
                            Switch(
                                value: notification,
                                onChanged: (value){
                                  setState(() {
                                    notification = value;
                                  });
                                }
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("OTHER",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("General",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: height*0.01,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.02,
                              backgroundColor: Colors.lightBlue[10],
                              child: Icon(Icons.language,size: MediaQuery.of(context).size.width*0.04,color: Colors.blue[900],),
                            ),
                            SizedBox(width: width*0.01,),
                            Text("Language",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.01),),
                            Spacer(),
                            Row(
                              children: [
                                Text("English",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),),
                                SizedBox(width: width*0.01,),
                                Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.01,)
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(height: height*0.02,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.02,
                              backgroundColor: Colors.lightBlue[10],
                              child: Icon(Icons.privacy_tip_outlined,size: MediaQuery.of(context).size.width*0.04,color: Colors.blue[400],),
                            ),
                            SizedBox(width: width*0.01,),
                            Text("About App",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.01),),
                            Spacer(),
                            Row(
                              children: [
                                Text("Learn about this app",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),),
                                SizedBox(width: width*0.01,),
                                Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.01,)
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(height: height*0.01,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.02,
                              backgroundColor: Colors.lightBlue[10],
                              child: Icon(Icons.lock_outline,size: MediaQuery.of(context).size.width*0.04,color: Colors.blue[400],),
                            ),
                            SizedBox(width: width*0.01,),
                            Text("Privacy",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.01),),
                            Spacer(),
                            Row(
                              children: [
                                Text("Setting privacy",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),),
                                SizedBox(width: 15,),
                                Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.01,)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // height: height*0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.login,size: MediaQuery.of(context).size.width*0.01,color: Colors.redAccent,),
                              SizedBox(width: width*0.01,),
                              Text("Logout",style: TextStyle(fontSize:MediaQuery.of(context).size.width*0.01,color: Colors.redAccent,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Text("Flutter Sandbox v3.19.0 . build 104",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01,color: Colors.grey[400],fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text("Designed with Flutter Expressive UI",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                      // SizedBox(height: 30,),

                    ],
                  ),
                ),
              )






            );
          }
        }
    );
  }
}

