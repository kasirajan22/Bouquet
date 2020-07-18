import 'package:flowershop/models/mSubCategory.dart';
import 'package:flowershop/provider/pSubCategory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubCategoryScreen extends StatelessWidget {
  static const routeName = 'sub-category-screen';

  @override
  Widget build(BuildContext context) {
    final int args = ModalRoute.of(context).settings.arguments;
    List<MSubCategory> items =
        Provider.of<PSubCategory>(context).itemByFilter(args);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Category'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, i) => GridTile(
          child: GestureDetector(
            onTap: () {},
            child: Hero(
              tag: items[i].id,
              child: Image.asset(
                items[i].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          footer: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: GridTileBar(
              backgroundColor: Colors.black54,
              title: Text(
                items[i].subMenuName,
                style: TextStyle(fontSize: 18),
              ),
              trailing: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
                child: Text(
                  'View',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
