import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newproject/bloc/medicine_bloc.dart';
import 'package:newproject/pages/medicine_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocProvider(create: (context)=>MedicineBloc(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MedicinePage(),
    ),
    );
  }
}

