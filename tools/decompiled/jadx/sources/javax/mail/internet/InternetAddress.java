package javax.mail.internet;

import com.google.gdata.data.analytics.Engagement;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import javax.mail.Address;
import javax.mail.Session;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class InternetAddress extends Address implements Cloneable {
    private static final String rfc822phrase = HeaderTokenizer.RFC822.replace(' ', (char) 0).replace('\t', (char) 0);
    private static final long serialVersionUID = -7507595530758302903L;
    private static final String specialsNoDot = "()<>,;:\\\"[]@";
    private static final String specialsNoDotNoAt = "()<>,;:\\\"[]";
    protected String address;
    protected String encodedPersonal;
    protected String personal;

    public InternetAddress() {
    }

    public InternetAddress(String str) throws AddressException {
        InternetAddress[] internetAddressArr = parse(str, true);
        if (internetAddressArr.length != 1) {
            throw new AddressException("Illegal address", str);
        }
        this.address = internetAddressArr[0].address;
        this.personal = internetAddressArr[0].personal;
        this.encodedPersonal = internetAddressArr[0].encodedPersonal;
    }

    public InternetAddress(String str, boolean z) throws AddressException {
        this(str);
        if (z) {
            checkAddress(this.address, true, true);
        }
    }

    public InternetAddress(String str, String str2) throws UnsupportedEncodingException {
        this(str, str2, null);
    }

    public InternetAddress(String str, String str2, String str3) throws UnsupportedEncodingException {
        this.address = str;
        setPersonal(str2, str3);
    }

    public Object clone() {
        try {
            return (InternetAddress) super.clone();
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    @Override // javax.mail.Address
    public String getType() {
        return "rfc822";
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setPersonal(String str, String str2) throws UnsupportedEncodingException {
        this.personal = str;
        if (str != null) {
            this.encodedPersonal = MimeUtility.encodeWord(str, str2, null);
        } else {
            this.encodedPersonal = null;
        }
    }

    public void setPersonal(String str) throws UnsupportedEncodingException {
        this.personal = str;
        if (str != null) {
            this.encodedPersonal = MimeUtility.encodeWord(str);
        } else {
            this.encodedPersonal = null;
        }
    }

    public String getAddress() {
        return this.address;
    }

    public String getPersonal() {
        if (this.personal != null) {
            return this.personal;
        }
        if (this.encodedPersonal != null) {
            try {
                this.personal = MimeUtility.decodeText(this.encodedPersonal);
                return this.personal;
            } catch (Exception e2) {
                return this.encodedPersonal;
            }
        }
        return null;
    }

    @Override // javax.mail.Address
    public String toString() {
        if (this.encodedPersonal == null && this.personal != null) {
            try {
                this.encodedPersonal = MimeUtility.encodeWord(this.personal);
            } catch (UnsupportedEncodingException e2) {
            }
        }
        if (this.encodedPersonal != null) {
            return new StringBuffer().append(quotePhrase(this.encodedPersonal)).append(" <").append(this.address).append(Engagement.Comparison.GT).toString();
        }
        if (isGroup() || isSimple()) {
            return this.address;
        }
        return new StringBuffer().append(Engagement.Comparison.LT).append(this.address).append(Engagement.Comparison.GT).toString();
    }

    public String toUnicodeString() {
        String personal = getPersonal();
        if (personal != null) {
            return new StringBuffer().append(quotePhrase(personal)).append(" <").append(this.address).append(Engagement.Comparison.GT).toString();
        }
        if (isGroup() || isSimple()) {
            return this.address;
        }
        return new StringBuffer().append(Engagement.Comparison.LT).append(this.address).append(Engagement.Comparison.GT).toString();
    }

    private static String quotePhrase(String str) {
        int length = str.length();
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"' || cCharAt == '\\') {
                StringBuffer stringBuffer = new StringBuffer(length + 3);
                stringBuffer.append('\"');
                for (int i2 = 0; i2 < length; i2++) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 == '\"' || cCharAt2 == '\\') {
                        stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    }
                    stringBuffer.append(cCharAt2);
                }
                stringBuffer.append('\"');
                return stringBuffer.toString();
            }
            if ((cCharAt < ' ' && cCharAt != '\r' && cCharAt != '\n' && cCharAt != '\t') || cCharAt >= 127 || rfc822phrase.indexOf(cCharAt) >= 0) {
                z = true;
            }
        }
        if (z) {
            StringBuffer stringBuffer2 = new StringBuffer(length + 2);
            stringBuffer2.append('\"').append(str).append('\"');
            return stringBuffer2.toString();
        }
        return str;
    }

    private static String unquote(String str) {
        int i;
        char cCharAt;
        if (str.startsWith("\"") && str.endsWith("\"")) {
            String strSubstring = str.substring(1, str.length() - 1);
            if (strSubstring.indexOf(92) >= 0) {
                StringBuffer stringBuffer = new StringBuffer(strSubstring.length());
                int i2 = 0;
                while (i2 < strSubstring.length()) {
                    char cCharAt2 = strSubstring.charAt(i2);
                    if (cCharAt2 != '\\' || i2 >= strSubstring.length() - 1) {
                        i = i2;
                        cCharAt = cCharAt2;
                    } else {
                        i = i2 + 1;
                        cCharAt = strSubstring.charAt(i);
                    }
                    stringBuffer.append(cCharAt);
                    i2 = i + 1;
                }
                return stringBuffer.toString();
            }
            return strSubstring;
        }
        return str;
    }

    @Override // javax.mail.Address
    public boolean equals(Object obj) {
        if (!(obj instanceof InternetAddress)) {
            return false;
        }
        String address = ((InternetAddress) obj).getAddress();
        if (address == this.address) {
            return true;
        }
        return this.address != null && this.address.equalsIgnoreCase(address);
    }

    public int hashCode() {
        if (this.address == null) {
            return 0;
        }
        return this.address.toLowerCase().hashCode();
    }

    public static String toString(Address[] addressArr) {
        return toString(addressArr, 0);
    }

    public static String toString(Address[] addressArr, int i) {
        if (addressArr == null || addressArr.length == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < addressArr.length; i2++) {
            if (i2 != 0) {
                stringBuffer.append(", ");
                i += 2;
            }
            String string = addressArr[i2].toString();
            if (lengthOfFirstSegment(string) + i > 76) {
                stringBuffer.append("\r\n\t");
                i = 8;
            }
            stringBuffer.append(string);
            i = lengthOfLastSegment(string, i);
        }
        return stringBuffer.toString();
    }

    private static int lengthOfFirstSegment(String str) {
        int iIndexOf = str.indexOf("\r\n");
        return iIndexOf != -1 ? iIndexOf : str.length();
    }

    private static int lengthOfLastSegment(String str, int i) {
        return str.lastIndexOf("\r\n") != -1 ? (str.length() - r0) - 2 : str.length() + i;
    }

    public static InternetAddress getLocalAddress(Session session) {
        String property;
        String property2;
        String property3;
        InetAddress localHost;
        InternetAddress internetAddress = null;
        try {
            if (session == null) {
                property3 = System.getProperty("user.name");
                property2 = InetAddress.getLocalHost().getHostName();
                property = null;
            } else {
                property = session.getProperty("mail.from");
                if (property == null) {
                    property3 = session.getProperty("mail.user");
                    if (property3 == null || property3.length() == 0) {
                        property3 = session.getProperty("user.name");
                    }
                    if (property3 == null || property3.length() == 0) {
                        property3 = System.getProperty("user.name");
                    }
                    property2 = session.getProperty("mail.host");
                    if ((property2 == null || property2.length() == 0) && (localHost = InetAddress.getLocalHost()) != null) {
                        property2 = localHost.getHostName();
                    }
                } else {
                    property2 = null;
                    property3 = null;
                }
            }
            String string = (property != null || property3 == null || property3.length() == 0 || property2 == null || property2.length() == 0) ? property : new StringBuffer().append(property3).append("@").append(property2).toString();
            if (string == null) {
                return null;
            }
            internetAddress = new InternetAddress(string);
            return internetAddress;
        } catch (SecurityException e2) {
            return internetAddress;
        } catch (UnknownHostException e3) {
            return internetAddress;
        } catch (AddressException e4) {
            return internetAddress;
        }
    }

    public static InternetAddress[] parse(String str) throws AddressException {
        return parse(str, true);
    }

    public static InternetAddress[] parse(String str, boolean z) throws AddressException {
        return parse(str, z, false);
    }

    public static InternetAddress[] parseHeader(String str, boolean z) throws AddressException {
        return parse(str, z, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:157:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x010b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static javax.mail.internet.InternetAddress[] parse(java.lang.String r14, boolean r15, boolean r16) throws javax.mail.internet.AddressException {
        /*
            Method dump skipped, instruction units count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.InternetAddress.parse(java.lang.String, boolean, boolean):javax.mail.internet.InternetAddress[]");
    }

    public void validate() throws AddressException {
        checkAddress(getAddress(), true, true);
    }

    private static void checkAddress(String str, boolean z, boolean z2) throws AddressException {
        String strSubstring;
        String strSubstring2;
        int i = 0;
        if (str.indexOf(34) < 0) {
            if (z) {
                while (true) {
                    int iIndexOfAny = indexOfAny(str, ",:", i);
                    if (iIndexOfAny < 0) {
                        break;
                    }
                    if (str.charAt(i) != '@') {
                        throw new AddressException("Illegal route-addr", str);
                    }
                    if (str.charAt(iIndexOfAny) != ':') {
                        i = iIndexOfAny + 1;
                    } else {
                        i = iIndexOfAny + 1;
                        break;
                    }
                }
            }
            int iIndexOf = str.indexOf(64, i);
            if (iIndexOf >= 0) {
                if (iIndexOf == i) {
                    throw new AddressException("Missing local name", str);
                }
                if (iIndexOf == str.length() - 1) {
                    throw new AddressException("Missing domain", str);
                }
                strSubstring2 = str.substring(i, iIndexOf);
                strSubstring = str.substring(iIndexOf + 1);
            } else {
                if (z2) {
                    throw new AddressException("Missing final '@domain'", str);
                }
                strSubstring = null;
                strSubstring2 = str;
            }
            if (indexOfAny(str, " \t\n\r") >= 0) {
                throw new AddressException("Illegal whitespace in address", str);
            }
            if (indexOfAny(strSubstring2, specialsNoDot) >= 0) {
                throw new AddressException("Illegal character in local name", str);
            }
            if (strSubstring != null && strSubstring.indexOf(91) < 0 && indexOfAny(strSubstring, specialsNoDot) >= 0) {
                throw new AddressException("Illegal character in domain", str);
            }
        }
    }

    private boolean isSimple() {
        return this.address == null || indexOfAny(this.address, specialsNoDotNoAt) < 0;
    }

    public boolean isGroup() {
        return this.address != null && this.address.endsWith(";") && this.address.indexOf(58) > 0;
    }

    public InternetAddress[] getGroup(boolean z) throws AddressException {
        int iIndexOf;
        String address = getAddress();
        if (address.endsWith(";") && (iIndexOf = address.indexOf(58)) >= 0) {
            return parseHeader(address.substring(iIndexOf + 1, address.length() - 1), z);
        }
        return null;
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
