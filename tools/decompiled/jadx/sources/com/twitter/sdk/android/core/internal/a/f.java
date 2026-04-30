package com.twitter.sdk.android.core.internal.a;

import android.text.TextUtils;
import com.google.gdata.data.analytics.Engagement;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.TreeMap;
import org.mortbay.util.StringUtil;

/* JADX INFO: compiled from: UrlUtils.java */
/* JADX INFO: loaded from: classes3.dex */
public final class f {
    public static TreeMap<String, String> a(URI uri, boolean z) {
        return a(uri.getRawQuery(), z);
    }

    public static TreeMap<String, String> a(String str, boolean z) {
        TreeMap<String, String> treeMap = new TreeMap<>();
        if (str != null) {
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split(Engagement.Comparison.EQ);
                if (strArrSplit.length == 2) {
                    if (z) {
                        treeMap.put(b(strArrSplit[0]), b(strArrSplit[1]));
                    } else {
                        treeMap.put(strArrSplit[0], strArrSplit[1]);
                    }
                } else if (!TextUtils.isEmpty(strArrSplit[0])) {
                    if (z) {
                        treeMap.put(b(strArrSplit[0]), "");
                    } else {
                        treeMap.put(strArrSplit[0], "");
                    }
                }
            }
        }
        return treeMap;
    }

    public static String a(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, StringUtil.__UTF8Alt);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    public static String b(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLDecoder.decode(str, StringUtil.__UTF8Alt);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    public static String c(String str) {
        if (str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        String strA = a(str);
        int length = strA.length();
        int i = 0;
        while (i < length) {
            char cCharAt = strA.charAt(i);
            if (cCharAt == '*') {
                sb.append("%2A");
            } else if (cCharAt == '+') {
                sb.append("%20");
            } else if (cCharAt == '%' && i + 2 < length && strA.charAt(i + 1) == '7' && strA.charAt(i + 2) == 'E') {
                sb.append('~');
                i += 2;
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
        return sb.toString();
    }
}
