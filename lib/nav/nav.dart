// import 'dart:html';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //跳转外部链接依赖库
import '../nav/adapt.dart' as a;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stu(),
    );
  }
}

class Stu extends StatelessWidget {
  List listData = [
    {
      "title": "FlowUs",
      "author": "内容1",
      "image": "../assets/images/flowus.png",
      "url": "https://flowus.cn/"
    },
    {
      "title": "Gitea",
      "author": "内容1",
      "image": "../assets/images/gitea.png",
      "url": "http://ipv6.amiemall.com:3000"
    },
    {
      "title": "Metabase",
      "author": "内容2",
      "image": "../assets/images/metabase.png",
      "url": "http://ipv6.amiemall.com:5000"
    },
    {
      "title": "nging",
      "author": "内容3",
      "image": "../assets/images/nging.png",
      "url": "http://ipv6.amiemall.com:9999"
    },
    {
      "title": "Meilisearch",
      "author": "内容4",
      "image": "../assets/images/meilisearch.png",
      "url": "http://ipv6.amiemall.com:7700"
    },
    {
      "title": "gocron",
      "author": "内容5",
      "image": "../assets/images/gocron.png",
      "url": "http://ipv6.amiemall.com:5920"
    },
    {
      "title": "gokins",
      "author": "内容6",
      "image": "../assets/images/gokins.png",
      "url": "http://ipv6.amiemall.com:8030"
    },
    {
      "title": "goploy",
      "author": "内容6",
      "image": "../assets/images/goploy.png",
      "url": "http://ipv6.amiemall.com:5800"
    },
    {
      "title": "DDNS-GO",
      "author": "内容7",
      "image": "../assets/images/DDNS-GO.png",
      "url": "http://ipv6.amiemall.com:9876"
    },
    {
      "title": "Drone",
      "author": "内容8",
      "image": "../assets/images/drone.png",
      "url": "http://10.243.0.8:80"
    },
    // {
    //   "title": "Gaia",
    //   "author": "内容8",
    //   "image": "../assets/images/image49.png",
    //   "url": "http://10.243.0.7:8080"
    // },
    {
      "title": "钛盘",
      "author": "内容9",
      "image": "../assets/images/tmp.png",
      "url": "https://tmp.link/"
    },
    {
      "title": "ZeroTier",
      "author": "内容9",
      "image": "../assets/images/zerotier.png",
      "url": "https://www.zerotier.com/"
    },
    {
      "title": "Apipost",
      "author": "内容8",
      "image": "../assets/images/apipost.png",
      "url": "https://console.apipost.cn/apis/project"
    },
    {
      "title": "Slack",
      "author": "内容8",
      "image": "../assets/images/slack.png",
      "url": "https://slack.com/"
    },

    {
      "title": "BoardMix&Pixso",
      "author": "内容9",
      "image": "../assets/images/boardmix.png",
      "url": "https://boardmix.cn/"
    },
    {
      "title": "AFFINE",
      "author": "内容8",
      "image": "../assets/images/affine.png",
      "url": "https://affine.pro/"
    },
    {
      "title": "Drawio",
      "author": "内容9",
      "image": "../assets/images/drawio.png",
      "url": "https://app.diagrams.net/"
    },
    {
      "title": "Mock",
      "author": "内容9",
      "image": "../assets/images/mock.png",
      "url": "https://user.mockplus.cn/choose-product"
    },
    {
      "title": "Stepyun",
      "author": "内容8",
      "image": "../assets/images/stepyun.png",
      "url": "http://stepyun.com/"
    },
    {
      "title": "TospinoNav",
      "author": "内容9",
      "image": "../assets/images/tospino.png",
      "url": "http://tospino.amiemall.com"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsetsDirectional.only(start: 500, top: 200, end: 500), //外边距
      // padding: EdgeInsetsDirectional.all(50), //内边距
      margin: EdgeInsetsDirectional.only(
          start: a.Adapt.px(200),
          top: a.Adapt.px(20),
          end: a.Adapt.px(200)), //外边距
      padding: EdgeInsetsDirectional.all(a.Adapt.px(0)), //内边距
      width: double.infinity,
      height: double.infinity,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6, //设置列数
          crossAxisSpacing: a.Adapt.px(8), //设置横向间距
          mainAxisSpacing: a.Adapt.px(2), //设置主轴间距
          childAspectRatio: 1 / 1.3, //宽高比
        ),
        scrollDirection: Axis.vertical,
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _launchURL(listData[index]["url"]);
            }, //onTap
            child: ListView(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsetsDirectional.only(bottom: a.Adapt.px(4)), //外边距
                  // alignment: Alignment.centerLeft,
                  alignment: Alignment.center,
                  width: double.infinity,
                  // height: 100,
                  height: a.Adapt.px(50),
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: new ExactAssetImage(listData[index]["image"]),

                      // fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255),
                      // width: 2,
                    ),

                    borderRadius: BorderRadius.circular(24),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 248, 141, 141),
                          offset: Offset(0.0, 12.0), //阴影xy轴偏移量
                          blurRadius: 8.0, //阴影模糊程度
                          spreadRadius: 0.0), //阴影扩散程度
                    ],
                    // shape: BoxShape.rectangle,
                  ),
                ),
                Text(
                  listData[index]["title"],
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 2,
                  style: new TextStyle(
                    color: Color.fromARGB(255, 65, 61, 61),
                  ),
                ),
              ],
            ), //ListView
          );
        },
      ),
    );
  }

  //定义方法,运行需要 --no-sound-null-safety 参数，不然报错null安全
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
