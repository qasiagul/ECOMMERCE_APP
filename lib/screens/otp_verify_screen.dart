import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

  class OTPVerifyScreen extends StatefulWidget {
    const OTPVerifyScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
    BoxDecoration get _pinPutDecoration {
      return BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(10.0),
      );
    }

    TextEditingController textEditingController = new TextEditingController(text: "");
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Enter OTP",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Enter the OTP we have sent you to your Number,"
                          " please chec your number and enter here OTP to verify",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                TextFieldPin(
                    textController: textEditingController,
                    autoFocus: false,
                    codeLength: 4,
                    alignment: MainAxisAlignment.center,
                    defaultBoxSize: 55.0,
                    margin: 10,
                    selectedBoxSize:50.0,
                    textStyle: TextStyle(fontSize: 16),
                    defaultDecoration: _pinPutDecoration.copyWith(
                        border: Border.all(color: Colors.grey)),
                    selectedDecoration: _pinPutDecoration,
                    onChange: (code) {
                      setState(() {

                      },);
                    },),
                SizedBox(height: 30,),

                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => OTPVerifyScreen()));
                    },
                    child: Text(
                      "Verify",
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
              ],
            ),
          ),
        ),
      );
    }
}

