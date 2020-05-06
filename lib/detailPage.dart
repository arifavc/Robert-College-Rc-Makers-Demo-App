import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFFE7050),
        ),
        Positioned(
          bottom: 22.0,
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.3), size: 11.0),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.5), size: 12.0),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.7), size: 13.0),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.9), size: 14.0),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Başvur',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(Icons.arrow_back_ios,
                        color: Colors.white.withOpacity(0.9), size: 14.0),
                    Icon(Icons.arrow_back_ios,
                        color: Colors.white.withOpacity(0.7), size: 13.0),
                    Icon(Icons.arrow_back_ios,
                        color: Colors.white.withOpacity(0.5), size: 12.0),
                    Icon(Icons.arrow_back_ios,
                        color: Colors.white.withOpacity(0.3), size: 11.0),
                    Icon(Icons.arrow_back_ios,
                        color: Colors.white.withOpacity(0.3), size: 11.0),
                  ],
                ),
              )),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 65.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0)),
              color: Colors.white),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 310.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0)),
              image: DecorationImage(
                  image: AssetImage('assets/flutter.jpg'), fit: BoxFit.fill)),
        ),
        Positioned(
          top: 380.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 35.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Flutter ile Mobil Geliştirme',
                              style: TextStyle(
                                  fontFamily: 'Opensans',
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 40.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.black.withOpacity(0.2)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.alarm,
                                    color: Colors.white, size: 12.0),
                                SizedBox(width: 3.0),
                                Text(
                                  '12:00',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: AssetImage('assets/dsc.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Google DSC | Marmara Üniversitesi',
                        style: TextStyle(
                            fontFamily: 'Opensans',
                            fontSize: 15.0,
                            color: Color(0xFF6A6A6A),
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 12.0),
                  child: Container(
                    width: 400.0,
                    child: Text(
                        'Flutter, Google tarafından geliştirilen açık kaynak cross platform mobil uygulama geliştirme SDKsıdır. Nesne tabanlı Dart dilini kullanarak hızlı bir şekilde Android ve iOS platformlarına özgü arayüzler tasarlamanızı sağlar.Etkinliğimizde Flutter ile basit mobil uygulama arayüzleri geliştireceğiz. Katılımcıların bilgisayarlarını getirmeleri gerekmektedir.',
                        style: TextStyle(
                            color: Color(0xFF6A6A6A),
                            fontFamily: 'Opensans',
                            fontSize: 13.5,
                            fontWeight: FontWeight.w300)),
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: new IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        )
      ]),
    );
  }
}
