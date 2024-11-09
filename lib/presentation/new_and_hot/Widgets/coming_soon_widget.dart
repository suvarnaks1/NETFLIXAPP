import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constans.dart';
import '../../home/screen_home.dart';
import 'Vedio_widget.dart';

class ComingsoonWidget extends StatelessWidget {
  const ComingsoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            children: [
              Text(
                "FEB",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "11",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VedioWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TallGirl2",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButtonWidget(
                        icon: Icons.all_out_sharp,
                        title: 'RemindMe',
                        Size: 20,
                         textSize: 12,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomButtonWidget(
                        icon: Icons.border_all,
                        title: 'My LIst',
                        Size: 20,
                         textSize: 12,
                      ),
                    ],
                  ),
                ],
              ),
              Space.SizedBoxHeight5,
              const Text("Coming on Friday"),
              Space.SizedBoxHeight5,
              const Text(
                "Tall Girl 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Landing the lead in thye school musical is a dream come true for Jodi, until the pressure sends her confidence- and her relationship-- into a tailspin",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

