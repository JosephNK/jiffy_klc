import 'package:jiffy/jiffy.dart';
import 'package:klc/klc.dart';

extension JiffyKlc on Jiffy {
  /// Convert from the solar calendar to the lunar calendar (ISO)
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final jiffy = Jiffy.parse('1997-09-23').toLunar();
  /// ```
  ///
  Jiffy toLunar() {
    setSolarDate(year, month, date);
    final value = getLunarIsoFormat();
    return Jiffy.parse(value, isUtc: isUtc);
  }

  /// Convert from the lunar calendar to the solar calendar
  ///
  /// The [isIntercalation] value indicates whether there is a leap month.
  /// The default is false.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final jiffy = Jiffy.parse('1997-09-23').toSolarFromLunar();
  /// ```
  ///
  Jiffy toSolarFromLunar({bool isIntercalation = false}) {
    setLunarDate(year, month, date, isIntercalation);
    final value = getSolarIsoFormat();
    return Jiffy.parse(value, isUtc: isUtc);
  }
}

extension JiffyKlcGapjaChineseGapJa on Jiffy {
  /// Convert from the solar calendar to the Gapja calendar
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final dateString = Jiffy.parse('1997-09-23').toSolarGapjaString();
  /// ```
  ///
  String toSolarGapjaString() {
    setSolarDate(year, month, date);
    final value = getGapjaString();
    return value;
  }

  /// Convert from the lunar calendar to the Gapja calendar
  ///
  /// The [isIntercalation] value indicates whether there is a leap month.
  /// The default is false.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final dateString = Jiffy.parse('1997-09-23').toLunarGapjaString();
  /// ```
  ///
  String toLunarGapjaString({bool isIntercalation = false}) {
    setLunarDate(year, month, date, isIntercalation);
    final value = getGapjaString();
    return value;
  }

  /// Convert from the solar calendar to the SolarChineseGapJa calendar
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final dateString = Jiffy.parse('1997-09-23').toSolarChineseGapJaString();
  /// ```
  ///
  String toSolarChineseGapJaString() {
    setSolarDate(year, month, date);
    final value = getChineseGapJaString();
    return value;
  }

  /// Convert from the lunar calendar to the ChineseGapJa calendar
  ///
  /// The [isIntercalation] value indicates whether there is a leap month.
  /// The default is false.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final dateString = Jiffy.parse('1997-09-23').toLunarChineseGapJaString();
  /// ```
  ///
  String toLunarChineseGapJaString({bool isIntercalation = false}) {
    setLunarDate(year, month, date, isIntercalation);
    final value = getChineseGapJaString();
    return value;
  }
}
