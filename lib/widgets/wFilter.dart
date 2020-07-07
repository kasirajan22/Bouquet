import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      //backgroundColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Filters",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Show Best Seller',
                  style: TextStyle(fontSize: 18),
                ),
                CupertinoSwitch(
                  value: true,
                  onChanged: (value) {},
                  trackColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.grey[200],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Cheap to Expensive',
                  style: TextStyle(fontSize: 18),
                ),
                CupertinoSwitch(
                  value: false,
                  onChanged: (value) {},
                  trackColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.grey[200],
            ),
            Text(
              'Price',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('5'),
                CupertinoSlider(
                  value: 5,
                  onChanged: (val) {},
                  min: 1,
                  max: 7,
                ),
                Text('Max'),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
