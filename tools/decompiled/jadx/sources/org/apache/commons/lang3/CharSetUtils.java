package org.apache.commons.lang3;

/* JADX INFO: loaded from: classes3.dex */
public class CharSetUtils {
    public static String squeeze(String str, String... strArr) {
        if (!StringUtils.isEmpty(str) && !deepEmpty(strArr)) {
            CharSet charSet = CharSet.getInstance(strArr);
            StringBuilder sb = new StringBuilder(str.length());
            char[] charArray = str.toCharArray();
            int length = charArray.length;
            char c2 = ' ';
            for (int i = 0; i < length; i++) {
                char c3 = charArray[i];
                if (c3 != c2 || i == 0 || !charSet.contains(c3)) {
                    sb.append(c3);
                    c2 = c3;
                }
            }
            return sb.toString();
        }
        return str;
    }

    public static int count(String str, String... strArr) {
        int i = 0;
        if (!StringUtils.isEmpty(str) && !deepEmpty(strArr)) {
            CharSet charSet = CharSet.getInstance(strArr);
            for (char c2 : str.toCharArray()) {
                if (charSet.contains(c2)) {
                    i++;
                }
            }
        }
        return i;
    }

    public static String keep(String str, String... strArr) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0 || deepEmpty(strArr)) {
            return "";
        }
        return modify(str, strArr, true);
    }

    public static String delete(String str, String... strArr) {
        return (StringUtils.isEmpty(str) || deepEmpty(strArr)) ? str : modify(str, strArr, false);
    }

    private static String modify(String str, String[] strArr, boolean z) {
        CharSet charSet = CharSet.getInstance(strArr);
        StringBuilder sb = new StringBuilder(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            if (charSet.contains(charArray[i]) == z) {
                sb.append(charArray[i]);
            }
        }
        return sb.toString();
    }

    private static boolean deepEmpty(String[] strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                if (StringUtils.isNotEmpty(str)) {
                    return false;
                }
            }
        }
        return true;
    }
}
