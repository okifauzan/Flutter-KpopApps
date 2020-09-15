import 'package:flutter/material.dart';
import 'package:submission_1/detail_screen.dart';
import 'package:submission_1/models/group_info.dart';

class MainScreen extends StatelessWidget{
  static const String id = "main_screen";

  get info => null;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('K-Pop Girl Groups'),
      ),

      body: ListView(
        children: groupList.map((info){
          return FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(info: info,);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(info.imageAsset, height: 130),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            info.name,
                            style: TextStyle(fontSize: 24.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            info.company,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              FavoriteButton(),
                              Icon(Icons.share),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      )
    );
  }
}

class FavoriteButton extends StatefulWidget{
  @override
  FavoriteButtonState createState() => FavoriteButtonState();
}

class FavoriteButtonState extends State<FavoriteButton>{
  bool isFavorite = false;

  @override
  Widget build(BuildContext context){
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite: Icons.favorite_border),
        color: Colors.red,
        onPressed: (){
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      );
  }
}

var groupList = [
  GroupInformation(
    name: 'TWICE',
    company: 'JYP Entertainment',
    description: 'TWICE (트와이스) is a girl group consisting of 9 members: Jihyo, Nayeon, Jeongyeon, Momo, Sana, Mina, Dahyun, Chaeyoung, and Tzuyu. The band debuted on October 20, 2015, through the survival show Sixteen, under JYP Entertainment. As of February 2020, JYPE is partnering with Republic Records to help promote TWICE worldwide.',
    imageAsset: 'images/twice.jpg',
    officialWebsite: 'Official Website: twice.jype.com',
    twitter: 'Twitter: @JYPETWICE',
    instagram: 'Instagram: @twicetagram',
    facebook: 'Facebook: JYPETWICE',
    youtube: 'Youtube: Twice',
    vLive: 'V-Live: Twice channel',
    tikTok: 'Tik Tok: @twice_tiktok_official'
  ),

  GroupInformation(
    name: 'Red Velvet',
    company: 'SM Entertainment',
    description: 'Red Velvet (레드벨벳) is a girl group that consists of 5 members: Irene, Wendy, Seulgi, Joy and Yeri. Red Velvet debuted on August 1, 2014, under S.M. Entertainment.',
    imageAsset: 'images/red_velvet.jpg',
    officialWebsite: 'Official Website: redvelvet.smtown.com',
    twitter: 'Twitter: @RVsmtown',
    instagram: 'Instagram: @redvelvet.smtown',
    facebook: 'Facebook: RedVelvet',
    youtube: 'Youtube: Red Velvet',
    vLive: 'V-Live: Red Velvet',
    tikTok: 'Tik Tok: -'
  ),

  GroupInformation(
    name: 'Blackpink',
    company: 'YG Entertainment',
    description: 'BLACKPINK (블랙핑크) consists of 4 members: Jisoo, Jennie, Rosé, and Lisa. The band debuted on August 8th, 2016 under YG Entertainment. On October 23, 2018, BLACKPINK has officially signed with the U.S. label Interscope Records.',
    imageAsset: 'images/blackpink.jpg',
    officialWebsite: 'Official Website: -',
    twitter: 'Twitter: @ygofficialblink / @BLACKPINK',
    instagram: 'Instagram: @blackpinkofficial',
    facebook: 'Facebook: BLACKPINKOFFICIAL',
    youtube: 'Youtube: Blackpink',
    vLive: 'V-Live: Black Pink channel',
    tikTok: 'Tik Tok: @bp_tiktok'
  ),

  GroupInformation(
    name: 'Itzy',
    company: 'JYP Entertainment',
    description: 'ITZY (있지) is a 5-member girl group under JYP Entertainment. They consist of: Yeji, Lia, Ryujin, Chaeryeong and Yuna. They debuted on February 11, 2019 with their first single album “IT’z Different”.',
    imageAsset: 'images/itzy.jpg',
    officialWebsite: 'Official Website: itzy.jype.com',
    twitter: 'Twitter: @ITZYOfficial',
    instagram: 'Instagram: @itzy.all.in.us',
    facebook: 'Facebook: ITZY',
    youtube: 'Youtube: ITZY',
    vLive: 'V-Live: ITZY',
    tikTok: 'Tik Tok: @itzyofficial'
  ),

  GroupInformation(
    name: 'Secret Number',
    company: 'VINE Entertainment',
    description: 'Secret Number (시크릿넘버) is an 5-member girl group under VINE Entertainment. The group consists of: Jinny, Denise, Soodam, Dita and Léa. They debuted on May 19, 2020 with their first single album “Who Dis?”.',
    imageAsset: 'images/secret_number.jpg',
    officialWebsite: 'Official Website: -',
    twitter: 'Twitter: @5ecretNumber',
    instagram: 'Instagram: @secretnumber.official',
    facebook: 'Facebook: Secret Number_Official',
    youtube: 'Youtube: SECRET NUMBER',
    vLive: 'V-Live: -',
    tikTok: 'Tik Tok: -'
  ),

  GroupInformation(
    name: '(G)-IDLE',
    company: 'Cube Entertainment',
    description: '(G)I-DLE (아이들) is a  6-member girl group under Cube Entertainment which consists of 6 members: Miyeon, Minnie, Soojin, Soyeon, Yuqi, and Shuhua. (G)I-DLE debuted on May 2nd, 2018.',
    imageAsset: 'images/g_idle.jpg',
    officialWebsite: 'Official Website: cubeent.co.kr/gidle',
    twitter: 'Twitter: @G_I_DLE',
    instagram: 'Instagram: @official_g_i_dle',
    facebook: 'Facebook: G.I.DLE.CUBE',
    youtube: 'Youtube: (G)I-DLE (여자)아이들',
    vLive: 'V-Live: (G)I-DLE',
    tikTok: 'Tik Tok: @official_gidle'
  ),

  GroupInformation(
    name: 'IZ*ONE',
    company: 'Off The Record Entertainment (Korea) and AKS (Japan)',
    description: 'IZ*ONE (아이즈원) (アイズワン) is a Korean-Japanese girl group formed by MNET’s Produce48, the third season of Produce 101. Produce48 brought together Japanese trainees from AKB48 & their sister groups and Korean trainees from many different labels. The members consist of Jang Wonyoung, Miyawaki Sakura, Jo Yuri, Choi Yena, Ahn Yujin, Yabuki Nako, Kwon Eunbi, Kang Hyewon, Honda Hitomi, Kim Chaewon, Kim Minjoo, and Lee Chaeyeon. The group will be co-managed by Off The Record Entertainment in Korea and AKS (the company that manages AKB48) in Japan. IZ*ONE debuted in Korea on October 29, 2018 and they debuted in Japan on February 6, 2019. IZ*ONE will promote for 2 years and 6 months.',
    imageAsset: 'images/izone.jpg',
    officialWebsite: 'Official Website: -',
    twitter: 'Twitter: @official_izone',
    instagram: 'Instagram: @official_izone',
    facebook: 'Facebook: official.izone',
    youtube: 'Youtube: Official IZ*ONE',
    vLive: 'V-Live:  IZ*ONE',
    tikTok: 'Tik Tok: -'
  ),
];