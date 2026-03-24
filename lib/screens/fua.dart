import 'package:flutter/material.dart';
import 'package:thread_com/screens/profile.dart';
import 'package:thread_com/screens/search.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool red = false;
  bool red2 = false;
  bool red3 = false;
  bool red4 = false;
  bool red5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0XFFFFFFFF),
 body: SafeArea(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Icon(Icons.alternate_email, size: 35),
            ),
            SizedBox(height: 10),
        
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 20),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Ruchi_shah",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Text("49m"),
                                SizedBox(width: 5),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Failures are stepping stones to success. Embrace them, learn from them, and keep moving forward",
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    red = !red;
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Icon(
                                    red? Icons.favorite : Icons.favorite_border,
                                    color: red ? Colors.red  : Colors.black,
                                  ),),
                                SizedBox(width: 15),
                                Icon(Icons.chat_bubble_outline),
                                SizedBox(width: 15),
                                Icon(Icons.repeat),
                                SizedBox(width: 15),
                                Icon(Icons.send),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("1 like"),
                          ],
                        ),
                      )
                    ],
                  ),
        
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 20),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Payal_shah",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Text("44m"),
                                SizedBox(width: 5),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("Yes"),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    red2 = !red2;
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Icon(red2 ? Icons.favorite:Icons.favorite_border,
                                  color:  red2 ? Colors.red : Colors.black,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Icon(Icons.chat_bubble_outline),
                                SizedBox(width: 15),
                                Icon(Icons.repeat),
                                SizedBox(width: 15),
                                Icon(Icons.send),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("1 like"),
                          ],
                        ),
                      )
                    ],
                  ),
        
                  SizedBox(height: 20),
                 
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 20),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Krunal modi",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Text("50m"),
                                SizedBox(width: 5),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("Hey @zuck where is my verified?"),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    red3 = !red3;
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Icon(red3?  Icons.favorite : Icons.favorite_border, 
                                  color: red3 ? Colors.red : Colors.black),
                                ),
                                SizedBox(width: 15),
                                Icon(Icons.chat_bubble_outline),
                                SizedBox(width: 15),
                                Icon(Icons.repeat),
                                SizedBox(width: 15),
                                Icon(Icons.send),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("2 replies • People liked your content"),
                          ],
                        ),
                      )
                    ],
                  ),
        
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 20),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("zuck",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Icon(Icons.verified,
                                    color: Colors.blue, size: 16),
                                Spacer(),
                                Text("50m"),
                                SizedBox(width: 5),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("Just a sec...😂"),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                     red4 = !red4;
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Icon(red4? Icons.favorite: Icons.favorite_border, color:red4? Colors.red : Colors.black)),
                                SizedBox(width: 15),
                                Icon(Icons.chat_bubble_outline),
                                SizedBox(width: 15),
                                Icon(Icons.repeat),
                                SizedBox(width: 15),
                                Icon(Icons.send),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
        
                  SizedBox(height: 20),
        
               
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 20),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("figma",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Icon(Icons.verified,
                                    color: Colors.blue, size: 16),
                                Spacer(),
                                Text("6m"),
                                SizedBox(width: 5),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("Hello new (old) friends ✌️"),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                     red5 = !red5;
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Icon(red5 ? Icons.favorite : Icons.favorite_border, color: red5? Colors.red : Colors.black,)),
                                SizedBox(width: 15),
                                Icon(Icons.chat_bubble_outline),
                                SizedBox(width: 15),
                                Icon(Icons.repeat),
                                SizedBox(width: 15),
                                Icon(Icons.send),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("32k replies • Liked by ..."),
                          ],
                        ),
                      )
                    ],
                  ),
                
          ],
        ),
      ),
    ),
    
 ),
    
      bottomNavigationBar: BottomAppBar(
    color: Colors.white,

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(icon: Icon(Icons.home, color: Colors.grey, size: 30,), onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
        }),
        IconButton(icon: Icon(Icons.search, color: Colors.grey,size: 30,), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
        }),
        IconButton(icon: Icon(Icons.notifications, color: Colors.grey,size: 30,), onPressed: () {}),
        IconButton(icon: Icon(Icons.person, color: Colors.grey,size: 30,), onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Profile ()));
        }),
      ],
    ),
  ),
  
    );
  }
}