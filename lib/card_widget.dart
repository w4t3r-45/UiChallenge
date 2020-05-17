import 'package:flutter/material.dart';

import 'desc_order_screen.dart';

class Createitem extends StatelessWidget {
  Color clr;
  String url, name, lb;
  bool isLB = false;

  @override
  Createitem(this.clr, this.url, this.lb, this.isLB, this.name);

  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
       Navigator.of(context).pushNamed(DescOrderScreen.routeName);
      },
      child: Material(
        color: clr,
        elevation: 1,
        borderRadius: BorderRadius.circular(25),
        child: Padding(
          padding: const EdgeInsets.only(top: 8,left: 8),
          child: Stack(
                      children: <Widget>[ Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$name',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Visibility(visible: isLB, child: Text('$lb')),
                Text(
                  '\$2.5',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 5),
                Expanded(child: Center(child: Image.network('$url'))),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: InkWell(
                child: Container(
                  child: Icon(Icons.add,color: Colors.grey[500],),
                  height: 50,
                  width: 50,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.grey.withOpacity(0.3),
                    width: 1,
                   ),
                    color: clr.withOpacity(0.5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25))
                 ),
                ),
              ),
            )
            ]
          ),
        ),
      ),
    );
  }
}
