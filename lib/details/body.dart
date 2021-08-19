import 'package:flutter/material.dart';
import 'package:onlineshopapp/constants.dart';
import 'package:onlineshopapp/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required Product this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //size가 전체 높이와 너비를 제공한다
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aristocatic Hand Bag",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(text: "Price\n"),
                            TextSpan(
                                text: "\$${product.price}",
                                style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white,fontWeight: FontWeight.bold))
                          ])),
                          SizedBox(
                            width: kDefaultPadding,
                          ),
                          Expanded(child: Image.asset(product.image))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
