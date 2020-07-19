import 'package:avinka/domain/models/slide.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final List<Slide> slides;
  CustomSlider({this.slides});

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int _currentPos = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.velocity.pixelsPerSecond.dx < 0) {
          _currentPos = _currentPos - 1;
          if (_currentPos < 0) {
            _currentPos = widget.slides.length - 1;
          }
        } else {
          _currentPos += 1;
          if (_currentPos > widget.slides.length - 1) {
            _currentPos = 0;
          }
        }
        setState(() {});
      },
      child: Stack(
        children: <Widget>[
          Image.network(widget.slides[_currentPos].photoUrl, fit: BoxFit.fill),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 25,
                width: 80,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      widget.slides.length,
                      (index) => Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentPos = index;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Color(
                                index == _currentPos ? 0xFFFFFFFF : 0x22FFFFFF),
                            radius: 7,
                          ),
                        ),
                      ),
                    )),
              )),
        ],
      ),
    );
  }
}
