import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_ui/screen/stepper/provider/provider.dart';
import 'package:stepper_ui/screen/stepper/view/Stepper_screen.dart';

void main()
{

  runApp(
      MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => Login_screen(),),
     ],
     child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Stepper_screen(),
      },
    ),
  ),
  );
}