import 'package:flutter/material.dart';

import 'package:flutter_application_1/Screens/filter_screen.dart';

import 'package:flutter_application_1/Screens/text_screen.dart';

import 'package:flutter_application_1/StateManagement/replace.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubits/cubit/change_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChangeCubit>(
          create: (BuildContext context) => ChangeCubit(),
        ),
      ],
      child: MaterialApp(
        home: FilterScreen(),
      ),
    );
  }
}
