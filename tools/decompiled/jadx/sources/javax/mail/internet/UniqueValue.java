package javax.mail.internet;

import c.a.a.a.a.d.d;
import javax.mail.Session;

/* JADX INFO: loaded from: classes3.dex */
class UniqueValue {
    private static int part = 0;
    private static int id = 0;

    UniqueValue() {
    }

    public static String getUniqueBoundaryValue() {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBufferAppend = stringBuffer.append("----=_Part_");
        int i = part;
        part = i + 1;
        stringBufferAppend.append(i).append(d.ROLL_OVER_FILE_NAME_SEPARATOR).append(stringBuffer.hashCode()).append('.').append(System.currentTimeMillis());
        return stringBuffer.toString();
    }

    public static String getUniqueMessageIDValue(Session session) {
        String address;
        InternetAddress localAddress = InternetAddress.getLocalAddress(session);
        if (localAddress != null) {
            address = localAddress.getAddress();
        } else {
            address = "javamailuser@localhost";
        }
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBufferAppend = stringBuffer.append(stringBuffer.hashCode()).append('.');
        int i = id;
        id = i + 1;
        stringBufferAppend.append(i).append(System.currentTimeMillis()).append('.').append("JavaMail.").append(address);
        return stringBuffer.toString();
    }
}
