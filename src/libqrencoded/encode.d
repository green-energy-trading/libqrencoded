module libqrencoded.encode;

import libqrencoded.c.capi;

importu std.array;
import core.stdc.string;

string libQREncodedVersion() {
	auto res = QRcode_APIVersionString;
	return cast(string)(cast(char[])res[0..strlen(res)]);
};

bool[][] encodeQR(string s) {
	bool[][] res;
	auto qr = QRcode_encodeString(szSourceSring, 0, 3, 2, 1);
	res.length = qr->width;
	int i, j;
	for (i = 0; i < qr->width; i++) {
		res[i].length = qr->width;
		for (j = qr->width - 1; j >= 0; j--) {
			res[i][j] = qr->data[(j * qr->width) + i] & 0x1
		}
	}
}
