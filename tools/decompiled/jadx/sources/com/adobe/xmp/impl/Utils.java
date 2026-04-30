package com.adobe.xmp.impl;

import com.adobe.xmp.XMPConst;

/* JADX INFO: loaded from: classes2.dex */
public class Utils implements XMPConst {
    public static final int UUID_LENGTH = 36;
    public static final int UUID_SEGMENT_COUNT = 4;
    private static boolean[] xmlNameChars;
    private static boolean[] xmlNameStartChars;

    static {
        initCharTables();
    }

    private Utils() {
    }

    public static String normalizeLangValue(String str) {
        if (!XMPConst.X_DEFAULT.equals(str)) {
            int i = 1;
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < str.length(); i2++) {
                switch (str.charAt(i2)) {
                    case ' ':
                        break;
                    case '-':
                    case '_':
                        stringBuffer.append('-');
                        i++;
                        break;
                    default:
                        if (i != 2) {
                            stringBuffer.append(Character.toLowerCase(str.charAt(i2)));
                        } else {
                            stringBuffer.append(Character.toUpperCase(str.charAt(i2)));
                        }
                        break;
                }
            }
            return stringBuffer.toString();
        }
        return str;
    }

    static String[] splitNameAndValue(String str) {
        int iIndexOf = str.indexOf(61);
        String strSubstring = str.substring(str.charAt(1) == '?' ? 2 : 1, iIndexOf);
        int i = iIndexOf + 1;
        char cCharAt = str.charAt(i);
        int i2 = i + 1;
        int length = str.length() - 2;
        StringBuffer stringBuffer = new StringBuffer(length - iIndexOf);
        while (i2 < length) {
            stringBuffer.append(str.charAt(i2));
            i2++;
            if (str.charAt(i2) == cCharAt) {
                i2++;
            }
        }
        return new String[]{strSubstring, stringBuffer.toString()};
    }

    static boolean isInternalProperty(String str, String str2) {
        if (XMPConst.NS_DC.equals(str)) {
            return "dc:format".equals(str2) || "dc:language".equals(str2);
        }
        if (XMPConst.NS_XMP.equals(str)) {
            return "xmp:BaseURL".equals(str2) || "xmp:CreatorTool".equals(str2) || "xmp:Format".equals(str2) || "xmp:Locale".equals(str2) || "xmp:MetadataDate".equals(str2) || "xmp:ModifyDate".equals(str2);
        }
        if (XMPConst.NS_PDF.equals(str)) {
            return "pdf:BaseURL".equals(str2) || "pdf:Creator".equals(str2) || "pdf:ModDate".equals(str2) || "pdf:PDFVersion".equals(str2) || "pdf:Producer".equals(str2);
        }
        if (XMPConst.NS_TIFF.equals(str)) {
            if ("tiff:ImageDescription".equals(str2) || "tiff:Artist".equals(str2) || "tiff:Copyright".equals(str2)) {
                return false;
            }
        } else if (XMPConst.NS_EXIF.equals(str)) {
            if ("exif:UserComment".equals(str2)) {
                return false;
            }
        } else {
            if (XMPConst.NS_EXIF_AUX.equals(str)) {
                return true;
            }
            return XMPConst.NS_PHOTOSHOP.equals(str) ? "photoshop:ICCProfile".equals(str2) : XMPConst.NS_CAMERARAW.equals(str) ? "crs:Version".equals(str2) || "crs:RawFileName".equals(str2) || "crs:ToneCurveName".equals(str2) : XMPConst.NS_ADOBESTOCKPHOTO.equals(str) || XMPConst.NS_XMP_MM.equals(str) || XMPConst.TYPE_TEXT.equals(str) || XMPConst.TYPE_PAGEDFILE.equals(str) || XMPConst.TYPE_GRAPHICS.equals(str) || XMPConst.TYPE_IMAGE.equals(str) || XMPConst.TYPE_FONT.equals(str);
        }
        return true;
    }

    static boolean checkUUIDFormat(String str) {
        if (str == null) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        boolean z = true;
        while (i < str.length()) {
            if (str.charAt(i) == '-') {
                int i3 = i2 + 1;
                z = z && (i == 8 || i == 13 || i == 18 || i == 23);
                i2 = i3;
            }
            i++;
        }
        return z && 4 == i2 && 36 == i;
    }

    public static boolean isXMLName(String str) {
        if (str.length() > 0 && !isNameStartChar(str.charAt(0))) {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            if (!isNameChar(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isXMLNameNS(String str) {
        if (str.length() > 0 && (!isNameStartChar(str.charAt(0)) || str.charAt(0) == ':')) {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            if (!isNameChar(str.charAt(i)) || str.charAt(i) == ':') {
                return false;
            }
        }
        return true;
    }

    static boolean isControlChar(char c2) {
        return ((c2 > 31 && c2 != 127) || c2 == '\t' || c2 == '\n' || c2 == '\r') ? false : true;
    }

    public static String escapeXML(String str, boolean z, boolean z2) {
        boolean z3;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '<' || cCharAt == '>' || cCharAt == '&' || ((z2 && (cCharAt == '\t' || cCharAt == '\n' || cCharAt == '\r')) || (z && cCharAt == '\"'))) {
                z3 = true;
                break;
            }
        }
        z3 = false;
        if (z3) {
            StringBuffer stringBuffer = new StringBuffer((str.length() * 4) / 3);
            for (int i2 = 0; i2 < str.length(); i2++) {
                char cCharAt2 = str.charAt(i2);
                if (!z2 || (cCharAt2 != '\t' && cCharAt2 != '\n' && cCharAt2 != '\r')) {
                    switch (cCharAt2) {
                        case '\"':
                            stringBuffer.append(z ? "&quot;" : "\"");
                            break;
                        case '&':
                            stringBuffer.append("&amp;");
                            break;
                        case '<':
                            stringBuffer.append("&lt;");
                            break;
                        case '>':
                            stringBuffer.append("&gt;");
                            break;
                        default:
                            stringBuffer.append(cCharAt2);
                            break;
                    }
                } else {
                    stringBuffer.append("&#x");
                    stringBuffer.append(Integer.toHexString(cCharAt2).toUpperCase());
                    stringBuffer.append(';');
                }
            }
            return stringBuffer.toString();
        }
        return str;
    }

    static String removeControlChars(String str) {
        StringBuffer stringBuffer = new StringBuffer(str);
        for (int i = 0; i < stringBuffer.length(); i++) {
            if (isControlChar(stringBuffer.charAt(i))) {
                stringBuffer.setCharAt(i, ' ');
            }
        }
        return stringBuffer.toString();
    }

    private static boolean isNameStartChar(char c2) {
        return (c2 <= 255 && xmlNameStartChars[c2]) || (c2 >= 256 && c2 <= 767) || ((c2 >= 880 && c2 <= 893) || ((c2 >= 895 && c2 <= 8191) || ((c2 >= 8204 && c2 <= 8205) || ((c2 >= 8304 && c2 <= 8591) || ((c2 >= 11264 && c2 <= 12271) || ((c2 >= 12289 && c2 <= 55295) || ((c2 >= 63744 && c2 <= 64975) || ((c2 >= 65008 && c2 <= 65533) || (c2 >= 0 && c2 <= 65535)))))))));
    }

    private static boolean isNameChar(char c2) {
        return (c2 <= 255 && xmlNameChars[c2]) || isNameStartChar(c2) || (c2 >= 768 && c2 <= 879) || (c2 >= 8255 && c2 <= 8256);
    }

    private static void initCharTables() {
        xmlNameChars = new boolean[256];
        xmlNameStartChars = new boolean[256];
        char c2 = 0;
        while (c2 < xmlNameChars.length) {
            xmlNameStartChars[c2] = c2 == ':' || ('A' <= c2 && c2 <= 'Z') || c2 == '_' || (('a' <= c2 && c2 <= 'z') || ((192 <= c2 && c2 <= 214) || ((216 <= c2 && c2 <= 246) || (248 <= c2 && c2 <= 255))));
            xmlNameChars[c2] = xmlNameStartChars[c2] || c2 == '-' || c2 == '.' || ('0' <= c2 && c2 <= '9') || c2 == 183;
            c2 = (char) (c2 + 1);
        }
    }
}
