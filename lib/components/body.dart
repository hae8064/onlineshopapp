import 'package:flutter/material.dart';
import 'package:onlineshopapp/components/categories.dart';
import 'package:onlineshopapp/components/item_cart.dart';
import 'package:onlineshopapp/constants.dart';
import 'package:onlineshopapp/details/details_screen.dart';
import 'package:onlineshopapp/models/Product.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                crossAxisCount: 2,
                childAspectRatio: 0.75),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],

              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      product: products[index],
                    ),
                  ),
                );
              },

              //유튜브 코드
              // press: () {Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DetailScreen(product: products[index],),
              //   ),
              // );}
            ),
          ),
        ))
      ],
    );
  }
}

