import 'package:flutter/material.dart';
import 'package:flutter_application_project_1/Pages/Cart.dart';
import 'package:flutter_application_project_1/Pages/ProductPage.dart';
import 'package:flutter_application_project_1/Pages/ProfilePage.dart';

class HomePage extends StatefulWidget {
  String fName = 'Sameera';
  String lName = 'Hakami';
  String email = 'ssssss@hotmail.com';
  String MobileNumber = '0123456789';
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(
                            fName: widget.fName,
                            lName: widget.lName,
                            email: widget.email,
                            MobileNumber: widget.MobileNumber)));
              },
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
                        borderRadius: const BorderRadius.all(Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            size: 20,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Search for product ..',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // all catigory shop by brand row
                        children: const [
                          RowMenu(MTitle: 'All categories', Mcolor: Color.fromARGB(255, 35, 35, 38)),
                          RowMenu(MTitle: 'Shop by Brand', Mcolor: Color.fromARGB(255, 30, 37, 138)),
                          RowMenu(MTitle: 'Jarir Tickets', Mcolor: Color.fromARGB(255, 216, 216, 16)),
                          RowMenu(MTitle: 'Weekly Offers', Mcolor: Color.fromARGB(255, 16, 216, 26)),
                        ],
                      )),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image.asset(
                            'images/Ad1.png',
                            width: 400,
                          ),
                          Image.asset(
                            'images/Ad2.png',
                            width: 400,
                          ),
                          Image.asset(
                            'images/Ad3.png',
                            width: 400,
                          ),
                        ],
                      )),
                  Row(
                    children: const [
                      Text(
                        'Weekly Offers',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P1.png',
                                              image2: 'images/P11.png',
                                              name: 'Samsung 65" Smart TV',
                                              brand: 'Samsung',
                                              tags: '4K Ultra HD , OLED, Silver, QA65S95BAUXSA',
                                              price: '7,799',
                                              discount: '71%',
                                              youSaved: '19,200',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P1.png',
                                image2: 'images/P11.png',
                                name: 'Samsung 65" Smart TV',
                                brand: 'Samsung',
                                tags: '4K Ultra HD , OLED, Silver, QA65S95BAUXSA',
                                price: '7,799',
                                discount: '71%',
                                youSaved: '19,200',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P2.png',
                                              image2: 'images/P21.png',
                                              name: 'LG 75" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD , LED, Black, QNED75',
                                              price: '7,999',
                                              discount: '60%',
                                              youSaved: '12,000',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P2.png',
                                image2: 'images/P21.png',
                                name: 'LG 75" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD , LED, Black, QNED75',
                                price: '7,999',
                                discount: '60%',
                                youSaved: '12,000',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P3.png',
                                              image2: 'images/P31.png',
                                              name: 'TCL 75" Android TV',
                                              brand: 'TCL',
                                              tags: '4K Ultra HD , QLED, Black',
                                              price: '19,999',
                                              discount: '33%',
                                              youSaved: '10,000',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P3.png',
                                image2: 'images/P31.png',
                                name: 'TCL 75" Android TV',
                                brand: 'TCL',
                                tags: '4K Ultra HD , QLED, Black',
                                price: '19,999',
                                discount: '33%',
                                youSaved: '10,000',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P4.png',
                                              image2: 'images/P41.png',
                                              name: 'LG 75" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD Nano Cell, QNED, Black, QNED806Q',
                                              price: '5,499',
                                              discount: '63%',
                                              youSaved: '9,500',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P4.png',
                                image2: 'images/P41.png',
                                name: 'LG 75" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD Nano Cell, QNED, Black, QNED806Q',
                                price: '5,499',
                                discount: '63%',
                                youSaved: '9,500',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P5.png',
                                              image2: 'images/P51.png',
                                              name: 'LG 55" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD , OLED, Black',
                                              price: '5,499',
                                              discount: '63%',
                                              youSaved: '9,500',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P5.png',
                                image2: 'images/P51.png',
                                name: 'LG 55" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD , OLED, Black',
                                price: '5,499',
                                discount: '63%',
                                youSaved: '9,500',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P6.png',
                                              image2: 'images/P6.png',
                                              name: 'LG 55" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD , OLED, Black, A26LA',
                                              price: '3,999',
                                              discount: '68%',
                                              youSaved: '8,600',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P6.png',
                                image2: 'images/P6.png',
                                name: 'LG 55" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD , OLED, Black, A26LA',
                                price: '3,999',
                                discount: '68%',
                                youSaved: '8,600',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P7.png',
                                              image2: 'images/P71.png',
                                              name: 'Haier 65" Android TV',
                                              brand: 'Haier',
                                              tags: '4K Ultra HD , OLED, Silver, H65S9UG',
                                              price: '5,499',
                                              discount: '55%',
                                              youSaved: '6,800',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P7.png',
                                image2: 'images/P71.png',
                                name: 'Haier 65" Android TV',
                                brand: 'Haier',
                                tags: '4K Ultra HD , OLED, Silver, H65S9UG',
                                price: '5,499',
                                discount: '55%',
                                youSaved: '6,800',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P8.png',
                                              image2: 'images/P81.png',
                                              name: 'Haier 85" Android TV',
                                              brand: 'Haier',
                                              tags: '4K Ultra HD , HQLED, Silver, H85S5UG',
                                              price: '6,599',
                                              discount: '49%',
                                              youSaved: '6,400',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P8.png',
                                image2: 'images/P81.png',
                                name: 'Haier 85" Android TV',
                                brand: 'Haier',
                                tags: '4K Ultra HD , HQLED, Silver, H85S5UG',
                                price: '6,599',
                                discount: '49%',
                                youSaved: '6,400',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P9.png',
                                              image2: 'images/P91.png',
                                              name: 'samsung 65" Smart TV',
                                              brand: 'samsung',
                                              tags: '4K Ultra HD , Neo QLED, Eclipse Silver, QN85A',
                                              price: '5,999',
                                              discount: '53%',
                                              youSaved: '7,000',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P9.png',
                                image2: 'images/P91.png',
                                name: 'samsung 65" Smart TV',
                                brand: 'samsung',
                                tags: '4K Ultra HD , Neo QLED, Eclipse Silver, QN85A',
                                price: '5,999',
                                discount: '53%',
                                youSaved: '7,000',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P10.png',
                                              image2: 'images/P101.png',
                                              name: 'LG 55" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD , Black, QNED80',
                                              price: '3,799',
                                              discount: '63%',
                                              youSaved: '6,700',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P10.png',
                                image2: 'images/P101.png',
                                name: 'LG 55" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD , Black, QNED80',
                                price: '3,799',
                                discount: '63%',
                                youSaved: '6,700',
                              )),
                        ],
                      )),
                  Row(
                    children: const [
                      Text(
                        'New Arrivals',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P1.png',
                                              image2: 'images/P11.png',
                                              name: 'Samsung 65" Smart TV',
                                              brand: 'Samsung',
                                              tags: '4K Ultra HD , OLED, Silver, QA65S95BAUXSA',
                                              price: '7,799',
                                              discount: '71%',
                                              youSaved: '19,200',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P1.png',
                                image2: 'images/P11.png',
                                name: 'Samsung 65" Smart TV',
                                brand: 'Samsung',
                                tags: '4K Ultra HD , OLED, Silver, QA65S95BAUXSA',
                                price: '7,799',
                                discount: '71%',
                                youSaved: '19,200',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P2.png',
                                              image2: 'images/P21.png',
                                              name: 'LG 75" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD , LED, Black, QNED75',
                                              price: '7,999',
                                              discount: '60%',
                                              youSaved: '12,000',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P2.png',
                                image2: 'images/P21.png',
                                name: 'LG 75" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD , LED, Black, QNED75',
                                price: '7,999',
                                discount: '60%',
                                youSaved: '12,000',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P3.png',
                                              image2: 'images/P31.png',
                                              name: 'TCL 75" Android TV',
                                              brand: 'TCL',
                                              tags: '4K Ultra HD , QLED, Black',
                                              price: '19,999',
                                              discount: '33%',
                                              youSaved: '10,000',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P3.png',
                                image2: 'images/P31.png',
                                name: 'TCL 75" Android TV',
                                brand: 'TCL',
                                tags: '4K Ultra HD , QLED, Black',
                                price: '19,999',
                                discount: '33%',
                                youSaved: '10,000',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P4.png',
                                              image2: 'images/P41.png',
                                              name: 'LG 75" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD Nano Cell, QNED, Black, QNED806Q',
                                              price: '5,499',
                                              discount: '63%',
                                              youSaved: '9,500',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P4.png',
                                image2: 'images/P41.png',
                                name: 'LG 75" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD Nano Cell, QNED, Black, QNED806Q',
                                price: '5,499',
                                discount: '63%',
                                youSaved: '9,500',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P5.png',
                                              image2: 'images/P51.png',
                                              name: 'LG 55" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD , OLED, Black',
                                              price: '5,499',
                                              discount: '63%',
                                              youSaved: '9,500',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P5.png',
                                image2: 'images/P51.png',
                                name: 'LG 55" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD , OLED, Black',
                                price: '5,499',
                                discount: '63%',
                                youSaved: '9,500',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P6.png',
                                              image2: 'images/P6.png',
                                              name: 'LG 55" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD , OLED, Black, A26LA',
                                              price: '3,999',
                                              discount: '68%',
                                              youSaved: '8,600',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P6.png',
                                image2: 'images/P6.png',
                                name: 'LG 55" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD , OLED, Black, A26LA',
                                price: '3,999',
                                discount: '68%',
                                youSaved: '8,600',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P7.png',
                                              image2: 'images/P71.png',
                                              name: 'Haier 65" Android TV',
                                              brand: 'Haier',
                                              tags: '4K Ultra HD , OLED, Silver, H65S9UG',
                                              price: '5,499',
                                              discount: '55%',
                                              youSaved: '6,800',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P7.png',
                                image2: 'images/P71.png',
                                name: 'Haier 65" Android TV',
                                brand: 'Haier',
                                tags: '4K Ultra HD , OLED, Silver, H65S9UG',
                                price: '5,499',
                                discount: '55%',
                                youSaved: '6,800',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P8.png',
                                              image2: 'images/P81.png',
                                              name: 'Haier 85" Android TV',
                                              brand: 'Haier',
                                              tags: '4K Ultra HD , HQLED, Silver, H85S5UG',
                                              price: '6,599',
                                              discount: '49%',
                                              youSaved: '6,400',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P8.png',
                                image2: 'images/P81.png',
                                name: 'Haier 85" Android TV',
                                brand: 'Haier',
                                tags: '4K Ultra HD , HQLED, Silver, H85S5UG',
                                price: '6,599',
                                discount: '49%',
                                youSaved: '6,400',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P9.png',
                                              image2: 'images/P91.png',
                                              name: 'samsung 65" Smart TV',
                                              brand: 'samsung',
                                              tags: '4K Ultra HD , Neo QLED, Eclipse Silver, QN85A',
                                              price: '5,999',
                                              discount: '53%',
                                              youSaved: '7,000',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P9.png',
                                image2: 'images/P91.png',
                                name: 'samsung 65" Smart TV',
                                brand: 'samsung',
                                tags: '4K Ultra HD , Neo QLED, Eclipse Silver, QN85A',
                                price: '5,999',
                                discount: '53%',
                                youSaved: '7,000',
                              )),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => productPage(
                                              image1: 'images/P10.png',
                                              image2: 'images/P101.png',
                                              name: 'LG 55" Smart TV',
                                              brand: 'LG',
                                              tags: '4K Ultra HD , Black, QNED80',
                                              price: '3,799',
                                              discount: '63%',
                                              youSaved: '6,700',
                                            )));
                              },
                              child: Product(
                                image1: 'images/P10.png',
                                image2: 'images/P101.png',
                                name: 'LG 55" Smart TV',
                                brand: 'LG',
                                tags: '4K Ultra HD , Black, QNED80',
                                price: '3,799',
                                discount: '63%',
                                youSaved: '6,700',
                              )),
                        ],
                      )),
                ],
              ),
            )),
      ),
    );
  }
}

