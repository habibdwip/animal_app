import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/animal.dart';
import '../../../data/color_theme.dart';
import '../../../data/font_theme.dart';

bool star = false;

class AnimalPage extends StatefulWidget {
  final AnimalList animalList;
  const AnimalPage({super.key, required this.animalList});

  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.clrBgApp,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: Get.height / 5),
              height: double.infinity,
              decoration: BoxDecoration(
                  color: ColorTheme.clrWhite,
                  borderRadius: BorderRadius.circular(24)),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Container(
                          child: Icon(
                            Icons.arrow_back,
                            color: ColorTheme.clrWhite,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(12),
                        child: Container(
                          margin: EdgeInsets.all(12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              widget.animalList.Image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            star = !star;
                          });
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 40),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: star == false
                                    ? ColorTheme.clrWhite
                                    : ColorTheme.clrBgApp,
                                border: star == false ? Border.all() : null,
                                borderRadius: BorderRadius.circular(12)),
                            child: Icon(
                              Icons.star,
                              color: star == false ? null : ColorTheme.clrWhite,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name : " + widget.animalList.Name,
                              style: FontTheme.fontBase.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Number of species : " +
                                  widget.animalList.Spesies.toString(),
                              style: FontTheme.fontBase.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              widget.animalList.Desc,
                              style: FontTheme.fontBase.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
