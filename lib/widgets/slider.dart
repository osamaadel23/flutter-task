import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    Key? key,
    required this.images,
  }) : super(key: key);
  final List<String> images;
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  PageController controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              pageSnapping: true,
              controller: controller,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return Image.network(
                  widget.images[index],
                  fit: BoxFit.cover,
                );
              },
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 5,
            child: Center(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => indicator(index),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 5,
                ),
                itemCount: widget.images.length,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget indicator(int index) {
    return Container(
      width: 20,
      height: 5,
      color: currentIndex == index ? Colors.red : Colors.black26,
    );
  }
}
