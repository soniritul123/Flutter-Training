import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myproject/Advance%20App%20Develpoment/Cart.dart';
import 'package:myproject/Advance%20App%20Develpoment/Favourite.dart';
import 'package:myproject/Advance%20App%20Develpoment/ForgetPassword.dart';
import 'package:myproject/Advance%20App%20Develpoment/HomeScreen.dart';
import 'package:myproject/Advance%20App%20Develpoment/ProfilePage.dart';
import 'package:myproject/Advance%20App%20Develpoment/VerifyScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreenShop extends StatefulWidget {
  const LoginScreenShop({super.key});

  @override
  State<LoginScreenShop> createState() => _LoginScreenShopState();
}

class _LoginScreenShopState extends State<LoginScreenShop> {

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> Login(String? Email, String? Password) async
  {
    UserCredential? usercredential =  await _auth.signInWithEmailAndPassword(email: Email!, password: Password!);
    User? user = usercredential.user!;
    if(user != null)
    {
      print("LoginSuccessfully");
      DocumentSnapshot Customer =  await FirebaseFirestore.instance.collection("Customer").doc(user.uid).get();

      String? Username = Customer["Username"];
      print("Welcome: $Username");
    }
    else
    {
      print("Invalid Email Or Password");
    }

  }
  bool showPassword = false;

  void showpassword() {
    showPassword = !showPassword;
  }

  final formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

   Color btnbackgroundColor = Colors.grey.shade300;

  Color btnTextColor = Colors.black26;

  Color emailBorderColor = Colors.grey.shade300;

  bool btnVisible = false;

  @override
  Widget build(BuildContext context) {

    String? validateEmail(String? value) {
      const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
          r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
          r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
          r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
          r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
          r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
          r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
      final regex = RegExp(pattern);

      return value!.isEmpty || !regex.hasMatch(value) ? 'Enter valid email address' : null;
    }
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome Back",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w600)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("login to your account",style: TextStyle(color: Colors.grey,fontSize: 14)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 216, 215, 215),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Image.asset("assets/images/LogoG.png",height: 45,width: 45,fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Text("Or login with",style: TextStyle(color: Colors.grey)),
                    Expanded(
                      child: Divider(
                        indent: 15,
                        endIndent: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 166, 213, 236),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(child: Text("Log In",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500))),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 45,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                child: Container(
                  height: 55,
                  child: Form(
                    child: TextFormField(
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(
                          RegExp("[0-9@a-zA-Z.]"),
                        ),
                      ],
                      autocorrect: false,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: emailController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: () {
                          emailController.clear();
                        }, icon: Icon(Icons.close,color: Colors.grey,)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6), 
                        ),
                        hintText: "Enter email address",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      validator: validateEmail,
                      onChanged: (value) {
                        setState(() {
                          if(validateEmail(value) == null) {
                            emailBorderColor = Colors.black;
                          }
                          else
                          {
                            emailBorderColor = Colors.grey;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Container(
                  height: 55,
                  child: TextField(
                    controller: passwordController,
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: emailBorderColor,
                      //   )
                      // ),
                      hintText: 'Enter Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                           showPassword = !showPassword;
                      }, icon: Icon(showPassword ? Icons.visibility_off : Icons.visibility,color: Colors.grey)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => myforgetpassword()));
                      },
                      child: Text("Forget Password?",style: TextStyle(color: Colors.grey))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    onPressed: () {
                      Login(emailController.text.toString(), 
                            passwordController.text.toString()); 
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Myhomescreen(Username: '',)));
                  }, child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 16))),
                ),
              ),
            ],
          ),
      ),
    );
  }
}