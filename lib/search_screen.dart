import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            backgroundColor: Colors.grey[100],
            leadingWidth: width*0.3,
            leading: Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    // height: height*0.04,
                    width: width*0.08,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.bolt,size: MediaQuery.of(context).size.width*0.04,color: Colors.white,),
                  ),
                  SizedBox(width: width*0.02,),
                  Text("Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.04,color: Colors.black),)
                ],
              ),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(
                Icons.notifications_none,size: MediaQuery.of(context).size.width*0.05,)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width*0.04,
                  backgroundColor: Colors.blue[900],
                  child: Icon(Icons.person,size: MediaQuery.of(context).size.width*0.04,color: Colors.white,),
                ),
              )
            ],


          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Flutter",hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),
                        prefixIcon: Icon(Icons.search_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.05,),
                        suffixIcon: Text("Practice Hub",style: TextStyle(color: Colors.blue,fontSize: MediaQuery.of(context).size.width*0.03),)
                    ),
                  ),
                  // Container(
                  //   height: 20,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Icon(Icons.search_rounded,size: 15,color: Colors.blue[900],),
                  //       SizedBox(width: 30,),
                  //       Text("Search Flutter",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  //       SizedBox(width: 250,),
                  //       Text("Practice Hub",style: TextStyle(fontSize:10,color: Colors.blue[900]),)
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: height*0.02,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Flutter Topics",hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),
                        suffixIcon: Icon(Icons.tune,size: MediaQuery.of(context).size.width*0.05),
                        prefixIcon: Icon(Icons.search_rounded,size: MediaQuery.of(context).size.width*0.05,)
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Icon(Icons.search_rounded,size: 15,),
                  //     SizedBox(width: 20,),
                  //     Text("Search Flutter Topics"),
                  //     SizedBox(width: 250,),
                  //     Icon(Icons.tune)
                  //   ],
                  // ),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Topics",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),),
                      Text("Quick Select",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                radius: MediaQuery.of(context).size.width*0.03,
                                child: Icon(Icons.widgets_outlined,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.04,)),
                            SizedBox(width: width*0.01,),
                            Text("Widgets",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                          ],
                        ),

                        SizedBox(width: width*0.02,),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: MediaQuery.of(context).size.width*0.03,
                                child: Icon(Icons.code,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.04,)),
                            SizedBox(width: 5,),
                            Text("Dart",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                          ],
                        ),

                        SizedBox(width: width*0.02,),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: MediaQuery.of(context).size.width*0.03,
                                child: Icon(Icons.text_fields_outlined,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.04,)),
                            SizedBox(width: width*0.01,),
                            Text("TextField",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                radius: MediaQuery.of(context).size.width*0.03,
                                child: Icon(Icons.explore_outlined,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.04,)),
                            SizedBox(width: width*0.01,),
                            Text("Navigation",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                          ],
                        ),

                        SizedBox(width: width*0.02,),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: MediaQuery.of(context).size.width*0.03,
                                child: Icon(Icons.start,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.04,)),
                            SizedBox(width: width*0.01,),
                            Text("State",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Topics",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04,color: Colors.black,fontWeight: FontWeight.bold),),
                      Text("6 Available",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.05,
                        child: Icon(Icons.widgets_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.06,),
                      ),
                      SizedBox(width: width*0.01,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Flutter Widget",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                            Text("Stateless,Stateful,and Layout Trees",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.05,
                        child: Icon(Icons.code,color: Colors.blue,size: MediaQuery.of(context).size.width*0.07,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("Dart Classes",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                            Text("Constructor, Mixins & Oop Principle",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.05,
                        child: Icon(Icons.text_snippet_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.07,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("TextField",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                            Text("Input decoration, Validation & Controllers",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.05,
                        child: Icon(Icons.radio_button_checked_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.07,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("Buttons",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                            Text("Elevatedbutton, Iconbutton, FloatingActi.....",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.05,
                        child: Icon(Icons.explore_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.07,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("Navigation",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                            Text("Navigator 1.2, routing & deep linking",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.05,
                        child: Icon(Icons.phone_android_sharp,color: Colors.blue,size: MediaQuery.of(context).size.width*0.07,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("Bottom Navigation",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.03),),
                            Text("NavigationBar, Tabs & Views Switching",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.02),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.05,)
                    ],
                  ),

                  SizedBox(height: height*0.04,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width*0.05,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.code,color: Colors.white,size: MediaQuery.of(context).size.width*0.07,),
                        ),
                        SizedBox(width: width*0.02,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Interactive Code SandBox",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04,color: Colors.black,fontWeight: FontWeight.bold),),
                              Text("Test Flutter widget live with hot r....",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04,),)
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_rounded,size: MediaQuery.of(context).size.width*0.05,color: Colors.blue,)
                      ],
                    ),
                  ),


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
            backgroundColor: Colors.grey[100],
            leadingWidth: width*0.3,
            title: Padding(
              padding: EdgeInsetsGeometry.only(left: 600,right: 600),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    // height: height*0.04,
                    width: width*0.04,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.bolt,size: MediaQuery.of(context).size.width*0.02,color: Colors.white,),
                  ),
                  SizedBox(width: width*0.02,),
                  Text("Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.01,color: Colors.black),)
                ],
              ),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(
                Icons.notifications_none,size: MediaQuery.of(context).size.width*0.025,)),
              Padding(
                padding: const EdgeInsets.only(right: 600),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width*0.02,
                  backgroundColor: Colors.blue[900],
                  child: Icon(Icons.person,size: MediaQuery.of(context).size.width*0.02,color: Colors.white,),
                ),
              )
            ],


          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 600,right: 600),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Flutter",hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),
                        prefixIcon: Icon(Icons.search_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.025,),
                        suffixIcon: Text("Practice Hub",style: TextStyle(color: Colors.blue,fontSize: MediaQuery.of(context).size.width*0.015),)
                    ),
                  ),
                  // Container(
                  //   height: 20,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Icon(Icons.search_rounded,size: 15,color: Colors.blue[900],),
                  //       SizedBox(width: 30,),
                  //       Text("Search Flutter",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  //       SizedBox(width: 250,),
                  //       Text("Practice Hub",style: TextStyle(fontSize:10,color: Colors.blue[900]),)
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: height*0.02,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Flutter Topics",hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015),
                        suffixIcon: Icon(Icons.tune,size: MediaQuery.of(context).size.width*0.025),
                        prefixIcon: Icon(Icons.search_rounded,size: MediaQuery.of(context).size.width*0.025,)
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Icon(Icons.search_rounded,size: 15,),
                  //     SizedBox(width: 20,),
                  //     Text("Search Flutter Topics"),
                  //     SizedBox(width: 250,),
                  //     Icon(Icons.tune)
                  //   ],
                  // ),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Topics",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,fontWeight: FontWeight.bold),),
                      Text("Quick Select",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015),)
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.015,
                              child: Icon(Icons.widgets_outlined,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.02,)),
                          SizedBox(width: width*0.01,),
                          Text("Widgets",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                        ],
                      ),

                      SizedBox(width: width*0.02,),
                      Row(
                        children: [
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.015,
                              child: Icon(Icons.code,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.02,)),
                          SizedBox(width: 5,),
                          Text("Dart",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                        ],
                      ),

                      SizedBox(width: width*0.02,),
                      Row(
                        children: [
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.015,
                              child: Icon(Icons.text_fields_outlined,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.02,)),
                          SizedBox(width: width*0.01,),
                          Text("TextField",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.015,
                              child: Icon(Icons.explore_outlined,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.02,)),
                          SizedBox(width: width*0.01,),
                          Text("Navigation",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                        ],
                      ),

                      SizedBox(width: width*0.02,),
                      Row(
                        children: [
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.015,
                              child: Icon(Icons.start,color: Colors.blue[900],size: MediaQuery.of(context).size.width*0.02,)),
                          SizedBox(width: width*0.01,),
                          Text("State",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,color: Colors.blue[900],fontWeight: FontWeight.bold),)
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Topics",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.02,color: Colors.black,fontWeight: FontWeight.bold),),
                      Text("6 Available",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.015,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.025,
                        child: Icon(Icons.widgets_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.03,),
                      ),
                      SizedBox(width: width*0.01,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Flutter Widget",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                            Text("Stateless,Stateful,and Layout Trees",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.025,
                        child: Icon(Icons.code,color: Colors.blue,size: MediaQuery.of(context).size.width*0.035,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("Dart Classes",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                            Text("Constructor, Mixins & Oop Principle",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.025,
                        child: Icon(Icons.text_snippet_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.035,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("TextField",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                            Text("Input decoration, Validation & Controllers",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.025,
                        child: Icon(Icons.radio_button_checked_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.035,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("Buttons",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                            Text("Elevatedbutton, Iconbutton, FloatingActi.....",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.025,
                        child: Icon(Icons.explore_outlined,color: Colors.blue,size: MediaQuery.of(context).size.width*0.035,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("Navigation",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                            Text("Navigator 1.2, routing & deep linking",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                    ],
                  ),

                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.025,
                        child: Icon(Icons.phone_android_sharp,color: Colors.blue,size: MediaQuery.of(context).size.width*0.035,),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text("Bottom Navigation",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.015),),
                            Text("NavigationBar, Tabs & Views Switching",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01),)
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,size: MediaQuery.of(context).size.width*0.025,)
                    ],
                  ),

                  SizedBox(height: height*0.04,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width*0.025,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.code,color: Colors.white,size: MediaQuery.of(context).size.width*0.035,),
                        ),
                        SizedBox(width: width*0.02,),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Interactive Code SandBox",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01,color: Colors.black,fontWeight: FontWeight.bold),),
                              Text("Test Flutter widget live with hot r....",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.01,),)
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_rounded,size: MediaQuery.of(context).size.width*0.025,color: Colors.blue,)
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
