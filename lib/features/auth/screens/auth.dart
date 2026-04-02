import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thread_com/features/auth/cubit/auth_cubit.dart';
import 'package:thread_com/features/home/fua.dart';


class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfffdfbfb),
              Color(0xffebedee),
              Color(0xffdbeafe),
              Color(0xffdcfce7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
        
            if (state.status == AuthStatus.error) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Tizimga kirishda xatolik yuz berdi"),
                  backgroundColor: Colors.redAccent,
                ),
              );
            }
           
            if (state.status == AuthStatus.success) {
              
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "English (US)",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const Spacer(),

                
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJa5buc9fiulK6yl0O4o9WGa3FLrEINhyxcw&s",
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(height: 50),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: state.status == AuthStatus.loading
                        ? const CircularProgressIndicator(color: Color(0xff1877F2))
                        : _buildGoogleButton(context),
                  ),
                  SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 15),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(12),
                                            border: Border.all(color: Colors.grey.shade300),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email ",
                                            ),
                                          ),
                                        ),
                      ),
                SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 15),
                                        decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                                        ),
                                        child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                                        ),
                                      ),
                    ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Container(
                    height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                    
                  ),
                  child: Center(
                    child: Text("Log In ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff000000)),),
                  ),
                  ),
                ),
                  const Spacer(),

                  const Column(
                    children: [
                      Icon(Icons.all_inclusive, size: 30, color: Colors.black54),
                      SizedBox(height: 4),
                      Text(
                        "Meta",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }


  Widget _buildGoogleButton(BuildContext context) {
    return InkWell(
      onTap: () => context.read<AuthCubit>().signInWithGoogle(),
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            const BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child:  InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.g_mobiledata, size: 30, color: Colors.red), 
              SizedBox(width: 8),
              Text(
                "Continue with Google",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              
            ],
          ),
        ),
        
      ),
    );
  }
}