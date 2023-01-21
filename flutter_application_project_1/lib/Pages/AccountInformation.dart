import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_project_1/Pages/ProfilePage.dart';

class AccountInfo extends StatefulWidget {
  String fName = '';
  String lName = '';
  String email = '';
  String MobileNumber = '';

  AccountInfo({required this.fName, required this.lName, required this.email, required this.MobileNumber});

  @override
  State<AccountInfo> createState() => _AccountInfo();
}

class _AccountInfo extends State<AccountInfo> {
  final firstNameController = TextEditingController();

  //String? firstName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Mobile Number',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'First Name',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Last Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    //initialValue: widget.email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(labelText: 'Email'),
                    onChanged: (val) {},

                    controller: firstNameController,

                    onSaved: (value) {},
                    // textInputAction: TextInputAction.done,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            // widget.fName = firstNameController.text;
                            if (EmailValidator.validate(firstNameController.text, true)) {
                              widget.email = firstNameController.text;
                            } else {
                              widget.email = widget.email;
                            }

                            //print(widget.fName);
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage(
                                      fName: widget.fName,
                                      lName: widget.lName,
                                      email: widget.email,
                                      MobileNumber: widget.MobileNumber)));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
