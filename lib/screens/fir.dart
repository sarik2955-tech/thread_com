import 'package:flutter/material.dart';
import 'package:thread_com/screens/auth.dart';

class Fir extends StatefulWidget {
  const Fir({super.key});

  @override
  State<Fir> createState() => _FirState();
}

class _FirState extends State<Fir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Colors.white,
  body: Column(
    children: [
      Expanded(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/image/per.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),

      Padding(
        padding: EdgeInsets.all(16),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Auth()));
          },
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log in with Instagram",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Sardor_Subhanov",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJa5buc9fiulK6yl0O4o9WGa3FLrEINhyxcw&s",height: 60,width: 60,fit: BoxFit.contain,)
              ],
            ),
          ),
        ),
      ),
    ],
  ),
);
  }
}