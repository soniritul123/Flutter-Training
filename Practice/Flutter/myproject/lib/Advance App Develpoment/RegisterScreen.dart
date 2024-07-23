import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:myproject/Advance%20App%20Develpoment/LoginScreen.dart';

class myregisterscreen extends StatefulWidget {
  const myregisterscreen({super.key});

  @override
  State<myregisterscreen> createState() => _myregisterscreenState();
}

class _myregisterscreenState extends State<myregisterscreen> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _numberController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> Register(String Username,String Email, String Password) async
  {
    UserCredential? usercredential = await _auth.createUserWithEmailAndPassword(email: Email, password: Password);

     User? user = usercredential.user!;
     await _firebaseFirestore.collection("Customer").doc(user.uid).set({"Username" : Username, "Email" : Email});

     print("Registered Successfully!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register Here",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_city),
                    labelText: "Address",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: IntlPhoneField(
                  controller: _numberController,
                  flagsButtonPadding: const EdgeInsets.all(8),
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: FlutterPwValidator(
                    controller: _passwordController,
                    minLength: 6,
                    uppercaseCharCount: 1,
                    numericCharCount: 4,
                    specialCharCount: 1,
                    width: 350,
                    height: 120,
                    onSuccess: () {
                      print("MATCHED");
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text("Password is matched")));
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Register(
                      _nameController.text.toString(),
                      _emailController.text.toString(),
                      _passwordController.text.toString(),
                    );
                    _nameController.clear();
                    _emailController.clear();
                    _addressController.clear();
                    _passwordController.clear();
                    _numberController.clear();
                  },
                  child: Container(
                    height: 52,
                    width: 343,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromRGBO(3, 31, 37, 1)),
                    child: Center(
                        child: Text(
                      "REGISTER",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 2,
                    width: 87,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  Text(
                    "Or Register with",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(33, 33, 36, 1)),
                  ),
                  Container(
                    height: 2,
                    width: 87,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     InkWell(
              //         onTap: () {},
              //         child: Image.asset(
              //           "assets/images/google.png",
              //           height: 50,
              //         )),
              //     IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.apple,
              //           size: 55,
              //           color: Colors.black,
              //         )),
              //     IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.facebook,
              //           size: 55,
              //           color: Colors.blue,
              //         ))
              //   ],
              // ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Are You Already Register? "),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreenShop(),
                          ));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Color.fromARGB(255, 225, 109, 37),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
