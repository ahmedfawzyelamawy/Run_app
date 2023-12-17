import 'package:flutter/material.dart';
import 'package:task_4/view/screen/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontrollar = TextEditingController();
  TextEditingController passwordcontrollar = TextEditingController();
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333f),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.keyboard_backspace),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/loginscreen.png')),
            SizedBox(
              height: 10,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: emailcontrollar,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.purple),
                ),
                labelText: 'Enter your email',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordcontrollar,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.purple)),
                labelText: 'password',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixIcon: Icon(
                  Icons.password,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obsecure = !obsecure;
                    });
                  },
                  icon: Icon(
                    obsecure ? Icons.visibility : Icons.visibility_off,
                    color: obsecure ? Colors.grey[500] : Colors.black,
                  ),
                ),
              ),
              obscureText: obsecure,
              obscuringCharacter: '*',
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                print(value);
              },
              validator: (value) {
                if ((value ?? '').isEmpty) {
                  return 'please, Enter your password';
                } else if (!RegExp(r'[A-Z]').hasMatch(value ?? '')) {
                  return 'Password Must Contain At Least One Captial Later';
                } else if (!RegExp(r'[0-9]').hasMatch(value ?? '')) {
                  return 'The password must contain numbers';
                } else if (!RegExp(r'[a-z]').hasMatch(value ?? '')) {
                  return 'The password must contain lowercase letters';
                } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                    .hasMatch(value ?? '')) {
                  return 'The password must contain distinctive signs !@#\$%^&*(),.?":{}|<>';
                } else if ((value?.length ?? 0) < 8) {
                  return 'password can`t Be less than 8 characters';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.purple,
                ),
                SizedBox(width: 5),
                Text(
                  'Remember Me',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget password?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    )),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff7B61FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fixedSize: Size(300, 49))),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 2,
                  color: Colors.grey[800],
                )),
                Text('     or continue with     ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Expanded(
                    child: Divider(
                  thickness: 2,
                  color: Colors.grey[800],
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    width: 70,
                    height: 60,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey)),
                    child: Image.asset(
                      'assets/images/google.png',
                      height: 20,
                      width: 40,
                      fit: BoxFit.cover,
                    )),
                Spacer(),
                Container(
                    width: 70,
                    height: 60,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey)),
                    child: Image.asset(
                      'assets/images/face.png',
                      height: 20,
                      width: 40,
                      fit: BoxFit.cover,
                    )),
                Spacer(),
                Container(
                    width: 70,
                    height: 60,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey)),
                    child: Image.asset(
                      'assets/images/twiter.png',
                      height: 20,
                      width: 40,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                Text(
                  'New User?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
