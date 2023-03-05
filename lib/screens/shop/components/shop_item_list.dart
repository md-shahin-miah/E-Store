import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../app_properties.dart';
import '../../../models/product.dart';
import '../../product/components/color_list.dart';
import '../../product/components/shop_product.dart';

class ShopItemList extends StatefulWidget {
  final Product product;
  final VoidCallback onRemove;

  ShopItemList(this.product, {required this.onRemove});

  @override
  _ShopItemListState createState() => _ShopItemListState();
}

class _ShopItemListState extends State<ShopItemList> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
      height: 130,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0, 0.9),
            child: Container(
                height: 100,
                margin: EdgeInsets.only(left: 15.0,right: 5,top: 5,bottom: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadow,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 12.0, right: 2.0),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,

                              child: Text(
                                widget.product.name,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: darkGrey,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 140,
                                padding: const EdgeInsets.only(
                                    left: 22.0, top: 8.0, bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    ColorOption(Colors.red),
                                    Text(
                                      '\$${widget.product.price}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: darkGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 60,

                        child: Theme(
                            data: ThemeData(
                                accentColor: Colors.black,
                                textTheme: TextTheme(
                                  headline6: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  bodyText1: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey[400],
                                  ),
                                )),
                            child: NumberPicker(
                              value: quantity,
                              minValue: 1,
                              maxValue: 10,
                              onChanged: (value) {
                                setState(() {
                                  quantity = value;
                                });
                              },
                            )),
                      )
                    ])),
          ),
          Positioned(
              top: 5,
              left: 5,
              child: ShopProductDisplay(
                widget.product,
                onPressed: widget.onRemove,
              )),
        ],
      ),
    );
  }
}
