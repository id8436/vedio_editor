package com.adobe.creativesdk.foundation.internal.utils;

import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.Charsets;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeNetworkUtils {
    public static Map<String, List<String>> parseAndDecodeHTTPHeadersFromString(String str) {
        String str2;
        String[] strArrSplit = str.split("\r\n");
        HashMap map = new HashMap(strArrSplit.length);
        Pattern patternCompile = Pattern.compile("^([^:]+):(.*)$");
        int length = strArrSplit.length;
        int i = 0;
        String str3 = null;
        while (i < length) {
            String str4 = strArrSplit[i];
            if (str4.length() == 0) {
                str2 = str3;
            } else {
                char cCharAt = str4.charAt(0);
                if (str3 != null && (cCharAt == '\t' || cCharAt == ' ')) {
                    String str5 = map.get(str3) != null ? (String) ((List) map.get(str3)).get(0) : null;
                    if (str5 != null) {
                        String strConcat = str5.concat(String.format(",%s", str4.trim()));
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(strConcat);
                        map.put(str3, arrayList);
                    }
                    str2 = str3;
                } else {
                    Matcher matcher = patternCompile.matcher(str4);
                    if (matcher != null && matcher.find() && matcher.groupCount() == 2) {
                        String strGroup = matcher.group(1);
                        String strGroup2 = matcher.group(2);
                        String str6 = map.get(strGroup) != null ? (String) ((List) map.get(strGroup)).get(0) : null;
                        if (str6 != null) {
                            String strConcat2 = str6.concat(String.format(",%s", strGroup2));
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(strConcat2);
                            map.put(strGroup, arrayList2);
                            str2 = strGroup;
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            arrayList3.add(strGroup2);
                            map.put(strGroup, arrayList3);
                            str2 = strGroup;
                        }
                    } else {
                        str2 = null;
                    }
                }
            }
            i++;
            str3 = str2;
        }
        return convertHeaderKeyToLowerCaseAndDecode(map);
    }

    public static Map<String, List<String>> convertHeaderKeyToLowerCaseAndDecode(Map<String, List<String>> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        HashMap map2 = new HashMap();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= value.size()) {
                    break;
                }
                arrayList.add(getRFC2047DecodedValue(value.get(i2)));
                i = i2 + 1;
            }
            if (key != null) {
                map2.put(key.toLowerCase(), arrayList);
            }
        }
        return map2;
    }

    public static String getRFC2047DecodedValue(String str) {
        if (str != null && str.startsWith("=?") && str.endsWith("?=")) {
            String[] strArrSplit = str.split("\\?");
            if (strArrSplit == null || strArrSplit.length >= 4) {
                String str2 = strArrSplit[3];
                String str3 = strArrSplit[2];
                if (strArrSplit[1].startsWith("utf-8")) {
                    if (str3.startsWith("b")) {
                        return new String(Base64.decode(str2, 0), Charsets.UTF_8);
                    }
                    if (str3.startsWith("q")) {
                        return new String(str2.getBytes(Charsets.UTF_8), Charsets.UTF_8);
                    }
                    return str;
                }
                return str;
            }
            return str;
        }
        return str;
    }

    public static String generateUuid() {
        return UUID.randomUUID().toString().toUpperCase();
    }

    static int defaultPortWithScheme(String str) {
        if (str.toLowerCase().equals("http")) {
            return 80;
        }
        if (str.toLowerCase().equals("https")) {
            return 443;
        }
        return -1;
    }

    static boolean isURLCompatibleWithServiceEndpointAtURL(URI uri, URI uri2) {
        if (uri2 == null || uri == null) {
            return false;
        }
        if (uri2.equals(uri)) {
            return true;
        }
        String host = uri2.getHost();
        String host2 = uri.getHost();
        if (host == null) {
            return false;
        }
        if (host2 == null) {
            return true;
        }
        if (!host.toLowerCase().equals(host2.toLowerCase())) {
            return false;
        }
        String scheme = uri2.getScheme();
        if (scheme == null) {
            scheme = "http";
        }
        String scheme2 = uri.getScheme();
        if (scheme2 == null) {
            scheme2 = "http";
        }
        int port = uri2.getPort();
        if (port == -1) {
            port = defaultPortWithScheme(scheme);
        }
        int port2 = uri.getPort();
        if (port2 == -1) {
            port2 = defaultPortWithScheme(scheme2);
        }
        if (port == port2 && scheme.toLowerCase().equals(scheme2.toLowerCase())) {
            return true;
        }
        return false;
    }

    public static boolean isURLIncompatibleWithURL(URI uri, URI uri2) {
        if (uri == null || uri2 == null) {
            return true;
        }
        String host = uri.getHost();
        String host2 = uri2.getHost();
        if (host == null || host2 == null) {
            return false;
        }
        return !isURLCompatibleWithServiceEndpointAtURL(uri, uri2);
    }

    public static String getUserAgent() {
        if (TextUtils.isEmpty(AdobeCSDKFoundation.getApplicationName())) {
            return null;
        }
        return AdobeCSDKFoundation.getApplicationName() + "(" + AdobeCSDKFoundation.getApplicationVersion() + ";" + Build.MANUFACTURER + ";" + Build.MODEL + ";Android;" + Build.VERSION.RELEASE + ")";
    }
}
