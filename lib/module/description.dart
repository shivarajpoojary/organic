import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic/constants.dart';
import 'package:organic/productdetail/appbar.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<String> _locations = ['1Kg', '2Kg', '3Kg', '4Kg']; // Option 2
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailAppbar(context),
      body: Container(
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ksecondaryColor.withOpacity(0.1),
              ),
              child: SvgPicture.asset(
                "assets/broccoli.svg",
                height: 350,
                width: 300,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.83,
              height: 50,
              decoration: BoxDecoration(
                  color: ksecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Borccoli',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  DropdownButton(
                    elevation: 0,
                    hint: Text('1 Kg'), // Not necessary for Option 1
                    value: _selectedLocation,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                  Text(
                    "\$12.00",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.83,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 24, color: kPrimaryColor),
                  ),
                  Divider(
                    height: 10,
                    endIndent: 200,
                    color: ksecondaryColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Broccoli (Brassica oleracea var. italica) is an edible green plant in the cabbage family (family Brassicaceae, genus Brassica) whose large flowering head, stalk and small associated leaves are eaten as a vegetable. The word broccoli comes from the Italian plural of broccolo, which means "the flowering crest of a cabbage", and is the diminutive form of brocco, meaning "small nail" or "sprout". ',
                    style: TextStyle(fontSize: 17, color: ksecondaryColor),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.75,
              child: FlatButton(
                onPressed: () {},
                padding: EdgeInsets.all(0),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ksecondaryColor,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(
                        maxWidth: double.infinity, minHeight: 50),
                    child: Text(
                      "Buy",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFEC63E),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.75,
              child: FlatButton(
                onPressed: () {},
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/cart.svg",
                      height: 30,
                      fit: BoxFit.cover,
                      color: kTextColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
