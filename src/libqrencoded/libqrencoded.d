module libqrencoded;

import core.stdc.string;

string libQREncodedVersion() {
  auto res = QRcode_APIVersionString;
  return cast(string)(cast(char[])res[0..strlen(res)]);
}
