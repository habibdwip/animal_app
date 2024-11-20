import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/animal.dart';
import '../../../data/color_theme.dart';
import '../../../data/font_theme.dart';

class AnimalPage extends StatelessWidget {
  final AnimalList animalList;
  const AnimalPage({super.key, required this.animalList});

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
                        ))),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Container(
                        margin: EdgeInsets.all(12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            animalList.Image,
                            fit: BoxFit.fill,
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
                            "Name : " + animalList.Name,
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
                                animalList.Spesies.toString(),
                            style: FontTheme.fontBase.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            animalList.Desc,
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
          ],
        ),
      ),
    );
  }
}
