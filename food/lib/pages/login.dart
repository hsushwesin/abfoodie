import 'package:flutter/material.dart';
import 'package:food/helpers/trianglePainter.dart';
import 'package:food/utils/api.dart';
import 'package:food/utils/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _formKey = GlobalKey<FormState>();
  var _phoneController = TextEditingController();
  var _phoneError = "";
  var _passwordController = TextEditingController();
  var _passwordError = "";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: TrianglePainter(size),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/images/FoodMonkey.png")),
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 35, color: normal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _phoneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Phone cannot be empty";
                              }
                              return null;
                            },
                             decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: "Phone",
                              errorText: _phoneError,
                              errorBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password cannot be empty";
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",
                              errorText: _passwordError,
                              errorBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      var phone = _phoneController.text;
                                      var password = _passwordController.text;

                                      Api.userLogin(
                                         phone, password);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    primary: accent, // Set the background color
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person,
                                          size: 30,
                                          color: Colors
                                              .white), // Set the icon color
                                      SizedBox(width: 10),
                                      Text(
                                        "Login",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors
                                              .white, // Set the text color
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
