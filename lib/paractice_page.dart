import 'package:flutter/material.dart';

class ParacticePage extends StatelessWidget {
  const ParacticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.cyanAccent,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 30,right: 10,left: 10),
                      child: Container(
                        height: 500,
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GridView.count(
                                crossAxisCount: 4,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              padding: EdgeInsets.all(10),
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                  ),

                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                  ),

                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                  ),

                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                  ),

                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.mail_lock_outlined),
                                      labelText: "your Email",
                                      border: OutlineInputBorder()
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "your Email",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text(
                "Bottom sheet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ),
          ),
        ),
      ),
      // AppBar(
      //   toolbarHeight: width * 0.10,
      //   backgroundColor: Colors.grey[50],
      //   leadingWidth: width*0.5,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 600),
      //     child: Row(
      //       children: [
      //         InkWell(
      //             onTap: (){
      //               Navigator.pop(context);
      //             },
      //             child: Icon(Icons.arrow_back,size: MediaQuery.of(context).size.width*0.03,)
      //         ),
      //         SizedBox(width: width*0.01,),
      //         Container(
      //           padding: EdgeInsets.all(5),
      //           // height: height*0.04,
      //           width: width*0.02,
      //           decoration: BoxDecoration(
      //               color: Colors.blue,
      //               borderRadius: BorderRadius.circular(8)
      //           ),
      //           child: Icon(Icons.bolt,color: Colors.white,size: MediaQuery.of(context).size.width*0.01,),
      //         ),
      //         SizedBox(width: width*0.03,),
      //         Text("Setting",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width*0.01,),),
      //
      //       ],
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 600),
      //       child: CircleAvatar(
      //         backgroundColor: Colors.blue,
      //         radius: MediaQuery.of(context).size.width*0.02,
      //         child: Icon(Icons.person,color: Colors.white,size: MediaQuery.of(context).size.width*0.02,),
      //       ),
      //     )
      //   ],
      //
      // ),






    );
  }
}
