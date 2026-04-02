import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thread_com/features/auth/cubit/auth_cubit.dart';
import 'package:thread_com/features/auth/fir.dart';
import 'package:thread_com/features/note_app/cubit/note_cubit.dart';
import 'package:toastification/toastification.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AuthCubit()),
                  BlocProvider(create: (context) =>  HomeCubit()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Fir()),
    );
  }
}
