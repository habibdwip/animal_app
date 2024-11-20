import 'package:animal_app/app/data/animal.dart';
import 'package:animal_app/app/data/color_theme.dart';
import 'package:animal_app/app/data/font_theme.dart';
import 'package:animal_app/app/modules/animal/views/animal_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        backgroundColor: ColorTheme.clrBgApp,
        body: SafeArea(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Stack(
                  children: [
                    Positioned(
                      top: Get.height * .3,
                      height: 650,
                      left: -20,
                      right: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorTheme.clrShadow,
                            borderRadius: BorderRadius.circular(16)),
                        // height: 200,
                        width: 200,
                      ),
                    ),
                    // Positioned(
                    //   top: 150,
                    //   left: 40,
                    //   right: 120,
                    //   child:
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.list_outlined,
                                color: ColorTheme.clrWhite,
                              ),
                              Icon(
                                Icons.search,
                                color: ColorTheme.clrWhite,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Discover",
                            style: FontTheme.fontBase.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: ColorTheme.clrWhite),
                          ),
                          Text(
                            "Our majestic world together",
                            style: FontTheme.fontBase.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: ColorTheme.clrWhite),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: Get.height,
                            width: 250,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: _.Animal.length,
                                itemBuilder: (BuildContext context, int index) {
                                  AnimalList currentAnimal = _.Animal[index];
                                  return GestureDetector(
                                    onTap: () => Get.to(() =>
                                        AnimalPage(animalList: currentAnimal)),
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 20),
                                      decoration: BoxDecoration(
                                        color: ColorTheme.clrWhite,
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      height: 200,
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(12),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                _.Animal[index].Image,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            _.Animal[index].Name,
                                            style: FontTheme.fontBase.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
