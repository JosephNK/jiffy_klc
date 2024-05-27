import 'package:jiffy/jiffy.dart';
import 'package:jiffy_klc/src/jiffy_klc.dart';

void main() {
  final date = Jiffy.parse('1997-09-23');

  print('------');
  print(date.dateTime);
  print('------');
  print(date.toLunar().dateTime);
  print(date.toSolarFromLunar().dateTime);
  print(date.toSolarFromLunar(isIntercalation: true).dateTime);
  print('------');
  print(date.toSolarGapjaString());
  print(date.toLunarGapjaString());
  print(date.toLunarGapjaString(isIntercalation: true));
  print('------');
  print(date.toSolarChineseGapJaString());
  print(date.toLunarChineseGapJaString());
  print(date.toLunarChineseGapJaString(isIntercalation: true));
  print('------');
}
