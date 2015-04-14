module libqrencoded.c.capi;

QRcode = {
  int version;
  int width;
  unsigned char *data;
}

extern(C) {
	char *QRcode_APIVersionString();
  QRcode *QRcode_encodeString(const char *string, int version, QRecLevel level, QRencodeMode hint, int casesensitive);
}
