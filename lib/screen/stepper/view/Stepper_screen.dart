import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:stepper_ui/screen/stepper/provider/provider.dart';

class Stepper_screen extends StatefulWidget {
  const Stepper_screen({Key? key}) : super(key: key);

  @override
  State<Stepper_screen> createState() => _Stepper_screenState();
}

class _Stepper_screenState extends State<Stepper_screen> {
  Login_screen?login_screenfalse,login_screentrue;
  @override
  Widget build(BuildContext context) {
    login_screenfalse= Provider.of(context,listen: false);
    login_screentrue = Provider.of(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Stepper App'),
          backgroundColor: Colors.red,
        ),
        body: Theme(
          data: ThemeData(
            primarySwatch: Colors.red,
            colorScheme:ColorScheme.light(primary: Colors.red),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stepper(
             type: StepperType.vertical,
                onStepTapped: (index){
               login_screenfalse!.jumpstep(index);
                },
                steps: [
            Step(
              isActive: true,
            title:
            Text("SignUp", style: GoogleFonts.abel(letterSpacing: 1,color: Colors.red)),
            content: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  style: GoogleFonts.abel(letterSpacing: 1,color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Full Name*",
                    labelStyle: GoogleFonts.abel(color: Colors.red,letterSpacing: 1),
                    prefixIcon: Icon(Icons.person_outline,color: Colors.red),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  style: GoogleFonts.abel(letterSpacing: 1,color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    labelText: "Email*",
                    labelStyle: GoogleFonts.abel(color: Colors.red,letterSpacing: 1),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                    prefixIcon: Icon(Icons.email_outlined,color: Colors.red),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    labelText: "Password*",
                    labelStyle: GoogleFonts.abel(color: Colors.red,letterSpacing: 1),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                    prefixIcon: Icon(Icons.lock_outline,color: Colors.red),
                  ),
                ),

                SizedBox(height: 10,),
                TextField(
                  style: GoogleFonts.abel(letterSpacing: 1,color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    labelText: "Confirm Password*",
                    labelStyle: GoogleFonts.abel(color: Colors.red,letterSpacing: 1),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                    prefixIcon: Icon(Icons.lock_person_outlined,color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
          Step(
            isActive: true,
            title:
            Text("Login", style: GoogleFonts.abel(letterSpacing: 1,color: Colors.red)),
            content: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  style: GoogleFonts.abel(letterSpacing: 1,color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "User Name*",
                    labelStyle: GoogleFonts.aBeeZee(color: Colors.red,letterSpacing: 1),
                    prefixIcon: Icon(Icons.person_outline,color: Colors.red),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    labelText: "Password*",
                    labelStyle: GoogleFonts.abel(color: Colors.red,letterSpacing: 1),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                    prefixIcon: Icon(Icons.lock_outline,color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
          Step(
            isActive: true,
            title:
            Text("Home", style: GoogleFonts.abel(letterSpacing: 1,color: Colors.red)),
            content: Text("Login Successful",style: GoogleFonts.abel(color: Colors.red,letterSpacing: 1)),
              ),
             ],
              currentStep: login_screentrue!.i,
              onStepCancel: (){
               login_screenfalse!.backstep();
              },
              onStepContinue: (){
               login_screenfalse!.nextsetp();
              },
            ),
           ),
        ),
       ),
     );
  }
}

