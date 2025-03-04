import 'dart:convert';

import 'package:crypto/crypto.dart';

const uniqueKey1 = '@fh!3Bb5o0pMz#R!t@';
const uniqueKey2 = 'BakeryTimeCryptoKey';

String secondFormatHHMMSS(int second) {
  int hh = second ~/ 3600;
  int tmpSecond = second % 3600;
  int mm = tmpSecond ~/ 60;
  int ss = tmpSecond % 60;
  String rhh = hh.toString().padLeft(2, '0');
  String rmm = mm.toString().padLeft(2, '0');
  String rss = ss.toString().padLeft(2, '0');
  return "$rhh:$rmm:$rss";
}

String strCryptSHA256(String str) {
  final String hash =
      sha256.convert(utf8.encode(uniqueKey1 + str + uniqueKey2)).toString();
  return hash;
}

String strCryptMD5(String str) {
  final String hash =
      sha256.convert(utf8.encode(uniqueKey1 + str + uniqueKey2)).toString();
  return hash;
}

String strDecryptMD5(String str) {
  final String hash =
      sha256.convert(utf8.encode(uniqueKey1 + str + uniqueKey2)).toString();
  return hash;
}
