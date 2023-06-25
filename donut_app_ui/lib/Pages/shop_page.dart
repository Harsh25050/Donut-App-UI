import 'package:flutter/material.dart';
import 'package:donut_app_ui/Tab_View/burder_tab.dart';
import 'package:donut_app_ui/Tab_View/donut_tab.dart';
import 'package:donut_app_ui/Tab_View/pancake_tab.dart';
import 'package:donut_app_ui/Tab_View/pizza_tab.dart';
import 'package:donut_app_ui/Tab_View/smoothie_tab.dart';
import 'package:donut_app_ui/util/my_tab.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<Widget> myTabs = const [
    MyTab(
      iconpath: 'lib/icons/donut.png',
    ),
    MyTab(
      iconpath: 'lib/icons/burger.png',
    ),
    MyTab(
      iconpath: 'lib/icons/pizza.png',
    ),
    MyTab(
      iconpath: 'lib/icons/pancake.png',
    ),
    MyTab(
      iconpath: 'lib/icons/smoothie.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'lib/Images/model.png',
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TabBar(tabs: myTabs),
            Expanded(
                child: TabBarView(
              children: [
                DonutTab(),
                const BurgerTab(),
                const PizzaTab(),
                const PancakeTab(),
                const SmoothieTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
