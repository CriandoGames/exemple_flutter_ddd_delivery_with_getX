import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_dark_light_ddd_tdd_stud/theme/presentete/home/pages/produts/produts_screen.dart';

import '../../theme.dart';
import 'controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put<HomeController>(HomeController());
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Obx(() => Expanded(
              child: IndexedStack(
                index: controller.index.value,
                children: [
                  ProdutsScreen(),
                  Text('Index1 ${controller.index.value}'),
                  Text('Index2 ${controller.index.value}'),
                  Text('Index3 ${controller.index.value}'),
                  Text('Index4 ${controller.index.value}'),
                ],
              ),
            )),
        Obx(() => NavigationBarBottomHome(
            onTap: controller.onChangeIndex,
            selectedIndex: controller.index.value)),
      ]),
    );
  }
}

class NavigationBarBottomHome extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  const NavigationBarBottomHome(
      {required this.selectedIndex, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                child: IconButton(
                    onPressed: () => onTap(0),
                    icon: Icon(
                      Icons.home_outlined,
                      color: selectedIndex == 0
                          ? ThemeColor.green
                          : ThemeColor.greyLight,
                    )),
              ),
              Material(
                child: IconButton(
                    onPressed: () => onTap(1),
                    icon: Icon(
                      Icons.store_outlined,
                      color: selectedIndex == 1
                          ? ThemeColor.green
                          : ThemeColor.greyLight,
                    )),
              ),
              Material(
                child: InkWell(
                  onTap: () => onTap(2),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: ThemeColor.purple,
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: selectedIndex == 2
                              ? ThemeColor.green
                              : ThemeColor.greyLight,
                        )),
                  ),
                ),
              ),
              Material(
                child: IconButton(
                    onPressed: () => onTap(3),
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: selectedIndex == 3
                          ? ThemeColor.green
                          : ThemeColor.greyLight,
                    )),
              ),
              Material(
                child: InkWell(
                  onTap: () => onTap(4),
                  child: const CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
