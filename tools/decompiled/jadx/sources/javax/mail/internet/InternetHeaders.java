package javax.mail.internet;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.l.b.a.e;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.mail.Header;
import javax.mail.MessagingException;
import org.apache.http.entity.mime.MIME;
import org.mortbay.jetty.HttpHeaders;

/* JADX INFO: loaded from: classes3.dex */
public class InternetHeaders {
    protected List headers = new ArrayList(40);

    public final class InternetHeader extends Header {
        String line;

        public InternetHeader(String str) {
            super("", "");
            int iIndexOf = str.indexOf(58);
            if (iIndexOf < 0) {
                this.name = str.trim();
            } else {
                this.name = str.substring(0, iIndexOf).trim();
            }
            this.line = str;
        }

        public InternetHeader(String str, String str2) {
            super(str, "");
            if (str2 != null) {
                this.line = new StringBuffer().append(str).append(": ").append(str2).toString();
            } else {
                this.line = null;
            }
        }

        @Override // javax.mail.Header
        public String getValue() {
            char cCharAt;
            int iIndexOf = this.line.indexOf(58);
            if (iIndexOf < 0) {
                return this.line;
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= this.line.length() || ((cCharAt = this.line.charAt(iIndexOf)) != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n')) {
                    break;
                }
            }
            return this.line.substring(iIndexOf);
        }
    }

    class matchEnum implements Enumeration {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Iterator f4914e;
        private boolean match;
        private String[] names;
        private InternetHeader next_header = null;
        private boolean want_line;

        matchEnum(List list, String[] strArr, boolean z, boolean z2) {
            this.f4914e = list.iterator();
            this.names = strArr;
            this.match = z;
            this.want_line = z2;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            if (this.next_header == null) {
                this.next_header = nextMatch();
            }
            return this.next_header != null;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            if (this.next_header == null) {
                this.next_header = nextMatch();
            }
            if (this.next_header == null) {
                throw new NoSuchElementException("No more headers");
            }
            InternetHeader internetHeader = this.next_header;
            this.next_header = null;
            return this.want_line ? internetHeader.line : new Header(internetHeader.getName(), internetHeader.getValue());
        }

        private InternetHeader nextMatch() {
            while (this.f4914e.hasNext()) {
                InternetHeader internetHeader = (InternetHeader) this.f4914e.next();
                if (internetHeader.line != null) {
                    if (this.names == null) {
                        if (this.match) {
                            return null;
                        }
                        return internetHeader;
                    }
                    int i = 0;
                    while (true) {
                        if (i < this.names.length) {
                            if (!this.names[i].equalsIgnoreCase(internetHeader.getName())) {
                                i++;
                            } else if (this.match) {
                                return internetHeader;
                            }
                        } else if (!this.match) {
                            return internetHeader;
                        }
                    }
                }
            }
            return null;
        }
    }

    public InternetHeaders() {
        this.headers.add(new InternetHeader("Return-Path", null));
        this.headers.add(new InternetHeader("Received", null));
        this.headers.add(new InternetHeader("Resent-Date", null));
        this.headers.add(new InternetHeader("Resent-From", null));
        this.headers.add(new InternetHeader("Resent-Sender", null));
        this.headers.add(new InternetHeader("Resent-To", null));
        this.headers.add(new InternetHeader("Resent-Cc", null));
        this.headers.add(new InternetHeader("Resent-Bcc", null));
        this.headers.add(new InternetHeader("Resent-Message-Id", null));
        this.headers.add(new InternetHeader("Date", null));
        this.headers.add(new InternetHeader("From", null));
        this.headers.add(new InternetHeader("Sender", null));
        this.headers.add(new InternetHeader("Reply-To", null));
        this.headers.add(new InternetHeader("To", null));
        this.headers.add(new InternetHeader("Cc", null));
        this.headers.add(new InternetHeader("Bcc", null));
        this.headers.add(new InternetHeader("Message-Id", null));
        this.headers.add(new InternetHeader("In-Reply-To", null));
        this.headers.add(new InternetHeader("References", null));
        this.headers.add(new InternetHeader("Subject", null));
        this.headers.add(new InternetHeader(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypeComments, null));
        this.headers.add(new InternetHeader("Keywords", null));
        this.headers.add(new InternetHeader("Errors-To", null));
        this.headers.add(new InternetHeader(HttpHeaders.MIME_VERSION, null));
        this.headers.add(new InternetHeader("Content-Type", null));
        this.headers.add(new InternetHeader(MIME.CONTENT_TRANSFER_ENC, null));
        this.headers.add(new InternetHeader("Content-MD5", null));
        this.headers.add(new InternetHeader(":", null));
        this.headers.add(new InternetHeader("Content-Length", null));
        this.headers.add(new InternetHeader("Status", null));
    }

