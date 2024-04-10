import 'package:flutter/material.dart';
import 'package:calander/exports/main_export.dart';
import 'package:calander/features/home/bloc/home_bloc.dart';
import 'package:calander/features/home/widget/home_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<HomeBloc>(
            create: (BuildContext context) => HomeBloc(),
          ),
        ],
        child: const HomeView(),
      ),
    );
  }
}
