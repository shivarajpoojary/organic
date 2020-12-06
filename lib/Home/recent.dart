import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentView extends StatelessWidget {
  const RecentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recently Viewed ',
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.left,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 300,
                  child: SizedBox(
                    height: 80,
                    width: 60,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 4,
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.orange.withOpacity(0.4),
                          ),
                          child: SvgPicture.asset(
                            "assets/carrot.svg",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        title: Text('Carrot'),
                        subtitle: Text('Check out with great offer'),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: SizedBox(
                    height: 80,
                    width: 60,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 4,
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.orange.withOpacity(0.4),
                          ),
                          child: SvgPicture.asset(
                            "assets/pineapple.svg",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        title: Text('Pineapple'),
                        subtitle: Text('Check out with great offer'),
                      ),
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
