module libqrencoded.c.capi;

struct QRcode {
  int v;
  int width;
  ubyte *data;
}

extern(C) {
	char *QRcode_APIVersionString();
	QRcode *QRcode_encodeString(const char *string, int v, int level, int hint, int casesensitive);
	void QRcode_free(QRcode *qrcode);
}
