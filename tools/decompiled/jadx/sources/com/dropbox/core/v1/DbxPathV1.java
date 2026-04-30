package com.dropbox.core.v1;

import com.dropbox.core.util.StringUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class DbxPathV1 {
    public static boolean isValid(String str) {
        return findError(str) == null;
    }

    public static String findError(String str) {
        if (!str.startsWith(URIUtil.SLASH)) {
            return "must start with \"/\"";
        }
        if (str.length() == 1 || !str.endsWith(URIUtil.SLASH)) {
            return null;
        }
        return "must not end with \"/\"";
    }

    public static void checkArg(String str, String str2) {
        if (str2 == null) {
            throw new IllegalArgumentException("'" + str + "' should not be null");
        }
        String strFindError = findError(str2);
        if (strFindError != null) {
            throw new IllegalArgumentException("'" + str + "': bad path: " + strFindError + ": " + StringUtil.jq(str2));
        }
    }

    public static void checkArgNonRoot(String str, String str2) {
        if (URIUtil.SLASH.equals(str2)) {
            throw new IllegalArgumentException("'" + str + "' should not be the root path (\"/\")");
        }
        checkArg(str, str2);
    }

    public static String getName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.length() > 1 && str.endsWith(URIUtil.SLASH)) {
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
        if (!str.startsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.length() <= 1 || !str.endsWith(URIUtil.SLASH)) {
            return str.length() == 1 ? new String[0] : str.substring(1).split(URIUtil.SLASH);
        }
        throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
    }

    public static String getParent(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.length() > 1 && str.endsWith(URIUtil.SLASH)) {
            throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
        }
        int iLastIndexOf = str.lastIndexOf(URIUtil.SLASH);
        if (str.length() == 1) {
            return null;
        }
        return iLastIndexOf == 0 ? URIUtil.SLASH : str.substring(0, iLastIndexOf);
    }
}
