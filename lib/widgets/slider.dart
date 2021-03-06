import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowershop/provider/pSliderImg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WSlider extends StatefulWidget {
  final bool isFirst;

  const WSlider({this.isFirst});
  @override
  _WSliderState createState() => _WSliderState();
}

class _WSliderState extends State<WSlider> {
  int current;
  @override
  Widget build(BuildContext context) {
    return Consumer<PSliderImg>(
      builder: (ctx, image, _) {
        return Container(
          height: 220,
          child: Column(
            children: [
              CarouselSlider(
                items: widget.isFirst ? image.items1 : image.items2,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    //aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    (widget.isFirst ? image.items1 : image.items2).map((url) {
                  int index = (widget.isFirst ? image.items1 : image.items2)
                      .indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: current == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
