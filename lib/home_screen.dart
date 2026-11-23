import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constrains){
      if(constrains.maxWidth < 1000){
        return Scaffold(
          backgroundColor: Colors.grey[110],
          appBar: AppBar(
            backgroundColor: Colors.grey[100],
            // leadingWidth: width*0.3,
            toolbarHeight: width * 0.10,
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    // height: height*0.04,
                    width: width * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.bolt,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                  SizedBox(width: width * 0.05),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Stack(
                children: [
                  IconButton(
                    iconSize: width * 0.065,
                    padding: EdgeInsets.all(width * 0.02),
                    icon: Icon(
                      Icons.notification_add_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  Positioned(
                    right: width * 0.02,
                    top: width * 0.02,
                    child: Container(
                      height: width * 0.025,
                      width: width * 0.025,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: width * 0.02),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.04,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Welcome To Flutter App",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.03,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Learn Flutter Step by Step",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "new course 2025",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Learn Flutter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Build beautiful apps with Flutter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Start Learning",
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width * 0.02,
                                      color: Colors.blue[800],
                                    ),
                                  ),
                                  SizedBox(width: width * 0.01),
                                  Icon(
                                    Icons.play_arrow,
                                    size: MediaQuery.of(context).size.width * 0.02,
                                    color: Colors.blue[800],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        // height: MediaQuery.of(context).size.height*0.07,
                        width: MediaQuery.of(context).size.width * 0.14,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.bolt,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flutter Topics",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(15),
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  childAspectRatio: width < 400 ? 1.0 : 1.2,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.03,
                              child: Icon(
                                Icons.widgets_outlined,
                                size: MediaQuery.of(context).size.width * 0.04,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "Widgets",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Core visual elements",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.03,
                              child: Icon(
                                Icons.code,
                                size: MediaQuery.of(context).size.width * 0.03,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "Dart",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Language Essential",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.03,
                              child: Icon(
                                Icons.palette_outlined,
                                size: MediaQuery.of(context).size.width * 0.03,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "UI Design",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Layout & Animation",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.03,
                              child: Icon(
                                Icons.explore_outlined,
                                size: MediaQuery.of(context).size.width * 0.03,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "Navigation",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Routing & Passes",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Topics",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "4 Lesson",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.04,
                          child: Icon(
                            Icons.text_fields_outlined,
                            size: MediaQuery.of(context).size.width * 0.04,
                            color: Colors.blue[900],
                          ),
                        ),

                        SizedBox(width: width * 0.01),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Text Field",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "User Input & controller",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.04,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.blue[900],
                            size: MediaQuery.of(context).size.width * 0.07,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buttons",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Elevated, Filled & Icon button",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.04,
                          child: Icon(
                            Icons.crop_square_outlined,
                            color: Colors.blue[900],
                            size: MediaQuery.of(context).size.width * 0.06,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Container",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "BoxDecoration & Padding Layout",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.04,
                          child: Icon(
                            Icons.alt_route_rounded,
                            color: Colors.blue[900],
                            size: MediaQuery.of(context).size.width * 0.05,
                          ),
                        ),

                        SizedBox(width: width * 0.01),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Navigation",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Navigator 2.0 & routes",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.03,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
      else{
        return Scaffold(
          backgroundColor: Colors.grey[110],
          appBar: AppBar(
            backgroundColor: Colors.grey[100],
            // leadingWidth: width*0.3,
            toolbarHeight: width * 0.10,
            title: Padding(
              padding: const EdgeInsets.only(left: 600,),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    // height: height*0.04,
                    width: width * 0.04,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.bolt,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width * 0.02,
                    ),
                  ),
                  SizedBox(width: width * 0.05),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.01,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Stack(
                children: [
                  IconButton(
                    iconSize: width * 0.035,
                    padding: EdgeInsets.all(width * 0.02),
                    icon: Icon(
                      Icons.notification_add_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  Positioned(
                    right: width * 0.017,
                    top: width * 0.017,
                    child: Container(
                      height: width * 0.015,
                      width: width * 0.015,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: width * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 600),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.02,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.02,
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(left: 600,right: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Welcome To Flutter App",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.01,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Learn Flutter Step by Step",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.01,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "new course 2025",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                  MediaQuery.of(context).size.width * 0.01,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Learn Flutter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.01,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Build beautiful apps with Flutter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width * 0.01,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Start Learning",
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width * 0.01,
                                      color: Colors.blue[800],
                                    ),
                                  ),
                                  SizedBox(width: width * 0.01),
                                  Icon(
                                    Icons.play_arrow,
                                    size: MediaQuery.of(context).size.width * 0.01,
                                    color: Colors.blue[800],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        // height: MediaQuery.of(context).size.height*0.07,
                        width: MediaQuery.of(context).size.width * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.bolt,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flutter Topics",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * 0.015,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: MediaQuery.of(context).size.width * 0.015,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(15),
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  childAspectRatio: width < 400 ? 1.0 : 1.2,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.02,
                              child: Icon(
                                Icons.widgets_outlined,
                                size: MediaQuery.of(context).size.width * 0.02,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "Widgets",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.015,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Core visual elements",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.01,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.02,
                              child: Icon(
                                Icons.code,
                                size: MediaQuery.of(context).size.width * 0.02,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "Dart",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.015,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Language Essential",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.01,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.02,
                              child: Icon(
                                Icons.palette_outlined,
                                size: MediaQuery.of(context).size.width * 0.02,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "UI Design",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.015,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Layout & Animation",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.01,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.02,
                              child: Icon(
                                Icons.explore_outlined,
                                size: MediaQuery.of(context).size.width * 0.02,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "Navigation",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.015,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Routing & Passes",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.01,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Topics",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.015,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "4 Lesson",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.015,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.02,
                          child: Icon(
                            Icons.text_fields_outlined,
                            size: MediaQuery.of(context).size.width * 0.02,
                            color: Colors.blue[900],
                          ),
                        ),

                        SizedBox(width: width * 0.01),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Text Field",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.015,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "User Input & controller",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.015,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: MediaQuery.of(context).size.width * 0.025,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.02,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.blue[900],
                            size: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buttons",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.015,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Elevated, Filled & Icon button",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.015,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: MediaQuery.of(context).size.width * 0.025,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.02,
                          child: Icon(
                            Icons.crop_square_outlined,
                            color: Colors.blue[900],
                            size: MediaQuery.of(context).size.width * 0.03,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Container",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.015,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "BoxDecoration & Padding Layout",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.015,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: MediaQuery.of(context).size.width * 0.025,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.02,
                          child: Icon(
                            Icons.alt_route_rounded,
                            color: Colors.blue[900],
                            size: MediaQuery.of(context).size.width * 0.025,
                          ),
                        ),

                        SizedBox(width: width * 0.01),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Navigation",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.015,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Navigator 2.0 & routes",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.015,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: MediaQuery.of(context).size.width * 0.025,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}

