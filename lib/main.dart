import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yum_quick/models/user.dart';
import 'package:yum_quick/routes.dart';
import 'package:yum_quick/views/auth/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Ensures binding before initialization

  // Initialize Firebase before running the app
  await Firebase.initializeApp();  // This needs to be awaited

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Adjust for your design
      minTextAdapt: true,
      builder: (context, child) {
        return StreamProvider<CustomUser?>.value(
          value: AuthService().user,  // This should be a stream of CustomUser?
          initialData: null,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.splash,
            routes: AppRoutes.getRoutes(),
          ),
        );
      },
    );
  }
}
