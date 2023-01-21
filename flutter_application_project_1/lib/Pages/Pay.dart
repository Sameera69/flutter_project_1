import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  String fName = '';
  String lName = '';
  String email = '';
  String MobileNumber = '';

  Pay();

  @override
  State<Pay> createState() => _Pay();
}

class _Pay extends State<Pay> {
  // This widget is the root of your application.
  String productTitle = 'product';
  @override
  Widget build(BuildContext context) {
    //User model = User(firstName: fName, lastName: lName, email: email, password: password);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.lock_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              'Pay',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Shipping & Payment Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ],
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
                              'Total',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Row(
                                children: const [
                                  Text(
                                    'Show detail',
                                    style: TextStyle(color: Colors.blue, fontSize: 15),
                                  ),
                                  //Icon(Icons.arrow_right, color: Colors.blue, size: 15)
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
                                        text: '230',
                                        style:
                                            TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: const [
                            Text('Shipping To'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('Jeddah, Saudi Arabia'),
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
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Payment',
                              style: TextStyle(color: Colors.black, fontSize: 20),
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
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Card Number',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Name on Card',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Expiration Date',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'CCV',
                                      ),
                                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
