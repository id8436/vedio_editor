package com.adobe.creativesdk.foundation.internal.storage.model.util;

import org.apache.commons.io.FilenameUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageLastPathComponentUtil {
    public static String getLastPathComponent(String str) {
        if (!str.equals(URIUtil.SLASH)) {
            if (str.endsWith(URIUtil.SLASH)) {
                return getLastPathComponent(str.substring(0, str.length() - 1));
            }
            return FilenameUtils.getName(str);
        }
        return str;
    }

    public static String stringByDeletingLastPathComponent(String str) {
        if (!str.equals(URIUtil.SLASH)) {
            if (str.endsWith(URIUtil.SLASH)) {
                return stringByDeletingLastPathComponent(str.substring(0, str.length() - 1));
            }
            return str.replace(getLastPathComponent(str), "");
        }
        return str;
    }

    public static String getRelativeTo(String str, String str2) {
        if (!str.startsWith("http") || !str.startsWith(str2)) {
            if (str.startsWith(URIUtil.SLASH)) {
                str = str.substring(1);
            }
            if (str2.endsWith(URIUtil.SLASH)) {
                str2 = str2.substring(0, str2.lastIndexOf(URIUtil.SLASH));
            }
            return str2 + URIUtil.SLASH + str;
        }
        return str;
    }
}
