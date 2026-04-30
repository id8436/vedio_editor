package com.google.gdata.client.authn.oauth;

import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.util.common.base.CharEscapers;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthUtil {
    private OAuthUtil() {
    }

    public static String getNonce() {
        return Long.toString(System.nanoTime());
    }

    public static String getTimestamp() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }

    public static String getSignatureBaseString(String str, String str2, Map<String, String> map) throws OAuthException {
        return encode(str2.toUpperCase()) + '&' + encode(normalizeUrl(str)) + '&' + encode(normalizeParameters(str, map));
    }

    public static String normalizeUrl(String str) throws OAuthException {
        int iLastIndexOf;
        if (str == null || str.length() == 0) {
            throw new OAuthException("Request Url cannot be empty");
        }
        try {
            URI uri = new URI(str);
            String authority = uri.getAuthority();
            String scheme = uri.getScheme();
            if (authority == null || scheme == null) {
                throw new OAuthException("Invalid Request Url");
            }
            String lowerCase = authority.toLowerCase();
            String lowerCase2 = scheme.toLowerCase();
            if (((lowerCase2.equals("http") && uri.getPort() == 80) || (lowerCase2.equals("https") && uri.getPort() == 443)) && (iLastIndexOf = lowerCase.lastIndexOf(":")) >= 0) {
                lowerCase = lowerCase.substring(0, iLastIndexOf);
            }
            return lowerCase2 + "://" + lowerCase + uri.getRawPath();
        } catch (URISyntaxException e2) {
            throw new OAuthException(e2);
        }
    }

    public static String normalizeParameters(String str, Map<String, String> map) {
        TreeMap treeMap = new TreeMap(map);
        if (str.indexOf(63) > 0) {
            treeMap.putAll(parseQuerystring(str.substring(str.indexOf(63) + 1)));
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            if (((String) entry.getValue()).length() != 0) {
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(encode((String) entry.getKey())).append(Engagement.Comparison.EQ).append(encode((String) entry.getValue()));
            }
        }
        return sb.toString();
    }

    public static Map<String, String> parseQuerystring(String str) {
        HashMap map = new HashMap();
        if (str != null && !str.equals("")) {
            for (String str2 : str.split("&")) {
                try {
                    String[] strArrSplit = str2.split(Engagement.Comparison.EQ, 2);
                    String strDecode = URLDecoder.decode(strArrSplit[0], "UTF-8");
                    if (strDecode != "") {
                        map.put(strDecode, strArrSplit.length > 1 ? URLDecoder.decode(strArrSplit[1], "UTF-8") : "");
                    }
                } catch (UnsupportedEncodingException e2) {
                }
            }
        }
        return map;
    }

    public static String encode(String str) {
        return CharEscapers.uriEscaper().escape(str).replace("+", "%20").replace("*", "%2A").replace("%7E", "~");
    }
}
