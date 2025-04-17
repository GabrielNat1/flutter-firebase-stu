import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Image.asset('assets/banners/banner_splash.png'),
          Image.asset('assets/logo.png', width: 192),
          Text(
            "um parceiro inovador para sua", 
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "melhor experiencia culinaria", 
            style: TextStyle(color: AppColors.mainColor),
            ),
          ElevatedButton(onPressed: () {}, child: Text("bora")),
        ],
      ),
    );
  }
}
