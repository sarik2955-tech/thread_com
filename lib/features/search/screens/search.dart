import 'package:flutter/material.dart';
import 'package:thread_com/features/profile/screens/profile.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Colors.white,
  body: SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            "Search",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey.shade200,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView(
            children: [

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(radius: 24,
                    backgroundImage: NetworkImage("https://www.vhv.rs/dpng/d/426-4263064_circle-avatar-png-picture-circle-avatar-image-png.png"),),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Jon Wick",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 5),
                              Icon(Icons.verified, color: Colors.blue, size: 16),
                            ],
                          ),
                          Text("Jon_W", style: TextStyle(color: Colors.grey)),
                          Text("35K followers", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: Colors.red,
                        side: BorderSide(color: Colors.red),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("Follow", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(radius: 24,
                    backgroundImage: NetworkImage("https://fapl.ru/upload/2022/06/salah-pfa520.jpg"),),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("M.Salah",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 5),
                              Icon(Icons.verified, color: Colors.blue, size: 16),
                            ],
                          ),
                          Text("M.Salah", style: TextStyle(color: Colors.grey)),
                          Text("916k followers", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: Colors.red,
                        side: BorderSide(color: Colors.red),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("Follow", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(radius: 24,backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/004/477/337/non_2x/face-young-man-in-frame-circular-avatar-character-icon-free-vector.jpg"),),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("zuck",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 5),
                              Icon(Icons.verified, color: Colors.blue, size: 16),
                            ],
                          ),
                          Text("zuck", style: TextStyle(color: Colors.grey)),
                          Text("242k followers", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: Colors.red,
                        side: BorderSide(color: Colors.red),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("Follow", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    ),
  ),
);
  }
}