import 'package:flutter/material.dart';
import 'package:thread_com/features/note_app/screens/note_app.dart';
import 'package:thread_com/features/profile/screens/profile.dart';
import 'package:thread_com/features/search/screens/search.dart';

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
      backgroundColor: const Color(0XFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 10),
                Center(child: Icon(Icons.alternate_email, size: 35)),
                SizedBox(height: 10),

                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 20,backgroundImage: NetworkImage("https://static.vecteezy.com/ti/vettori-gratis/p1/1921774-personaggio-avatar-circolare-bella-donna-capelli-rossi-nella-cornice-gratuito-vettoriale.jpg"),),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Ruchi_shah",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("49m"),
                              SizedBox(width: 5),
                              Icon(Icons.more_horiz),
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
                                  setState(() {
                                    red = !red;
                                  });
                                },
                                child: Icon(
                                  red ? Icons.favorite : Icons.favorite_border,
                                  color: red ? Colors.red : Colors.black,
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
                          Text("1K like"),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 20,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvET8eucbnWgsAueENeG7Kmuu0U3v51b5Zg6KpSaRyKw&s"),),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Payal_shah",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("44m"),
                              SizedBox(width: 5),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("Yes"),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    red2 = !red2;
                                  });
                                },
                                child: Icon(
                                  red2 ? Icons.favorite : Icons.favorite_border,
                                  color: red2 ? Colors.red : Colors.black,
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
                          Text("10K like"),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
               
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 20,backgroundImage:NetworkImage("https://static.vecteezy.com/system/resources/previews/001/912/726/non_2x/beautiful-woman-in-frame-circular-avatar-character-free-vector.jpg") ,),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Krunal modi",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("50m"),
                              SizedBox(width: 5),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("Hey @zuck where is my verified?"),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    red3 = !red3;
                                  });
                                },
                                child: Icon(
                                  red3 ? Icons.favorite : Icons.favorite_border,
                                  color: red3 ? Colors.red : Colors.black,
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
                          Text("2 replies • People liked your content"),
                        ],
                      ),
                    ),
                  ],
                ),

                 SizedBox(height: 20),
              
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       
                     CircleAvatar(radius: 20,backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/004/477/337/non_2x/face-young-man-in-frame-circular-avatar-character-icon-free-vector.jpg"),),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "zuck",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.blue,
                                size: 16,
                              ),
                              Spacer(),
                              Text("50m"),
                              SizedBox(width: 5),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("Just a sec...😂"),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    red4 = !red4;
                                  });
                                },
                                child: Icon(
                                  red4 ? Icons.favorite : Icons.favorite_border,
                                  color: red4 ? Colors.red : Colors.black,
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
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
          
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(radius: 20,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-eOelAWstLWlhErKrNVrWIK5C_BO01OZEa3SyjD-Xng&s"),),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Sardor_Subhanov",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.blue,
                                size: 16,
                              ),
                              Spacer(),
                              Text("6m"),
                              SizedBox(width: 5),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("Hello new (old) friends ✌️"),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    red5 = !red5;
                                  });
                                },
                                child: Icon(
                                  red5 ? Icons.favorite : Icons.favorite_border,
                                  color: red5 ? Colors.red : Colors.black,
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
                          Text("32K like"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                
                child: SizedBox(
                  height: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Send",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "Coments",
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Column(
                      
                        children: [
                          
                          Align(
                            alignment: AlignmentGeometry.bottomLeft,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.picture_as_pdf),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: Colors.blue,

        shape: const CircleBorder(),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Icon(Icons.add, color: Color(0xffffffff)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Search()),
            );
          } else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          } else if (index == 4) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const NoteApp()),
            );
          }

        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(null), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note, color: Colors.grey, size: 30),
            label: "",
          ),
        ],
      ),
    );
  }
}
