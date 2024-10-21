import 'package:complete_ecomerce_app/screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

  class ForgotScreen extends StatefulWidget {

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool crlButton = false;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60,),
              Text(
                "Please enter your email address. you will receive a link to "
                    "create or set a new password via email",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      crlButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                                emailController.clear();
                        });
                      },
                      child: Icon(
                        CupertinoIcons.multiply,
                        color: Color(0xffDB3022),
                      ),
                    )
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => RecoveryScreen()));
                  },
                  child: Text(
                    "Send Code",
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(55),
                      backgroundColor: Color(0xffD83022),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  )
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("OR"),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => OTPScreen()));
                        },
                        child: Text(
                          "Verify Using Number",
                          style: TextStyle(
                              color: Color(0xffFF6969),
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}