import 'package:first_fruit_mock/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class DescOrderScreen extends StatefulWidget {
  static const routeName = '/orderanddes';
  @override
  _DescOrderScreenState createState() => _DescOrderScreenState();
}

class _DescOrderScreenState extends State<DescOrderScreen> {
  int qnt = 1;
  double price = 1.01;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                  Color.fromRGBO(237, 66, 100, 1),
                  Color.fromRGBO(255, 237, 188, 1)
                ])),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  bottom: MediaQuery.of(context).size.height * 0.6,
                  child: Carousel(
                    dotSize: 5,
                    dotBgColor: Colors.transparent,
                    showIndicator: true,
                    images: [
                      Image.network(
                          'https://www.searchpng.com/wp-content/uploads/2018/12/Fruits-PNG-HD-Transparent-Fruits-715x715.png',
                          fit: BoxFit.fill),
                      Image.network(
                          'https://www.searchpng.com/wp-content/uploads/2019/02/Mango-transparent-PNG-715x715.png',
                          fit: BoxFit.fill),
                      Image.network(
                          'https://www.searchpng.com/wp-content/uploads/2019/02/Strawberry-png-image-715x715.png',
                          fit: BoxFit.fill),
                      Image.network(
                        'https://www.searchpng.com/wp-content/uploads/2019/02/Mango-transparent-PNG-715x715.png',
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                    onPressed:
                        () {
                           Navigator.pushReplacementNamed(context,'/');
                        }, //here i will replace the current page with the first screen
                    icon: Icon(Icons.arrow_back_ios,size: 15,),
                  )),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                      child: IconButton(
                    onPressed:
                        () {}, //here i will replace the current page with the first screen
                    icon: Icon(Icons.menu,size: 35,),
                  )),
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Padding(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Mango',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '1lb each',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[300]),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      qnt <= 1 ? null : {qnt--, price -= 1.01};
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Expanded(child: Center(child: Text('$qnt'))),
                              Expanded(
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      qnt++;
                                      price += 1.01;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          '\$${price.toStringAsFixed(2)}',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Product Description',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Text(
                                'Veniam consectetur tempor ex velit proident esse consectetur incididunt ea dolore. Non occaecat esse ut adipisicing pariatur anim nisi laboris commodo minim aliqua ad. Excepteur cillum qui sit amet aute. Ipsum esse non voluptate officia reprehenderit laboris irure. Minim sit reprehenderit adipisicing ex aliquip cillum.Veniam consectetur tempor ex velit proident esse consectetur incididunt ea dolore. Non occaecat esse ut adipisicing pariatur anim nisi laboris commodo minim aliqua ad. Excepteur cillum qui sit amet aute. Ipsum esse non voluptate officia reprehenderit laboris irure. Minim sit reprehenderit adipisicing ex aliquip cillum.',
                                style: TextStyle(fontSize: 18)))),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
