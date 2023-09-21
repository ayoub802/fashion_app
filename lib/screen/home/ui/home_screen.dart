import 'package:fashion_app/component/base/base_safe_scaffold.dart';
import 'package:fashion_app/screen/home/component/explore_header_view.dart';
import 'package:fashion_app/screen/home/component/explore_list_view.dart';
import 'package:fashion_app/screen/home/component/header_view.dart';
import 'package:fashion_app/screen/home/component/model_list_view.dart';
import 'package:fashion_app/screen/home/provider/home_provider.dart';
import 'package:fashion_app/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeProvider homeProvider = Get.find<HomeProvider>();
  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() async {
    await homeProvider.initData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      child: Container(
        padding: kDefaultPagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderView(),
            ExploreHeaderView(),
            ExploreListView(),
            ModelListView()
          ],
        ),
      ),
    );
  }
}
