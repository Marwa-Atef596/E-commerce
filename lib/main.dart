import 'package:e_commerce/core/app_colors.dart';
import 'package:e_commerce/core/keys.dart';
import 'package:e_commerce/view/auth/ui/login_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Keys.url,
    anonKey: Keys.anonKey,
  );
  runApp(const OurMarket());
}

class OurMarket extends StatelessWidget {
  const OurMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
