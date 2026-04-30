package javax.mail.internet;

import com.behance.sdk.util.BehanceSDKConstants;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.mail.Address;

/* JADX INFO: loaded from: classes3.dex */
public class NewsAddress extends Address {
    private static final long serialVersionUID = -4203797299824684143L;
    protected String host;
    protected String newsgroup;

    public NewsAddress() {
    }

    public NewsAddress(String str) {
        this(str, null);
    }

    public NewsAddress(String str, String str2) {
        this.newsgroup = str;
        this.host = str2;
    }

    @Override // javax.mail.Address
    public String getType() {
        return "news";
    }

    public void setNewsgroup(String str) {
        this.newsgroup = str;
    }

    public String getNewsgroup() {
        return this.newsgroup;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public String getHost() {
        return this.host;
    }

    @Override // javax.mail.Address
    public String toString() {
        return this.newsgroup;
    }

    @Override // javax.mail.Address
    public boolean equals(Object obj) {
        if (!(obj instanceof NewsAddress)) {
            return false;
        }
        NewsAddress newsAddress = (NewsAddress) obj;
        if (this.newsgroup.equals(newsAddress.newsgroup)) {
            return (this.host == null && newsAddress.host == null) || !(this.host == null || newsAddress.host == null || !this.host.equalsIgnoreCase(newsAddress.host));
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.newsgroup != null ? 0 + this.newsgroup.hashCode() : 0;
        if (this.host != null) {
            return iHashCode + this.host.toLowerCase().hashCode();
        }
        return iHashCode;
    }

    public static String toString(Address[] addressArr) {
        if (addressArr == null || addressArr.length == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(((NewsAddress) addressArr[0]).toString());
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 < addressArr.length) {
                stringBuffer.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(((NewsAddress) addressArr[i2]).toString());
                i = i2 + 1;
            } else {
                return stringBuffer.toString();
            }
        }
    }

    public static NewsAddress[] parse(String str) throws AddressException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        Vector vector = new Vector();
        while (stringTokenizer.hasMoreTokens()) {
            vector.addElement(new NewsAddress(stringTokenizer.nextToken()));
        }
        int size = vector.size();
        NewsAddress[] newsAddressArr = new NewsAddress[size];
        if (size > 0) {
            vector.copyInto(newsAddressArr);
        }
        return newsAddressArr;
    }
}
