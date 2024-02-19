import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:house/pages/homepage/home.dart';
import 'package:house/pages/login/login.dart';
import 'package:house/pages/login/otp.dart';
import 'package:firebase_database/firebase_database.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.ref('UserData');

  String value = "Choose Your Role";
  bool _isLoading = false;

  /// password
  bool _obscured = false;
  final textFieldFocusNode = FocusNode();
  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

//snackbar
  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.lightGreen,
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }

  //creating user
  Future<void> CreateAcc() async {
    var emailAddress = emailController.text.trim();
    var password = passwordController.text.trim();
    var name = nameController.text.trim();
    var phone = phoneController.text.trim();

    if (emailAddress.isEmpty ||
        password.isEmpty ||
        name.isEmpty ||
        phone.isEmpty) {
      _showErrorSnackbar('All fields must be filled.');
      return;
    }

    try {
      setState(() {
        _isLoading = true;
      });

      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      if (credential != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Account created successfully!",
              style: TextStyle(color: Colors.white),
            ),
            duration: Duration(seconds: 3),
            backgroundColor: Colors.lightGreen,
            action: SnackBarAction(
              label: 'Dismiss',
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
        );
        databaseRef
            .child(DateTime.now().microsecondsSinceEpoch.toString())
            .set({
          'id': DateTime.now().microsecondsSinceEpoch.toString(),
          'Name': nameController.text,
          'Email': emailController.text,
          'Phone': phoneController.text,
          'password': passwordController.text,
        });
        Navigator.pop(context);
      }
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
    } catch (e) {
      // Handle other exceptions
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 0, 20, 30),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/login.png"),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Phone No.",
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                focusNode: textFieldFocusNode,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        _obscured
                            ? Icons.visibility_off_rounded
                            : Icons.visibility_rounded,
                        size: 24,
                      ),
                    ),
                  ),
                  hintText: "Password",
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  hint: value == "Choose Your Role"
                      ? Text('Choose Your Role')
                      : Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ),
                  isExpanded: true,
                  onChanged: (newValue) {
                    setState(() {
                      value = newValue.toString();
                    });
                  },
                  items: <String>[
                    'Buyer',
                    'Agent',
                    'Backend Team',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10.0)),
                child: _isLoading
                    ? Center(child: CircularProgressIndicator())
                    : ElevatedButton(
                        onPressed: () {
                          CreateAcc();
                          // if (emailController != '' &&
                          //     nameController != '' &&
                          //     passwordController != '' &&
                          //     phoneController != '') {
                          //   databaseRef
                          //       .child(
                          //           DateTime.now().microsecondsSinceEpoch.toString())
                          //       .set({
                          //     'id': DateTime.now().microsecondsSinceEpoch.toString(),
                          //     'Name': nameController.text,
                          //     'Email': emailController.text,
                          //     'Phone': phoneController.text,
                          //     'password': passwordController.text,
                          //   });
                          //   Navigator.pop(context);
                          // } else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(
                          //       content: Text(
                          //         "Select Your Role First",
                          //         style: TextStyle(color: Colors.white),
                          //       ),
                          //       duration: Duration(seconds: 5),
                          //       backgroundColor: Colors.lightGreen,
                          //       action: SnackBarAction(
                          //         label: 'Dismiss',
                          //         textColor: Colors.white,
                          //         onPressed: () {},
                          //       ),
                          //     ),
                          //   );
                          // }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text(
                          'Sign-Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginpage()),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18, color: Colors.lightGreen),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