    public InternetHeaders(InputStream inputStream) throws MessagingException {
        load(inputStream);
    }

    public void load(InputStream inputStream) throws MessagingException {
        String strA;
        e eVar = new e(inputStream);
        StringBuffer stringBuffer = new StringBuffer();
        String str = null;
        do {
            try {
                strA = eVar.a();
                if (strA != null && (strA.startsWith(" ") || strA.startsWith("\t"))) {
                    if (str != null) {
                        stringBuffer.append(str);
                        str = null;
                    }
                    stringBuffer.append("\r\n");
                    stringBuffer.append(strA);
                } else {
                    if (str != null) {
                        addHeaderLine(str);
                    } else if (stringBuffer.length() > 0) {
                        addHeaderLine(stringBuffer.toString());
                        stringBuffer.setLength(0);
                    }
                    str = strA;
                }
                if (strA == null) {
                    return;
                }
            } catch (IOException e2) {
                throw new MessagingException("Error in input stream", e2);
            }
        } while (strA.length() > 0);
    }

    public String[] getHeader(String str) {
        ArrayList arrayList = new ArrayList();
        for (InternetHeader internetHeader : this.headers) {
            if (str.equalsIgnoreCase(internetHeader.getName()) && internetHeader.line != null) {
                arrayList.add(internetHeader.getValue());
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public String getHeader(String str, String str2) {
        String[] header = getHeader(str);
        if (header == null) {
            return null;
        }
        if (header.length == 1 || str2 == null) {
            return header[0];
        }
        StringBuffer stringBuffer = new StringBuffer(header[0]);
        for (int i = 1; i < header.length; i++) {
            stringBuffer.append(str2);
            stringBuffer.append(header[i]);
        }
        return stringBuffer.toString();
    }

    public void setHeader(String str, String str2) {
        int iIndexOf;
        int i = 0;
        boolean z = false;
        while (i < this.headers.size()) {
            InternetHeader internetHeader = (InternetHeader) this.headers.get(i);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                if (!z) {
                    if (internetHeader.line != null && (iIndexOf = internetHeader.line.indexOf(58)) >= 0) {
                        internetHeader.line = new StringBuffer().append(internetHeader.line.substring(0, iIndexOf + 1)).append(" ").append(str2).toString();
                    } else {
                        internetHeader.line = new StringBuffer().append(str).append(": ").append(str2).toString();
                    }
                    z = true;
                } else {
                    this.headers.remove(i);
                    i--;
                }
            }
            z = z;
            i++;
        }
        if (!z) {
            addHeader(str, str2);
        }
    }

    public void addHeader(String str, String str2) {
        int size = this.headers.size();
        boolean z = str.equalsIgnoreCase("Received") || str.equalsIgnoreCase("Return-Path");
        int i = z ? 0 : size;
        int i2 = i;
        for (int size2 = this.headers.size() - 1; size2 >= 0; size2--) {
            InternetHeader internetHeader = (InternetHeader) this.headers.get(size2);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                if (!z) {
                    this.headers.add(size2 + 1, new InternetHeader(str, str2));
                    return;
                }
                i2 = size2;
            }
            if (internetHeader.getName().equals(":")) {
                i2 = size2;
            }
        }
        this.headers.add(i2, new InternetHeader(str, str2));
    }

    public void removeHeader(String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.headers.size()) {
                InternetHeader internetHeader = (InternetHeader) this.headers.get(i2);
                if (str.equalsIgnoreCase(internetHeader.getName())) {
                    internetHeader.line = null;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public Enumeration getAllHeaders() {
        return new matchEnum(this.headers, null, false, false);
    }

    public Enumeration getMatchingHeaders(String[] strArr) {
        return new matchEnum(this.headers, strArr, true, false);
    }

    public Enumeration getNonMatchingHeaders(String[] strArr) {
        return new matchEnum(this.headers, strArr, false, false);
    }

    public void addHeaderLine(String str) {
        try {
            char cCharAt = str.charAt(0);
            if (cCharAt == ' ' || cCharAt == '\t') {
                InternetHeader internetHeader = (InternetHeader) this.headers.get(this.headers.size() - 1);
                internetHeader.line = new StringBuffer().append(internetHeader.line).append("\r\n").append(str).toString();
            } else {
                this.headers.add(new InternetHeader(str));
            }
        } catch (StringIndexOutOfBoundsException e2) {
        } catch (NoSuchElementException e3) {
        }
    }

    public Enumeration getAllHeaderLines() {
        return getNonMatchingHeaderLines(null);
    }

    public Enumeration getMatchingHeaderLines(String[] strArr) {
        return new matchEnum(this.headers, strArr, true, true);
    }

    public Enumeration getNonMatchingHeaderLines(String[] strArr) {
        return new matchEnum(this.headers, strArr, false, true);
    }
}
