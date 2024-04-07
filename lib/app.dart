import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentations/pages/home/controller/home_cubit.dart';
import 'presentations/pages/home/controller/radio_cubit.dart';
import 'theme/theme.dart';
import 'presentations/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> HomeCubit()),
        BlocProvider(create: (_)=> RadioCubit()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const HomePage(),
      ),
    );
  }
}