import 'package:flutter/material.dart';
import 'package:thread_com/features/auth/screens/auth.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.language, size: 28),
              Row(
                children: [
                  Icon(Icons.camera_alt_outlined, size: 26),
                  SizedBox(width: 16),
                  Icon(Icons.menu, size: 28),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sardor Subhanov",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),

                    Row(
                      children: [
                        Text(
                          "Sardor_S",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "threads.net", 
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Curious to learn something\nunique or challenging",
                      style: TextStyle(fontSize: 15),
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        CircleAvatar(radius: 10),
                        SizedBox(width: 6),
                        Text(
                          "26K followers",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              CircleAvatar(
                radius: 40,
                backgroundImage:NetworkImage("https://static.vecteezy.com/system/resources/previews/004/477/343/non_2x/face-young-man-in-frame-circular-avatar-character-icon-free-vector.jpg"),
              ),
            ],
          ),
        ),

        SizedBox(height: 20),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.red,
                    side: BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: Text(
                    "Share profile",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
             child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Colors.red,
                      side: BorderSide(color: Colors.red),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text(
                      "Log Out",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 12),
                      
                    ),
           ),   
           ), 
           SizedBox(height: 20,)
      ],
    ),
  ),
);
  }
}