class Product extends StatelessWidget {
  String image1 = '';
  String image2 = '';
  String name = '';
  String brand = '';
  String tags = '';
  String price = '';
  String discount = '';
  String youSaved = '';

  Product(
      {required this.image1,
      required this.image2,
      required this.name,
      required this.brand,
      required this.tags,
      required this.price,
      required this.discount,
      required this.youSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(3))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image1,
                width: 100,
              ),
              //const Icon(Icons.circle, color: Colors.black, size: 20),
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 203, 203, 207),
                    border: Border.all(color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Text(
                  tags,
                  style: const TextStyle(fontSize: 10),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(text: 'SR', style: TextStyle(color: Colors.black, fontSize: 10)),
                    TextSpan(text: price, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    TextSpan(text: discount, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Text(
                'Inclusive of VAT',
                style: TextStyle(fontSize: 10),
              ),
              // save money container
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 202, 236, 197),
                    border: Border.all(color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(3))),
                child: Row(
                  children: [
                    const Icon(
                      Icons.discount,
                      color: Colors.green,
                      size: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(text: '   Save SR  ', style: TextStyle(color: Colors.black, fontSize: 10)),
                          TextSpan(
                              text: youSaved, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(3))),
                child: Row(
                  children: const [
                    Icon(
                      Icons.compare_arrows_rounded,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 130, 39, 32),
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowMenu extends StatelessWidget {
  // This widget is the root of your application.

  const RowMenu({Key? key, required this.MTitle, required this.Mcolor}) : super(key: key);

  final String MTitle;
  final Color Mcolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            // color: const Color.fromRGBO(0, 0, 100, 1),
            border: Border.all(
              color: const Color.fromARGB(255, 225, 225, 225),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    MTitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.grey,
                    size: 10,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 1, 0, 8),
              child: Container(
                height: 1,
                color: Mcolor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
