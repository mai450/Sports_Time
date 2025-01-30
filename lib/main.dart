import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_app/Cubits_Logic/Countries_Screen_Logic/location_cubit_cubit.dart';
import 'package:sports_app/Data/Cubits/Countries_cubit/countries_cubit.dart';
import 'package:sports_app/Data/Cubits/TopScorers_cubit/top_scorers_cubit.dart';
import 'package:sports_app/Screens/Register_Screen/Register_Screen.dart';
import 'package:sports_app/firebase_options.dart';

import 'Data/Cubits/Lega_cubit/get_lega_cubit.dart';
import 'Data/Cubits/Players_cubit/players_cubit.dart';
import 'Data/Cubits/Teams_cubit/teams_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CountriesCubit>(
          create: (BuildContext context) => CountriesCubit(),
        ),
        BlocProvider<PlayersCubit>(
          create: (BuildContext context) => PlayersCubit(),
        ),
        BlocProvider<LocationCubitCubit>(
          create: (BuildContext context) => LocationCubitCubit(),
        ),
        BlocProvider<TeamsCubit>(
          create: (BuildContext context) => TeamsCubit(),
        ),
        BlocProvider<TopScorersCubit>(
          create: (BuildContext context) => TopScorersCubit(),
        ),
        BlocProvider<GetLegaCubit>(
          create: (BuildContext context) => GetLegaCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sport Time',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const RegisterScreen(),
      ),
    );
  }
}
