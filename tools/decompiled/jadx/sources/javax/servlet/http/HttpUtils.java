package javax.servlet.http;

import java.util.Hashtable;
import java.util.ResourceBundle;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes3.dex */
public class HttpUtils {
    private static final String LSTRING_FILE = "javax.servlet.http.LocalStrings";
    private static ResourceBundle lStrings = ResourceBundle.getBundle(LSTRING_FILE);

    public static Hashtable parseQueryString(String str) {
        String[] strArr;
        if (str == null) {
            throw new IllegalArgumentException();
        }
        Hashtable hashtable = new Hashtable();
        StringBuffer stringBuffer = new StringBuffer();
        StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            int iIndexOf = strNextToken.indexOf(61);
            if (iIndexOf == -1) {
                throw new IllegalArgumentException();
            }
            String name = parseName(strNextToken.substring(0, iIndexOf), stringBuffer);
            String name2 = parseName(strNextToken.substring(iIndexOf + 1, strNextToken.length()), stringBuffer);
            if (hashtable.containsKey(name)) {
                String[] strArr2 = (String[]) hashtable.get(name);
                String[] strArr3 = new String[strArr2.length + 1];
                for (int i = 0; i < strArr2.length; i++) {
                    strArr3[i] = strArr2[i];
                }
                strArr3[strArr2.length] = name2;
                strArr = strArr3;
            } else {
                strArr = new String[]{name2};
            }
            hashtable.put(name, strArr);
        }
        return hashtable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        throw new java.lang.IllegalArgumentException(r0.getMessage());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Hashtable parsePostData(int r4, javax.servlet.ServletInputStream r5) {
        /*
            r0 = 0
            if (r4 > 0) goto L9
            java.util.Hashtable r0 = new java.util.Hashtable
            r0.<init>()
        L8:
            return r0
        L9:
            if (r5 != 0) goto L11
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>()
            throw r0
        L11:
            byte[] r1 = new byte[r4]
        L13:
            int r2 = r4 - r0
            int r2 = r5.read(r1, r0, r2)     // Catch: java.io.IOException -> L2a
            if (r2 > 0) goto L35
            java.util.ResourceBundle r0 = javax.servlet.http.HttpUtils.lStrings     // Catch: java.io.IOException -> L2a
            java.lang.String r1 = "err.io.short_read"
            java.lang.String r0 = r0.getString(r1)     // Catch: java.io.IOException -> L2a
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException     // Catch: java.io.IOException -> L2a
            r1.<init>(r0)     // Catch: java.io.IOException -> L2a
            throw r1     // Catch: java.io.IOException -> L2a
        L2a:
            r0 = move-exception
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r0 = r0.getMessage()
            r1.<init>(r0)
            throw r1
        L35:
            int r0 = r0 + r2
            int r2 = r4 - r0
            if (r2 > 0) goto L13
            java.lang.String r0 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L48
            r2 = 0
            java.lang.String r3 = "8859_1"
            r0.<init>(r1, r2, r4, r3)     // Catch: java.io.UnsupportedEncodingException -> L48
            java.util.Hashtable r0 = parseQueryString(r0)     // Catch: java.io.UnsupportedEncodingException -> L48
            goto L8
        L48:
            r0 = move-exception
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r0 = r0.getMessage()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.servlet.http.HttpUtils.parsePostData(int, javax.servlet.ServletInputStream):java.util.Hashtable");
    }

    private static String parseName(String str, StringBuffer stringBuffer) {
        int i = 0;
        stringBuffer.setLength(0);
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '%':
                    try {
                        stringBuffer.append((char) Integer.parseInt(str.substring(i + 1, i + 3), 16));
                        i += 2;
                    } catch (NumberFormatException e2) {
                        throw new IllegalArgumentException();
                    } catch (StringIndexOutOfBoundsException e3) {
                        String strSubstring = str.substring(i);
                        stringBuffer.append(strSubstring);
                        if (strSubstring.length() == 2) {
                            i++;
                        }
                    }
                    break;
                case '+':
                    stringBuffer.append(' ');
                    break;
                default:
                    stringBuffer.append(cCharAt);
                    break;
            }
            i++;
        }
        return stringBuffer.toString();
    }

    public static StringBuffer getRequestURL(HttpServletRequest httpServletRequest) {
        StringBuffer stringBuffer = new StringBuffer();
        String scheme = httpServletRequest.getScheme();
        int serverPort = httpServletRequest.getServerPort();
        String requestURI = httpServletRequest.getRequestURI();
        stringBuffer.append(scheme);
        stringBuffer.append("://");
        stringBuffer.append(httpServletRequest.getServerName());
        if ((scheme.equals("http") && serverPort != 80) || (scheme.equals("https") && serverPort != 443)) {
            stringBuffer.append(':');
            stringBuffer.append(httpServletRequest.getServerPort());
        }
        stringBuffer.append(requestURI);
        return stringBuffer;
    }
}
