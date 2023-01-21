import 'package:flutter/material.dart';

class productPage extends StatefulWidget {
  //const productPage({super.key});
  String image1 = '';
  String image2 = '';
  String name = '';
  String brand = '';
  String tags = '';
  String price = '';
  String discount = '';
  String youSaved = '';

  productPage(
      {required this.image1,
      required this.image2,
      required this.name,
      required this.brand,
      required this.tags,
      required this.price,
      required this.discount,
      required this.youSaved});

  @override
  State<productPage> createState() => _productPage();
}

class _productPage extends State<productPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          // title: widget.name!,
          ),
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 203, 203, 207),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: const BorderRadius.all(Radius.circular(5))),
                        child: Row(
                          children: const [
                            Text(
                              '1',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            fontSize: 30,
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
      body: SafeArea(
        child: ProductDetail(
            image1: widget.image1,
            image2: widget.image2,
            name: widget.name,
            brand: widget.brand,
            tags: widget.tags,
            price: widget.price,
            discount: widget.discount,
            youSaved: widget.youSaved),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  String image1 = '';
  String image2 = '';
  String name = '';
  String brand = '';
  String tags = '';
  String price = '';
  String discount = '';
  String youSaved = '';

  ProductDetail(
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
            border: Border.all(color: Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(3))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        image1,
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        image2,
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                brand,
                style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
              ),
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
              Row(
                children: const [
                  Text(
                    'Read specification',
                    style: TextStyle(color: Colors.blue, fontSize: 10),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                    size: 20,
                  )
                ],
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(text: 'SR', style: TextStyle(color: Colors.black, fontSize: 10)),
                    TextSpan(text: '$price   ', style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    TextSpan(text: discount, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Text(
                'Inclusive of VAT',
                style: TextStyle(fontSize: 10),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 222, 220, 220),
                    size: 20,
                  ),
                ],
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
            ],
          ),
        ),
      ),
    );
  }
}
