
import 'package:flutter/material.dart';
import 'package:flutterapplication/setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context,constrains){
      if(constrains.maxWidth < 1000){
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: width * 0.10,
            backgroundColor: Colors.white,
            // leadingWidth: width*0.3,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    // height: height*0.04,
                    width: width*0.08,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.bolt,size: MediaQuery.of(context).size.width*0.04,color: Colors.white,),
                  ),
                ),
                SizedBox(width: width*0.02,),
                Text("Profile",style: TextStyle(fontSize:MediaQuery.of(context).size.width*0.04,color: Colors.black,fontWeight: FontWeight.bold),),

              ],
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,size: MediaQuery.of(context).size.width*0.05,)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width*0.04,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person,color: Colors.white,size: MediaQuery.of(context).size.width*0.04,),

                ),

              ),

            ],

          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Profile",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold,color: Colors.black),),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                          },
                          child: Icon(Icons.settings,size: MediaQuery.of(context).size.width*0.07,)
                      )
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.white

                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue[900],
                              radius: MediaQuery.of(context).size.width*0.11,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: MediaQuery.of(context).size.width*0.1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Khalid",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.02),),
                                    Text("Avatar",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.02),),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right:   MediaQuery.of(context).size.width*0.02,
                              bottom:  MediaQuery.of(context).size.width*0.02,
                              child: CircleAvatar(
                                  radius: MediaQuery.of(context).size.width*0.02,
                                  backgroundColor: Colors.blue[900],
                                  child: Icon(Icons.verified,color: Colors.white,size: MediaQuery.of(context).size.width*0.02,)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Khalid",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.03),),
                            SizedBox(height: height*0.02,),
                            Container(
                              // height: height*0.07,
                              width: width*0.5,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: Text("<> Flutter Developer",style: TextStyle(color: Colors.blue[900],fontSize: MediaQuery.of(context).size.width*0.03),),
                            )
                          ],
                        ),
                        SizedBox(height: height*0.03,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("24",style: TextStyle(color: Colors.blue,fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),),
                                // SizedBox(height: height*0.01,),
                                Text("courses",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.02),)
                              ],
                            ),

                            Column(
                              children: [
                                Text("38",style: TextStyle(color: Colors.blue[900],fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),),
                                // SizedBox(height: height*0.01,),
                                Text("Projects",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.02),)
                              ],
                            ),

                            Column(
                              children: [
                                Text("92%",style: TextStyle(color: Colors.purpleAccent,fontSize: MediaQuery.of(context).size.width*0.02,fontWeight: FontWeight.bold),),
                                // SizedBox(height: height*0.01,),
                                Text("Score",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.02),)
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Container(
                          // height: height*0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.text_fields_outlined,color: Colors.white,size: MediaQuery.of(context).size.width*0.06,),
                              SizedBox(width: width*0.02,),
                              Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ACCOUNT & PREFERENCES",style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                      Text("View All",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.04,
                            child: Icon(Icons.person_outline,color: Colors.blue,size: MediaQuery.of(context).size.width*0.05,),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Edit Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                              Text("Update personal detail & Biography",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius:  MediaQuery.of(context).size.width*0.04,
                            child: Icon(Icons.menu_book_sharp,color: Colors.blue,size: MediaQuery.of(context).size.width*0.05,),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("My Courses",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                              Text("4 in progress . 10 certificates",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),),

                            ],
                          ),
                          SizedBox(width: height*0.01,),
                          Container(
                            // height: height*0.06,
                            width: width*0.1,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text("active",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.02),),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius:  MediaQuery.of(context).size.width*0.04,
                            child: Icon(Icons.star_border_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.05,),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Favorites",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                              Text("Saved Widget, snippets & lesson",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius:  MediaQuery.of(context).size.width*0.04,
                            child: Icon(Icons.settings,color: Colors.blue,size: MediaQuery.of(context).size.width*0.05,),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Settings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                              Text("Notifications,theme & privacy",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius:  MediaQuery.of(context).size.width*0.03,
                        child: Icon(Icons.login,color: Colors.red,size: MediaQuery.of(context).size.width*0.03,),
                      ),
                      SizedBox(width: width*0.02,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Logout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                          Text("Sign out of your Flutter account",style: TextStyle(color: Colors.red,fontSize: MediaQuery.of(context).size.width*0.03),)
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,color: Colors.red,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Text("Flutter Practice v3.4.0",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.lightBlue,fontWeight: FontWeight.bold),),
                  SizedBox(height: height*0.02,),
                  Text("Crafted with high performance Dart Engine",style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),)

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
            backgroundColor: Colors.white,
            // leadingWidth: width*0.3,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 600),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    // height: height*0.04,
                    width: width*0.04,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.bolt,size: MediaQuery.of(context).size.width*0.02,color: Colors.white,),
                  ),
                ),
                SizedBox(width: width*0.02,),
                Text("Profile",style: TextStyle(fontSize:MediaQuery.of(context).size.width*0.01,color: Colors.black,fontWeight: FontWeight.bold),),

              ],
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,size: MediaQuery.of(context).size.width*0.025,)),
              Padding(
                padding: const EdgeInsets.only(right: 600),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width*0.02,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person,color: Colors.white,size: MediaQuery.of(context).size.width*0.02,),

                ),

              ),

            ],

          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 600,right: 600),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Profile",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.02,fontWeight: FontWeight.bold,color: Colors.black),),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                          },
                          child: Icon(Icons.settings,size: MediaQuery.of(context).size.width*0.035,)
                      )
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.white

                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue[900],
                              radius: MediaQuery.of(context).size.width*0.054,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: MediaQuery.of(context).size.width*0.05,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Khalid",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.01),),
                                    Text("Avatar",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.01),),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right:   MediaQuery.of(context).size.width*0.01,
                              bottom:  MediaQuery.of(context).size.width*0.01,
                              child: CircleAvatar(
                                  radius: MediaQuery.of(context).size.width*0.01,
                                  backgroundColor: Colors.blue[900],
                                  child: Icon(Icons.verified,color: Colors.white,size: MediaQuery.of(context).size.width*0.01,)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Khalid",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.01),),
                            SizedBox(height: height*0.02,),
                            Container(
                              // height: height*0.07,
                              width: width*0.5,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: Text("<> Flutter Developer",style: TextStyle(color: Colors.blue[900],fontSize: MediaQuery.of(context).size.width*0.015),),
                            )
                          ],
                        ),
                        SizedBox(height: height*0.03,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("24",style: TextStyle(color: Colors.blue,fontSize: MediaQuery.of(context).size.width*0.015,fontWeight: FontWeight.bold),),
                                // SizedBox(height: height*0.01,),
                                Text("courses",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                              ],
                            ),

                            Column(
                              children: [
                                Text("38",style: TextStyle(color: Colors.blue[900],fontSize: MediaQuery.of(context).size.width*0.015,fontWeight: FontWeight.bold),),
                                // SizedBox(height: height*0.01,),
                                Text("Projects",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                              ],
                            ),

                            Column(
                              children: [
                                Text("92%",style: TextStyle(color: Colors.purpleAccent,fontSize: MediaQuery.of(context).size.width*0.015,fontWeight: FontWeight.bold),),
                                // SizedBox(height: height*0.01,),
                                Text("Score",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Container(
                          // height: height*0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.text_fields_outlined,color: Colors.white,size: MediaQuery.of(context).size.width*0.03,),
                              SizedBox(width: width*0.02,),
                              Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.02,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ACCOUNT & PREFERENCES",style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                      Text("View All",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.02,
                            child: Icon(Icons.person_outline,color: Colors.blue,size: MediaQuery.of(context).size.width*0.025,),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Edit Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                              Text("Update personal detail & Biography",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius:  MediaQuery.of(context).size.width*0.02,
                            child: Icon(Icons.menu_book_sharp,color: Colors.blue,size: MediaQuery.of(context).size.width*0.025,),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("My Courses",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                              Text("4 in progress . 10 certificates",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),),

                            ],
                          ),
                          SizedBox(width: height*0.01,),
                          Container(
                            // height: height*0.06,
                            width: width*0.05,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text("active",style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.01),),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius:  MediaQuery.of(context).size.width*0.02,
                            child: Icon(Icons.star_border_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.025,),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Favorites",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                              Text("Saved Widget, snippets & lesson",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius:  MediaQuery.of(context).size.width*0.02,
                            child: Icon(Icons.settings,color: Colors.blue,size: MediaQuery.of(context).size.width*0.025,),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Settings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                              Text("Notifications,theme & privacy",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius:  MediaQuery.of(context).size.width*0.02,
                        child: Icon(Icons.login,color: Colors.red,size: MediaQuery.of(context).size.width*0.025,),
                      ),
                      SizedBox(width: width*0.02,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Logout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                          Text("Sign out of your Flutter account",style: TextStyle(color: Colors.red,fontSize: MediaQuery.of(context).size.width*0.01),)
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,color: Colors.red,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Text("Flutter Practice v3.4.0",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,color: Colors.lightBlue,fontWeight: FontWeight.bold),),
                  SizedBox(height: height*0.02,),
                  Text("Crafted with high performance Dart Engine",style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),)

                ],
              ),
            ),
          ),

        );
      }
    });
  }
}
