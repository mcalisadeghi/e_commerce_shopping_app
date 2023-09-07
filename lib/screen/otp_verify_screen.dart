import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/reccovery_screen.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({super.key});

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

  TextEditingController textEditingController =
      new TextEditingController(text: "");

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
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'enter otp',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'ٍEnter the code we hace setn to your numbe.',
                  style: TextStyle(
                    fontSize: 100,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFieldPin(
                textController: textEditingController,
                autoFocus: false,
                codeLength: 4,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 55.0,
                margin: 10,
                selectedBoxSize: 46.0,
                textStyle: TextStyle(fontSize: 16),
                defaultDecoration: _pinPutDecoration.copyWith(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  setState(
                    () {},
                  );
                },
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecoveryScreen(),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(
                    55,
                  ),
                  backgroundColor: const Color(
                    0xFFEF6969,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
