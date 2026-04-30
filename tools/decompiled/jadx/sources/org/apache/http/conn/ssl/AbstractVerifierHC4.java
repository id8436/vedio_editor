package org.apache.http.conn.ssl;

import android.util.Log;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.InetAddressUtilsHC4;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public abstract class AbstractVerifierHC4 implements X509HostnameVerifier {
    private static final String[] BAD_COUNTRY_2LDS = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
    private static final String TAG = "HttpClient";

    static {
        Arrays.sort(BAD_COUNTRY_2LDS);
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, SSLSocket sSLSocket) throws IOException {
        if (str == null) {
            throw new NullPointerException("host to verify is null");
        }
        SSLSession session = sSLSocket.getSession();
        if (session == null) {
            sSLSocket.getInputStream().available();
            session = sSLSocket.getSession();
            if (session == null) {
                sSLSocket.startHandshake();
                session = sSLSocket.getSession();
            }
        }
        verify(str, (X509Certificate) session.getPeerCertificates()[0]);
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e2) {
            return false;
        }
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, X509Certificate x509Certificate) throws SSLException {
        verify(str, getCNs(x509Certificate), getSubjectAlts(x509Certificate, str));
    }

    public final void verify(String str, String[] strArr, String[] strArr2, boolean z) throws SSLException {
        LinkedList linkedList = new LinkedList();
        if (strArr != null && strArr.length > 0 && strArr[0] != null) {
            linkedList.add(strArr[0]);
        }
        if (strArr2 != null) {
            for (String str2 : strArr2) {
                if (str2 != null) {
                    linkedList.add(str2);
                }
            }
        }
        if (linkedList.isEmpty()) {
            throw new SSLException("Certificate for <" + str + "> doesn't contain CN or DNS subjectAlt");
        }
        StringBuilder sb = new StringBuilder();
        String strNormaliseIPv6Address = normaliseIPv6Address(str.trim().toLowerCase(Locale.US));
        Iterator it = linkedList.iterator();
        boolean zEquals = false;
        while (it.hasNext()) {
            String lowerCase = ((String) it.next()).toLowerCase(Locale.US);
            sb.append(" <");
            sb.append(lowerCase);
            sb.append('>');
            if (it.hasNext()) {
                sb.append(" OR");
            }
            String[] strArrSplit = lowerCase.split("\\.");
            if (strArrSplit.length >= 3 && strArrSplit[0].endsWith("*") && validCountryWildcard(lowerCase) && !isIPAddress(str)) {
                String str3 = strArrSplit[0];
                if (str3.length() > 1) {
                    String strSubstring = str3.substring(0, str3.length() - 1);
                    zEquals = strNormaliseIPv6Address.startsWith(strSubstring) && strNormaliseIPv6Address.substring(strSubstring.length()).endsWith(lowerCase.substring(str3.length()));
                } else {
                    zEquals = strNormaliseIPv6Address.endsWith(lowerCase.substring(1));
                }
                if (zEquals && z) {
                    zEquals = countDots(strNormaliseIPv6Address) == countDots(lowerCase);
                }
            } else {
                zEquals = strNormaliseIPv6Address.equals(normaliseIPv6Address(lowerCase));
            }
            if (zEquals) {
                break;
            }
        }
        if (!zEquals) {
            throw new SSLException("hostname in certificate didn't match: <" + str + "> !=" + ((Object) sb));
        }
    }

    @Deprecated
    public static boolean acceptableCountryWildcard(String str) {
        String[] strArrSplit = str.split("\\.");
        return (strArrSplit.length == 3 && strArrSplit[2].length() == 2 && Arrays.binarySearch(BAD_COUNTRY_2LDS, strArrSplit[1]) >= 0) ? false : true;
    }

    boolean validCountryWildcard(String str) {
        String[] strArrSplit = str.split("\\.");
        return (strArrSplit.length == 3 && strArrSplit[2].length() == 2 && Arrays.binarySearch(BAD_COUNTRY_2LDS, strArrSplit[1]) >= 0) ? false : true;
    }

    public static String[] getCNs(X509Certificate x509Certificate) {
        LinkedList linkedList = new LinkedList();
        StringTokenizer stringTokenizer = new StringTokenizer(x509Certificate.getSubjectX500Principal().toString(), ",+");
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if (strTrim.length() > 3 && strTrim.substring(0, 3).equalsIgnoreCase("CN=")) {
                linkedList.add(strTrim.substring(3));
            }
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[linkedList.size()];
        linkedList.toArray(strArr);
        return strArr;
    }

    private static String[] getSubjectAlts(X509Certificate x509Certificate, String str) {
        int i;
        Collection<List<?>> subjectAlternativeNames;
        if (isIPAddress(str)) {
            i = 7;
        } else {
            i = 2;
        }
        LinkedList linkedList = new LinkedList();
        try {
            subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException e2) {
            subjectAlternativeNames = null;
        }
        if (subjectAlternativeNames != null) {
            for (List<?> list : subjectAlternativeNames) {
                if (((Integer) list.get(0)).intValue() == i) {
                    linkedList.add((String) list.get(1));
                }
            }
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[linkedList.size()];
        linkedList.toArray(strArr);
        return strArr;
    }

    public static String[] getDNSSubjectAlts(X509Certificate x509Certificate) {
        return getSubjectAlts(x509Certificate, null);
    }

    public static int countDots(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '.') {
                i++;
            }
        }
        return i;
    }

    private static boolean isIPAddress(String str) {
        return str != null && (InetAddressUtilsHC4.isIPv4Address(str) || InetAddressUtilsHC4.isIPv6Address(str));
    }

    private String normaliseIPv6Address(String str) {
        if (str != null && InetAddressUtilsHC4.isIPv6Address(str)) {
            try {
                return InetAddress.getByName(str).getHostAddress();
            } catch (UnknownHostException e2) {
                Log.e(TAG, "Unexpected error converting " + str, e2);
                return str;
            }
        }
        return str;
    }
}
