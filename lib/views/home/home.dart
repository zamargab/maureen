import 'package:animated_background/animated_background.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mau_love/controllers/home.dart';
import 'package:mau_love/views/memories/memories.dart';
import 'package:mau_love/views/messages/message_home.dart';
import 'package:mau_love/views/poems/poems.dart';
import 'package:mau_love/views/quiz/quiz_home.dart';
import 'package:mau_love/views/shared_widgets/appbar1.dart';
import 'package:mau_love/views/home/widgets/home_box.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final ctrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: const MyAppBar('Maureen Olah'),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 40.h,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 1000),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      onPageChanged: (index, reason) {
                        controller.currentIndex = index;
                        controller.update();
                      },
                    ),
                    items: controller.cardList.map((card) {
                      return Builder(builder: (BuildContext context) {
                        return SizedBox(
                          height: 30.h,
                          width: 100.w,
                          child: Card(
                            color: Theme.of(context).primaryColor,
                            child: card,
                          ),
                        );
                      });
                    }).toList(),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.w),
                    height: 47.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.w),
                          topLeft: Radius.circular(5.w)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeBox(
                              color: const Color(0xFFff969b),
                              svg: 'assets/icons/love2.svg',
                              title: 'Messages',
                              callback: () {
                                Get.to(() => const MessageHome(),
                                    duration: const Duration(milliseconds: 500),
                                    transition: Transition.circularReveal);
                              },
                            ),
                            HomeBox(
                              color: const Color(0xFFe0d4f1),
                              svg: 'assets/icons/birds.svg',
                              title: 'Quiz',
                              callback: () {
                                Get.to(() => QuizHome(),
                                    duration: const Duration(milliseconds: 500),
                                    transition: Transition.circularReveal);
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeBox(
                              color: const Color(0xFFffbab9),
                              svg: 'assets/icons/mugs.svg',
                              title: 'Poems',
                              callback: () {
                                Get.to(() => PoemsHome(),
                                    duration: const Duration(milliseconds: 500),
                                    transition: Transition.circularReveal);
                              },
                            ),
                            HomeBox(
                              color: const Color(0xFFffa5c9),
                              svg: 'assets/icons/banner.svg',
                              title: 'Memories',
                              callback: () {
                                Get.to(() => Memories(),
                                    duration: const Duration(milliseconds: 500),
                                    transition: Transition.circularReveal);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              AnimatedBackground(
                behaviour: RandomParticleBehaviour(
                    options: ParticleOptions(
                  baseColor: Colors.blue,
                  spawnOpacity: 0.01,
                  opacityChangeRate: 0.25,
                  minOpacity: 0.1,
                  maxOpacity: 0.4,
                  spawnMinSpeed: 30.0,
                  spawnMaxSpeed: 70.0,
                  spawnMinRadius: 7.0,
                  spawnMaxRadius: 15.0,
                  particleCount: 70,
                  image: Image.asset('assets/images/love1.png'),
                )),
                vsync: this,
                child: Container(),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: AssetImage('assets/images/placeholder.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(4.w)),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Text(
                "You're Beautiful",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 30.sp, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            image: AssetImage('assets/images/placeholder.jpg'),
            fit: BoxFit.cover,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(4.w)),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Text(
                "You're Kind",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 30.sp, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: const DecorationImage(
            image: AssetImage('assets/images/placeholder.jpg'),
            fit: BoxFit.cover,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(4.w)),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Text(
                "You're Amazing",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 30.sp, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
