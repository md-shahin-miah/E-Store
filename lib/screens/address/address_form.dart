
import 'package:flutter/material.dart';

import '../../app_properties.dart';

class AddAddressForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Flat Number/House Number'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),

            padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
            ),
            child: TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: 'Street'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                  child: Text(
                    'Area',
                    style: TextStyle(fontSize: 12, color: darkGrey),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                  child: Container(
                    padding: EdgeInsets.only(left: 16.0, top: 2.0, bottom: 2.0),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.teal, width: 2)),
                      color: Colors.teal[100],
                    ),
                    child: TextField(
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name on card',
                        hintStyle:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),

            padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Name on card'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),

            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              child: Container(
                padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.teal, width: 1)),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Postal code'),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),

            child: Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: (_) {},
                ),
                Text('Add this to address bookmark')
              ],
            ),
          )
        ],
      ),
    );
  }
}
