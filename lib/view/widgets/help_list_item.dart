
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yardim_sever/core/constants/colors/yardim_sever.dart';
import 'package:yardim_sever/core/constants/image/image_constants.dart';

class HelpListItem extends StatelessWidget {
  final int index;
  final VoidCallback clickHelpDetail;

  HelpListItem({Key key, this.index, this.clickHelpDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Get.width * .04),
      height: Get.height * .24,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 24,
                child: LayoutBuilder(
                  builder: (context, constraints) => SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(ImageConstants.instance.icAccount, height: 35),
                        Image.asset(ImageConstants.instance.icAccount, height: 35),
                        Image.asset(ImageConstants.instance.icAccount, height: 35),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 73,
                child: LayoutBuilder(
                  builder: (context, constraints) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Yardım Başlığı', style: TextStyle(fontSize: constraints.maxWidth * .062, color: Colors.black,fontFamily: 'Poppins')),
                      SizedBox(height: constraints.maxHeight * .015),
                      Container(
                        width: double.infinity,
                        height: constraints.maxHeight * .43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey, width: 0.7, style: BorderStyle.solid),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 1.3),
                          child: Text(
                            'Yardım kısa açıklaması bu tam bir açıklama olmasa da açıklama sayılır gördüğünüz gibi hala devam ediyor ve hala',
                            maxLines: 3,
                            style: TextStyle(fontSize: constraints.maxWidth * .051, color: YardimSever.grey,fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * .015),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image.asset(
                                ImageConstants.instance.icAccount,
                                width: constraints.maxWidth * .065,
                                height: constraints.maxWidth * .065,
                                color: YardimSever.primaryLightBlue,
                              ),
                              Text('Yardım Kategorisi', style: TextStyle(fontSize: constraints.maxWidth * .048, color: YardimSever.grey,fontFamily: 'Poppins')),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_pin, size: constraints.maxWidth * .06, color: YardimSever.primaryLightBlue),
                              Text('Yardım Bölgesi', style: TextStyle(fontSize: constraints.maxWidth * .048, color: YardimSever.grey,fontFamily: 'Poppins')),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: constraints.maxHeight * .025),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: constraints.maxWidth * .5,
                          height: constraints.maxHeight * .25,
                          child: OutlineButton(
                            child: Text(
                              'Yardım Detayları',
                              style: TextStyle(color: YardimSever.primaryLightBlue, fontSize: constraints.maxWidth * .04, fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                              maxLines: 1,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                            onPressed: clickHelpDetail,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}