# Jiffy_klc

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Platform](https://img.shields.io/badge/platform-flutter%7Cweb%7Cdart%20vm-orange)

Jiffy_klc is a Jiffy extension package for lunar-solar date conversion.

### Overview

This package was created using the [Jiffy](https://github.com/jama5262/jiffy) package and the [klc](https://github.com/chunghha/dart_klc) package.

## Getting Started

Add the following to your **pubspec.yaml**:

```
dependencies:
  jiffy: ^6.3.1
  jiffy_klc: ^1.0.0
```

Next, **import**:

```
import 'package:jiffy/jiffy.dart';
import 'package:jiffy_klc/jiffy_klc.dart';
```

### Usage

```Dart
/// Convert from the solar calendar to the lunar calendar
final Jiffy jiffy = Jiffy.parse('1997-09-23').toLunar();
final DateTime dateTime = jiffy.dateTime; 
// print: 1997-08-22 00:00:00.000

/// Convert from the lunar calendar to the solar calendar
final Jiffy jiffy = Jiffy.parse('1997-09-23').toSolarFromLunar();
final DateTime dateTime = jiffy.dateTime; 
// print: 1997-10-24 00:00:00.000

/// Convert from the solar calendar to the Gapja calendar
final String string = Jiffy.parse('1997-09-23').toSolarGapjaString(); 
// print: 정축년 기유월 무진일

/// Convert from the solar calendar to the SolarChineseGapJa calendar
final String string = Jiffy.parse('1997-09-23').toSolarChineseGapJaString(); 
// print: 丁丑年 己酉月 戊辰日
```