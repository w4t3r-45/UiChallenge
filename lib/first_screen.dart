import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'card_widget.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/first';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Container(
                    child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 18,
                        )),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 15, right: 5),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ))
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Fruits and Berries',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.blueGrey[100]),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: StaggeredGridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              children: <Widget>[
                Createitem(
                    Colors.pink[50],
                    'https://www.searchpng.com/wp-content/uploads/2018/12/Fruits-PNG-HD-Transparent-Fruits-715x715.png',
                    '5lb',
                    true,
                    'Strawberries'),
                Createitem(
                    Colors.yellow,
                    'https://www.searchpng.com/wp-content/uploads/2019/02/Mango-transparent-PNG-715x715.png',
                    '5lb',
                    false,
                    'Pineapple'),
                Createitem(
                    Colors.purpleAccent[100],
                    'https://www.searchpng.com/wp-content/uploads/2019/02/Strawberry-png-image-715x715.png','',
                    true,
                    'Blueberries'),
                Createitem(
                    Colors.pinkAccent[200],
                    'https://www.searchpng.com/wp-content/uploads/2018/12/Fruits-PNG-HD-Transparent-Fruits-715x715.png',
                    '5lb',
                    true,
                    'Dragon Fruit'),
                Createitem(
                    Colors.pink[50],
                    'https://www.searchpng.com/wp-content/uploads/2019/01/Red-Apple-PNG-Image-715x715.png',
                    '5lb',
                    true,
                    'Strawberries'),
                Createitem(
                    Colors.yellow,
                    'https://www.searchpng.com/wp-content/uploads/2018/12/Fruits-PNG-HD-Transparent-Fruits-715x715.png',
                    '5lb',
                    false,
                    'Pineapple'),
                Createitem(
                    Colors.purpleAccent[100],
                    'https://www.searchpng.com/wp-content/uploads/2018/12/Fruits-PNG-HD-Transparent-Fruits-715x715.png',
                    '5lb',
                    true,
                    'Blueberries'),
                Createitem(
                    Colors.pinkAccent[200],
                    'https://www.searchpng.com/wp-content/uploads/2018/12/Fruits-PNG-HD-Transparent-Fruits-715x715.png',
                    '5lb',
                    true,
                    'Dragon Fruit'),
              ],
              staggeredTiles: [
                StaggeredTile.extent(1, 250),
                StaggeredTile.extent(1, 150),
                StaggeredTile.extent(1, 200),
                StaggeredTile.extent(1, 250),
                StaggeredTile.extent(1, 250),
                StaggeredTile.extent(1, 150),
                StaggeredTile.extent(1, 200),
                StaggeredTile.extent(1, 250)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
