package com.dropbox.core.v2;

import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class DbxPathV2 {
    public static boolean isValid(String str) {
        return findError(str) == null;
    }

    public static String findError(String str) {
        if (str.length() == 0) {
            return null;
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            return "expecting first character to be \"/\"";
        }
        if (str.endsWith(URIUtil.SLASH)) {
            return "must not end with \"/\"";
        }
        return null;
    }

    public static String getName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        }
        if (str.length() == 0) {
            return null;
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.endsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
        }
        int length = str.length();
        do {
            length--;
        } while (str.charAt(length) != '/');
        return str.substring(length + 1);
    }

    public static String[] split(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        }
        if (str.length() == 0) {
            return new String[0];
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.endsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
        }
        return str.substring(1).split(URIUtil.SLASH);
    }

    public static String getParent(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        }
        if (str.length() == 0) {
            return null;
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.endsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
        }
        return str.substring(0, str.lastIndexOf(URIUtil.SLASH));
    }
}
