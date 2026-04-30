package com.google.android.exoplayer.dash.mpd;

/* JADX INFO: loaded from: classes2.dex */
public final class UrlTemplate {
    private static final String BANDWIDTH = "Bandwidth";
    private static final int BANDWIDTH_ID = 3;
    private static final String DEFAULT_FORMAT_TAG = "%01d";
    private static final String ESCAPED_DOLLAR = "$$";
    private static final String NUMBER = "Number";
    private static final int NUMBER_ID = 2;
    private static final String REPRESENTATION = "RepresentationID";
    private static final int REPRESENTATION_ID = 1;
    private static final String TIME = "Time";
    private static final int TIME_ID = 4;
    private final int identifierCount;
    private final String[] identifierFormatTags;
    private final int[] identifiers;
    private final String[] urlPieces;

    public static UrlTemplate compile(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new UrlTemplate(strArr, iArr, strArr2, parseTemplate(str, strArr, iArr, strArr2));
    }

    private UrlTemplate(String[] strArr, int[] iArr, String[] strArr2, int i) {
        this.urlPieces = strArr;
        this.identifiers = iArr;
        this.identifierFormatTags = strArr2;
        this.identifierCount = i;
    }

    public String buildUri(String str, int i, int i2, long j) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < this.identifierCount; i3++) {
            sb.append(this.urlPieces[i3]);
            if (this.identifiers[i3] == 1) {
                sb.append(str);
            } else if (this.identifiers[i3] == 2) {
                sb.append(String.format(this.identifierFormatTags[i3], Integer.valueOf(i)));
            } else if (this.identifiers[i3] == 3) {
                sb.append(String.format(this.identifierFormatTags[i3], Integer.valueOf(i2)));
            } else if (this.identifiers[i3] == 4) {
                sb.append(String.format(this.identifierFormatTags[i3], Long.valueOf(j)));
            }
        }
        sb.append(this.urlPieces[this.identifierCount]);
        return sb.toString();
    }

    private static int parseTemplate(String str, String[] strArr, int[] iArr, String[] strArr2) {
        strArr[0] = "";
        int i = 0;
        int length = 0;
        while (length < str.length()) {
            int iIndexOf = str.indexOf("$", length);
            if (iIndexOf == -1) {
                strArr[i] = strArr[i] + str.substring(length);
                length = str.length();
            } else if (iIndexOf != length) {
                strArr[i] = strArr[i] + str.substring(length, iIndexOf);
                length = iIndexOf;
            } else if (str.startsWith(ESCAPED_DOLLAR, length)) {
                strArr[i] = strArr[i] + "$";
                length += 2;
            } else {
                int iIndexOf2 = str.indexOf("$", length + 1);
                String strSubstring = str.substring(length + 1, iIndexOf2);
                if (strSubstring.equals(REPRESENTATION)) {
                    iArr[i] = 1;
                } else {
                    int iIndexOf3 = strSubstring.indexOf("%0");
                    String strSubstring2 = DEFAULT_FORMAT_TAG;
                    if (iIndexOf3 != -1) {
                        strSubstring2 = strSubstring.substring(iIndexOf3);
                        if (!strSubstring2.endsWith("d")) {
                            strSubstring2 = strSubstring2 + "d";
                        }
                        strSubstring = strSubstring.substring(0, iIndexOf3);
                    }
                    if (strSubstring.equals(NUMBER)) {
                        iArr[i] = 2;
                    } else if (strSubstring.equals(BANDWIDTH)) {
                        iArr[i] = 3;
                    } else if (strSubstring.equals(TIME)) {
                        iArr[i] = 4;
                    } else {
                        throw new IllegalArgumentException("Invalid template: " + str);
                    }
                    strArr2[i] = strSubstring2;
                }
                i++;
                strArr[i] = "";
                length = iIndexOf2 + 1;
            }
        }
        return i;
    }
}
