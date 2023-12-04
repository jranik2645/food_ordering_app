import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
          ),
        ),
        title: Text(
          'Cheese Pizza',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.black38,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Mized pizza with beef, chilli and cheese",
              style: TextStyle(
              //  color: Colors.black45,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xFFFF2F08),
                  size: 22,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "4.7",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset("images/Pizza.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Calories",
                      style: TextStyle(
                      //  color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "120",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.black38,
                  ),
                 Column(children: [
                   Text('Vol',
                   style: TextStyle(
                     fontSize: 17,
                     fontWeight: FontWeight.bold,
                   ),),
                   SizedBox(height: 8,),
                   Text("120",
                    style: TextStyle(
                       fontSize: 17,
                       fontWeight: FontWeight.bold,
                    ),
                   ),
                 ],),

                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black38,
                ),
                Column(children: [
                  Text('Distance',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 8,),
                  Text("1.1km",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],)



              ],
            ),
               SizedBox(height: 40,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                        children: [
                           Text("Order", style: TextStyle(
                               fontSize: 17,
                                color: Colors.black45,
                                fontWeight: FontWeight.w500,
                           ),),
                            SizedBox(height: 8,),
                            Row(children: [
                               Icon(
                                  Icons.add_circle_outline_outlined,
                                  color: Colors.black45,
                               ),
                                  SizedBox(width: 2,),
                                 Text(
                                    "01",
                                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                 ),
                              SizedBox(width: 2,),

                                Icon(CupertinoIcons.minus_circle, color: Colors.black45,),
                            ],)
                        ],
                   ),
                      Column(
                          children: [
                             Text("Delivery",
                              style: TextStyle(
                                 fontSize: 17,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.black45,
                              ),),
                              SizedBox(height: 8,),
                            Text(
                               "Express",
                               style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                               ),
                            ),
                          ],
                      ),
                     Column(children: [
                         Text("Price", style: TextStyle(fontSize: 17,color: Colors.black45,fontWeight: FontWeight.w500),),
                         SizedBox(height: 8,),
                        Text("\$8.99", style: TextStyle(fontWeight: FontWeight.bold,
                         fontSize: 17,
                           color: Color(0xFFFF2F08),
                        ),)
                     ],)
                 ],
               ),
              )
          ],
        ),
      ),
        bottomNavigationBar: InkWell(
           onTap: (){},
           child: Container(
             height: 70,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                 color: Color(0xFFFF2F08),
                 borderRadius: BorderRadius.circular(10),
               ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                   "Add to Cart", style: TextStyle(
                     color: Colors.white,
                     fontSize: 24
                 ),
                 ),
                 SizedBox(width: 4,),
                Icon(Icons.add_circle_outline_outlined, color: Colors.white,size: 20,)

             ],
         ),

        ),


        ),
    );
  }
}
