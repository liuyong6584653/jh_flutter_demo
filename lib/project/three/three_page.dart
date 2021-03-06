/**
 *  three_page.dart
 *
 *  Created by iotjin on 2019/08/14.
 *  description: 发现
 */

import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:jh_flutter_demo/jh_common/jh_form/jh_set_cell.dart';
import 'package:jh_flutter_demo/base_appbar.dart';
import 'package:jh_flutter_demo/project/configs/colors.dart';
import 'package:jh_flutter_demo/project/configs/strings.dart';
import 'package:jh_flutter_demo/project/routes/navigator_utils.dart';

class ThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar(context, KString.threeTabTitle,
          backgroundColor: Colors.transparent),
      body: _content,
      backgroundColor: KColor.kWeiXinBgColor,
    );
  }
}

double _cellH = 55.0;
double _leftSpace = 50.0;
double _rowSpace = 6;

Widget _content = ListView(
  children: <Widget>[
    JhSetCell(
      cellHeight: _cellH,
      leftImgPath: "assets/wechat/discover/ic_social_circle.png",
      title: '朋友圈',
      hiddenLine: true,
//      rightWidget: Image.network('https://gitee.com/iotjh/Picture/raw/master/lufei.png',width: 50,height: 50,),
      rightWidget: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Badge(
              padding: EdgeInsets.all(4),
              position: BadgePosition.topRight(top: -4, right: -4),
              child: Image.asset('assets/images/lufei.png',
                  width: 30, height: 30, fit: BoxFit.fill))),
    ),
    SizedBox(height: _rowSpace),
    JhSetCell(
      cellHeight: _cellH,
      leftImgPath: "assets/wechat/discover/ic_video_number.png",
      title: '视频号',
      hiddenLine: true,
    ),
    SizedBox(height: _rowSpace),
    JhSetCell(
        cellHeight: _cellH,
        lineLeftEdge: _leftSpace,
        leftImgPath: "assets/wechat/discover/ic_quick_scan.png",
        title: '扫一扫'),
    JhSetCell(
      cellHeight: _cellH,
      leftImgPath: "assets/wechat/discover/ic_shake_phone.png",
      title: '摇一摇',
      hiddenLine: true,
    ),
    SizedBox(height: _rowSpace),
    JhSetCell(
        cellHeight: _cellH,
        lineLeftEdge: _leftSpace,
        leftImgPath: "assets/wechat/discover/ic_feeds.png",
        title: '看一看'),
    JhSetCell(
      cellHeight: _cellH,
      leftImgPath: "assets/wechat/discover/ic_quick_search.png",
      title: '搜一搜',
      hiddenLine: true,
    ),
    SizedBox(height: _rowSpace),
    JhSetCell(
      cellHeight: _cellH,
      leftImgPath: "assets/wechat/discover/ic_people_nearby.png",
      title: '附近的人',
      hiddenLine: true,
    ),
    SizedBox(height: _rowSpace),
    JhSetCell(
        cellHeight: _cellH,
        lineLeftEdge: _leftSpace,
        leftImgPath: "assets/wechat/discover/ic_shopping.png",
        title: '购物'),
    JhSetCell(
      cellHeight: _cellH,
      leftImgPath: "assets/wechat/discover/ic_game_entry.png",
      title: '游戏',
      hiddenLine: true,
    ),
    SizedBox(height: _rowSpace),
    JhSetCell(
      cellHeight: _cellH,
      leftImgPath: "assets/wechat/discover/ic_mini_program.png",
      title: '小程序',
      hiddenLine: true,
    ),
    SizedBox(height: 15),
  ],
);

Widget testBtn(context) {
  return Container(
      alignment: Alignment.center,
      //子组件将以何种方式进行排列
      margin: EdgeInsets.all(20),
      //容器外补白
      color: Colors.yellow,
      width: 200,
      height: 200,
      child: RaisedButton(
//        color: Colors.red,
        child: Text("点击跳转"),
        onPressed: () {
          print('onPressed');
          NavigatorUtils.pushNamed(context, "UIDemoListsPage");
//          Navigator.push(context, MaterialPageRoute(builder: (context) => (UIDemoListsPage())));//普通路由
//          Navigator.push(context, MaterialPageRoute(builder: (context) => (testPage(content: "这是route传递的参数",))));//普通路由
//          NavigatorUtils.pushNamed(context,'/Test');//命名路由
        },
      ));
}
