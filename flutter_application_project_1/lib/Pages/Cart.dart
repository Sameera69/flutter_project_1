import 'package:flutter/material.dart';
import 'package:flutter_application_project_1/Pages/Pay.dart';

class Cart extends StatefulWidget {
  String fName = '';
  String lName = '';
  String email = '';
  String MobileNumber = '';

  Cart();

  @override
  State<Cart> createState() => _Cart();
}

class _Cart extends State<Cart> {
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Pay()));

                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              'Checkout',
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
                      'Cart',
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
                              'Products',
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
                                                  Icons.favorite,
                                                  color: Colors.grey,
                                                  size: 20,
                                                ),
                                                Text(
                                                  'Add to Wishlist',
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
                                              color: Colors.black,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(8))),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.book,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                              Text(
                                                'VAT',
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
                                                  Icons.favorite,
                                                  color: Colors.grey,
                                                  size: 20,
                                                ),
                                                Text(
                                                  'Add to Wishlist',
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
                                              color: Colors.black,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(8))),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.book,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                              Text(
                                                'VAT',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
