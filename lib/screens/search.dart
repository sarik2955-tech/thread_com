import 'package:flutter/material.dart';
import 'package:thread_com/screens/profile.dart';

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
                    CircleAvatar(radius: 24),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("threadsapp",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 5),
                              Icon(Icons.verified, color: Colors.blue, size: 16),
                            ],
                          ),
                          Text("Threads", style: TextStyle(color: Colors.grey)),
                          Text("35 followers", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("Follow", style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(radius: 24),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("ankurwarikoo",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 5),
                              Icon(Icons.verified, color: Colors.blue, size: 16),
                            ],
                          ),
                          Text("Ankur Warikoo", style: TextStyle(color: Colors.grey)),
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
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("Follow", style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(radius: 24),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Facebook",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 5),
                              Icon(Icons.verified, color: Colors.blue, size: 16),
                            ],
                          ),
                          Text("Facebook", style: TextStyle(color: Colors.grey)),
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
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("Follow", style: TextStyle(color: Colors.black)),
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