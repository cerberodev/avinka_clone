import 'package:avinka/domain/models/slide.dart';
import 'package:avinka/ui/widgets/slider.dart';
import 'package:flutter/material.dart';

import 'widgets/product_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: ListView(
      children: <Widget>[
        Container(
          child: CustomSlider(
            slides: [
              Slide(
                  photoUrl:
                      "https://res.cloudinary.com/riqra/image/upload/v1585416399/saas/Avinka/banner-avinka-mob.png"),
              Slide(
                  photoUrl:
                      "https://res.cloudinary.com/riqra/image/upload/v1590092270/sellers/avinka/banners/ouxh5vaw9sehmnq3zwvl.png"),
              Slide(
                  photoUrl:
                      "https://res.cloudinary.com/riqra/image/upload/v1594166592/sellers/avinka/banners/rxfinzqfia91eldlfcy1.png")
            ],
          ),
          height: size.height * 0.25,
        ),
        Container(height: size.height * 0.75 - 80, child: ProductList())
      ],
    ));
  }
}
