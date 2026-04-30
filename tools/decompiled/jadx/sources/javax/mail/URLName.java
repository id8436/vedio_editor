package javax.mail;

import com.google.common.base.Ascii;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.BitSet;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class URLName {
    static final int caseDiff = 32;
    private static boolean doEncode;
    static BitSet dontNeedEncoding;
    private String file;
    protected String fullURL;
    private int hashCode;
    private String host;
    private InetAddress hostAddress;
    private boolean hostAddressKnown;
    private String password;
    private int port;
    private String protocol;
    private String ref;
    private String username;

    static {
        doEncode = true;
        try {
            doEncode = Boolean.getBoolean("mail.URLName.dontencode") ? false : true;
        } catch (Exception e2) {
        }
        dontNeedEncoding = new BitSet(256);
        for (int i = 97; i <= 122; i++) {
            dontNeedEncoding.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            dontNeedEncoding.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            dontNeedEncoding.set(i3);
        }
        dontNeedEncoding.set(32);
        dontNeedEncoding.set(45);
        dontNeedEncoding.set(95);
        dontNeedEncoding.set(46);
        dontNeedEncoding.set(42);
    }

    public URLName(String str, String str2, int i, String str3, String str4, String str5) {
        int iIndexOf;
        this.hostAddressKnown = false;
        this.port = -1;
        this.hashCode = 0;
        this.protocol = str;
        this.host = str2;
        this.port = i;
        if (str3 != null && (iIndexOf = str3.indexOf(35)) != -1) {
            this.file = str3.substring(0, iIndexOf);
            this.ref = str3.substring(iIndexOf + 1);
        } else {
            this.file = str3;
            this.ref = null;
        }
        this.username = doEncode ? encode(str4) : str4;
        this.password = doEncode ? encode(str5) : str5;
    }

    public URLName(URL url) {
        this(url.toString());
    }

    public URLName(String str) {
        this.hostAddressKnown = false;
        this.port = -1;
        this.hashCode = 0;
        parseString(str);
    }

    public String toString() {
        if (this.fullURL == null) {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.protocol != null) {
                stringBuffer.append(this.protocol);
                stringBuffer.append(":");
            }
            if (this.username != null || this.host != null) {
                stringBuffer.append("//");
                if (this.username != null) {
                    stringBuffer.append(this.username);
                    if (this.password != null) {
                        stringBuffer.append(":");
                        stringBuffer.append(this.password);
                    }
                    stringBuffer.append("@");
                }
                if (this.host != null) {
                    stringBuffer.append(this.host);
                }
                if (this.port != -1) {
                    stringBuffer.append(":");
                    stringBuffer.append(Integer.toString(this.port));
                }
                if (this.file != null) {
                    stringBuffer.append(URIUtil.SLASH);
                }
            }
            if (this.file != null) {
                stringBuffer.append(this.file);
            }
            if (this.ref != null) {
                stringBuffer.append("#");
                stringBuffer.append(this.ref);
            }
            this.fullURL = stringBuffer.toString();
        }
        return this.fullURL;
    }

    protected void parseString(String str) {
        int iIndexOf;
        String strSubstring;
        int iIndexOf2;
        this.password = null;
        this.username = null;
        this.host = null;
        this.ref = null;
        this.file = null;
        this.protocol = null;
        this.port = -1;
        int length = str.length();
        int iIndexOf3 = str.indexOf(58);
        if (iIndexOf3 != -1) {
            this.protocol = str.substring(0, iIndexOf3);
        }
        if (str.regionMatches(iIndexOf3 + 1, "//", 0, 2)) {
            int iIndexOf4 = str.indexOf(47, iIndexOf3 + 3);
            if (iIndexOf4 != -1) {
                strSubstring = str.substring(iIndexOf3 + 3, iIndexOf4);
                if (iIndexOf4 + 1 < length) {
                    this.file = str.substring(iIndexOf4 + 1);
                } else {
                    this.file = "";
                }
            } else {
                strSubstring = str.substring(iIndexOf3 + 3);
            }
            int iIndexOf5 = strSubstring.indexOf(64);
            if (iIndexOf5 != -1) {
                String strSubstring2 = strSubstring.substring(0, iIndexOf5);
                strSubstring = strSubstring.substring(iIndexOf5 + 1);
                int iIndexOf6 = strSubstring2.indexOf(58);
                if (iIndexOf6 != -1) {
                    this.username = strSubstring2.substring(0, iIndexOf6);
                    this.password = strSubstring2.substring(iIndexOf6 + 1);
                } else {
                    this.username = strSubstring2;
                }
            }
            if (strSubstring.length() > 0 && strSubstring.charAt(0) == '[') {
                iIndexOf2 = strSubstring.indexOf(58, strSubstring.indexOf(93));
            } else {
                iIndexOf2 = strSubstring.indexOf(58);
            }
            if (iIndexOf2 != -1) {
                String strSubstring3 = strSubstring.substring(iIndexOf2 + 1);
                if (strSubstring3.length() > 0) {
                    try {
                        this.port = Integer.parseInt(strSubstring3);
                    } catch (NumberFormatException e2) {
                        this.port = -1;
                    }
                }
                this.host = strSubstring.substring(0, iIndexOf2);
            } else {
                this.host = strSubstring;
            }
        } else if (iIndexOf3 + 1 < length) {
            this.file = str.substring(iIndexOf3 + 1);
        }
        if (this.file != null && (iIndexOf = this.file.indexOf(35)) != -1) {
            this.ref = this.file.substring(iIndexOf + 1);
            this.file = this.file.substring(0, iIndexOf);
        }
    }

    public int getPort() {
        return this.port;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public String getFile() {
        return this.file;
    }

    public String getRef() {
        return this.ref;
    }

    public String getHost() {
        return this.host;
    }

    public String getUsername() {
        return doEncode ? decode(this.username) : this.username;
    }

    public String getPassword() {
        return doEncode ? decode(this.password) : this.password;
    }

    public URL getURL() throws MalformedURLException {
        return new URL(getProtocol(), getHost(), getPort(), getFile());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof URLName)) {
            return false;
        }
        URLName uRLName = (URLName) obj;
        if (uRLName.protocol == null || !uRLName.protocol.equals(this.protocol)) {
            return false;
        }
        InetAddress hostAddress = getHostAddress();
        InetAddress hostAddress2 = uRLName.getHostAddress();
        if (hostAddress != null && hostAddress2 != null) {
            if (!hostAddress.equals(hostAddress2)) {
                return false;
            }
        } else if (this.host != null && uRLName.host != null) {
            if (!this.host.equalsIgnoreCase(uRLName.host)) {
                return false;
            }
        } else if (this.host != uRLName.host) {
            return false;
        }
        if (this.username == uRLName.username || (this.username != null && this.username.equals(uRLName.username))) {
            return (this.file == null ? "" : this.file).equals(uRLName.file == null ? "" : uRLName.file) && this.port == uRLName.port;
        }
        return false;
    }

    public int hashCode() {
        if (this.hashCode != 0) {
            return this.hashCode;
        }
        if (this.protocol != null) {
            this.hashCode += this.protocol.hashCode();
        }
        InetAddress hostAddress = getHostAddress();
        if (hostAddress != null) {
            this.hashCode = hostAddress.hashCode() + this.hashCode;
        } else if (this.host != null) {
            this.hashCode += this.host.toLowerCase().hashCode();
        }
        if (this.username != null) {
            this.hashCode += this.username.hashCode();
        }
        if (this.file != null) {
            this.hashCode += this.file.hashCode();
        }
        this.hashCode += this.port;
        return this.hashCode;
    }

    private synchronized InetAddress getHostAddress() {
        InetAddress inetAddress = null;
        synchronized (this) {
            if (this.hostAddressKnown) {
                inetAddress = this.hostAddress;
            } else if (this.host != null) {
                try {
                    this.hostAddress = InetAddress.getByName(this.host);
                } catch (UnknownHostException e2) {
                    this.hostAddress = null;
                }
                this.hostAddressKnown = true;
                inetAddress = this.hostAddress;
            }
        }
        return inetAddress;
    }

    static String encode(String str) {
        if (str == null) {
            return null;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == ' ' || !dontNeedEncoding.get(cCharAt)) {
                return _encode(str);
            }
        }
        return str;
    }

    private static String _encode(String str) {
        StringBuffer stringBuffer = new StringBuffer(str.length());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(10);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (dontNeedEncoding.get(cCharAt)) {
                if (cCharAt == ' ') {
                    cCharAt = '+';
                }
                stringBuffer.append(cCharAt);
            } else {
                try {
                    outputStreamWriter.write(cCharAt);
                    outputStreamWriter.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    for (int i2 = 0; i2 < byteArray.length; i2++) {
                        stringBuffer.append('%');
                        char cForDigit = Character.forDigit((byteArray[i2] >> 4) & 15, 16);
                        if (Character.isLetter(cForDigit)) {
                            cForDigit = (char) (cForDigit - ' ');
                        }
                        stringBuffer.append(cForDigit);
                        char cForDigit2 = Character.forDigit(byteArray[i2] & Ascii.SI, 16);
                        if (Character.isLetter(cForDigit2)) {
                            cForDigit2 = (char) (cForDigit2 - ' ');
                        }
                        stringBuffer.append(cForDigit2);
                    }
                    byteArrayOutputStream.reset();
                } catch (IOException e2) {
                    byteArrayOutputStream.reset();
                }
            }
        }
        return stringBuffer.toString();
    }

    static String decode(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        if (indexOfAny(str, "+%") != -1) {
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            while (i < str.length()) {
                char cCharAt = str.charAt(i);
                switch (cCharAt) {
                    case '%':
                        try {
                            stringBuffer.append((char) Integer.parseInt(str.substring(i + 1, i + 3), 16));
                            i += 2;
                        } catch (NumberFormatException e2) {
                            throw new IllegalArgumentException();
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
            String string = stringBuffer.toString();
            try {
                str2 = new String(string.getBytes("8859_1"));
            } catch (UnsupportedEncodingException e3) {
                str2 = string;
            }
            return str2;
        }
        return str;
    }

    private static int indexOfAny(String str, String str2) {
        return indexOfAny(str, str2, 0);
    }

    private static int indexOfAny(String str, String str2, int i) {
        try {
            int length = str.length();
            for (int i2 = i; i2 < length; i2++) {
                if (str2.indexOf(str.charAt(i2)) >= 0) {
                    return i2;
                }
            }
            return -1;
        } catch (StringIndexOutOfBoundsException e2) {
            return -1;
        }
    }
}
