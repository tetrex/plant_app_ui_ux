import 'package:flutter/material.dart';
import 'package:plant_app_ui_ux/constraints.dart';

import 'imageAndIcons.dart';
import 'titleAndPrice.dart';

class DetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: ScrollPhysics(
          parent:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())),
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Description'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
