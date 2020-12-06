import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic/constants.dart';
import 'package:organic/module/description.dart';

class Veggiles extends StatelessWidget {
  const Veggiles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Veggies',
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 3),
                  height: MediaQuery.of(context).size.height * 0.22,
                  decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/pineapple.svg",
                          height: MediaQuery.of(context).size.height * 0.095,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "pineapple",
                          style:
                              TextStyle(fontSize: 16, color: ksecondaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RaisedButton.icon(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: kTextColor,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProductDetail();
                            }));
                          },
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text('Buy'),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 3),
                  height: MediaQuery.of(context).size.height * 0.22,
                  decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset("assets/broccoli.svg",
                            height: MediaQuery.of(context).size.height * 0.095),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Broccoli",
                          style:
                              TextStyle(fontSize: 16, color: ksecondaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RaisedButton.icon(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: kTextColor,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProductDetail();
                            }));
                          },
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text('Buy'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
