import 'package:flutter/material.dart';
import 'package:flutter_application_project_1/Pages/AccountInformation.dart';

class ProfilePage extends StatefulWidget {
  String fName = '';
  String lName = '';
  String email = '';
  String MobileNumber = '';

  ProfilePage({required this.fName, required this.lName, required this.email, required this.MobileNumber});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  // This widget is the root of your application.
  String productTitle = 'product';
  @override
  Widget build(BuildContext context) {
    //User model = User(firstName: fName, lastName: lName, email: email, password: password);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Welcome,',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AccountInfo(
                                          fName: widget.fName,
                                          lName: widget.lName,
                                          email: widget.email,
                                          MobileNumber: widget.MobileNumber)));
                            },
                            child: const Text(
                              'Edit',
                              style: TextStyle(color: Colors.blue, fontSize: 15),
                            ),
                          ),
                          const Icon(Icons.arrow_right, color: Colors.blue, size: 15)
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  '${widget.fName} ${widget.lName}',
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
                Text(
                  widget.email,
                  style: const TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Text(
                  widget.MobileNumber,
                  style: const TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 33, 84, 126),
                        border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                        borderRadius: const BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            '33214566',
                            style: TextStyle(color: Colors.yellow, fontSize: 20),
                          ),
                          Text(
                            '${widget.fName}${widget.lName}',
                            style: const TextStyle(color: Colors.yellow, fontSize: 20),
                          ),
                          const Text(
                            'EXP Date 04/2025',
                            style: TextStyle(color: Colors.yellow, fontSize: 20),
                          ),
                          const Text(
                            '10%',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const Text(
                            'Discount Card',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 222, 223, 224),
                      border: Border.all(
                        color: const Color.fromARGB(255, 222, 223, 224),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'My stor credit',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Row(
                                children: const [
                                  Text(
                                    'credit transaction',
                                    style: TextStyle(color: Colors.blue, fontSize: 15),
                                  ),
                                  Icon(Icons.arrow_right, color: Colors.blue, size: 15)
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'SR', style: TextStyle(color: Colors.green, fontSize: 10)),
                                    TextSpan(
                                        text: '0',
                                        style:
                                            TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 222, 223, 224),
                      border: Border.all(
                        color: const Color.fromARGB(255, 222, 223, 224),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Wishlist',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Row(
                                children: const [
                                  Text(
                                    'Show all',
                                    style: TextStyle(color: Colors.blue, fontSize: 15),
                                  ),
                                  Icon(Icons.arrow_right, color: Colors.blue, size: 15)
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(8))),
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            'images/Book.png',
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                        Expanded(
                                          child: RichText(
                                            text: const TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Shattered     ',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15)),
                                                TextSpan(text: 'SR', style: TextStyle(color: Colors.red, fontSize: 10)),
                                                TextSpan(
                                                    text: '49',
                                                    style: TextStyle(
                                                        color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    '_____________________________________________________________',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                border: Border.all(
                                                  color: Colors.transparent,
                                                )),
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.grey,
                                                  size: 20,
                                                ),
                                                Text(
                                                  'Remove',
                                                  style: TextStyle(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                border: Border.all(
                                                  color: Colors.transparent,
                                                )),
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.note_add,
                                                  color: Colors.grey,
                                                  size: 20,
                                                ),
                                                Text(
                                                  'Add Note',
                                                  style: TextStyle(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              border: Border.all(
                                                color: Colors.red,
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(8))),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.shopping_cart,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                              Text(
                                                'Add to Cart',
                                                style: TextStyle(color: Colors.white),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 223, 224),
                    border: Border.all(
                      color: const Color.fromARGB(255, 222, 223, 224),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Account Information',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Icon(Icons.arrow_right, color: Colors.blue, size: 15)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 223, 224),
                    border: Border.all(
                      color: const Color.fromARGB(255, 222, 223, 224),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'All Order',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Icon(Icons.arrow_right, color: Colors.blue, size: 15)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 223, 224),
                    border: Border.all(
                      color: const Color.fromARGB(255, 222, 223, 224),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Wishlist',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Icon(Icons.arrow_right, color: Colors.blue, size: 15)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
