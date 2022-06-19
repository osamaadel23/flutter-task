import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: theme.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  )),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 18,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: 'Maadi , New Maadi , ',
                              ),
                              TextSpan(
                                style: TextStyle(fontSize: 12),
                                text: 'Cairo ',
                              )
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        style: const TextStyle(
                            fontSize: 16, fontFamily: 'alfont_com'),
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 16, fontFamily: 'alfont_com'),
                          hintText: 'ابحث',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              IconsManager.setting,
                              color: Colors.black38,
                            ),
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.black38,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
