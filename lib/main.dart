import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vleague_app/screens/application_join_screen.dart';
import 'package:vleague_app/screens/competition_result_screen.dart';
import 'package:vleague_app/screens/detail_result_screen.dart';
import 'package:vleague_app/screens/detail_team_screen.dart';
import 'package:vleague_app/screens/ket_qua_thi_dau_screen.dart';
import 'package:vleague_app/screens/lichthidau_screen.dart';
import 'package:vleague_app/screens/sign_in_screen.dart';
import 'package:vleague_app/screens/sign_up_screen.dart';
import './screens/football_team_screen.dart';
import './providers/vleagues.dart';
import './screens/home_screen.dart';
import './screens/rank_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Vleagues(),
      child: MaterialApp(
        title: 'Vleague',
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        // home: const HomeScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          SignInScreen.routeName: (context) => const SignInScreen(),
          SignUpScreen.routeName: (context) => const SignUpScreen(),
          RankScreen.routeName: (context) => RankScreen(),
          FootBallTeamScreen.routeName: (context) => const FootBallTeamScreen(),
          LichThiDauScreen.routeName: (context) => const LichThiDauScreen(),
          KetQuaThiDauScreen.routeName: (context) => const KetQuaThiDauScreen(),
          DetailTeamScreen.routeName: (context) => const DetailTeamScreen(),
          CompetitionResultScreen.routeName: (context) =>
              const CompetitionResultScreen(),
          ApplicationJoinScreen.routeName: (context) =>
              const ApplicationJoinScreen(),
          DetailResultScreen.routeName: (context) => const DetailResultScreen(),
        },
      ),
    );
  }
}
