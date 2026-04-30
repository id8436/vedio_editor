package javax.mail.internet;

import com.l.b.a.a;
import com.l.b.a.f;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;
import javax.mail.BodyPart;
import javax.mail.MessageAware;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.MultipartDataSource;

/* JADX INFO: loaded from: classes3.dex */
public class MimeMultipart extends Multipart {
    private static boolean bmparse;
    private static boolean ignoreMissingBoundaryParameter;
    private static boolean ignoreMissingEndBoundary;
    private boolean complete;
    protected DataSource ds;
    protected boolean parsed;
    private String preamble;

    static {
        ignoreMissingEndBoundary = true;
        ignoreMissingBoundaryParameter = true;
        bmparse = true;
        try {
            String property = System.getProperty("mail.mime.multipart.ignoremissingendboundary");
            ignoreMissingEndBoundary = property == null || !property.equalsIgnoreCase("false");
            String property2 = System.getProperty("mail.mime.multipart.ignoremissingboundaryparameter");
            ignoreMissingBoundaryParameter = property2 == null || !property2.equalsIgnoreCase("false");
            String property3 = System.getProperty("mail.mime.multipart.bmparse");
            bmparse = property3 == null || !property3.equalsIgnoreCase("false");
        } catch (SecurityException e2) {
        }
    }

    public MimeMultipart() {
        this("mixed");
    }

    public MimeMultipart(String str) {
        this.ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        String uniqueBoundaryValue = UniqueValue.getUniqueBoundaryValue();
        ContentType contentType = new ContentType("multipart", str, null);
        contentType.setParameter("boundary", uniqueBoundaryValue);
        this.contentType = contentType.toString();
    }

    public MimeMultipart(DataSource dataSource) throws MessagingException {
        this.ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        if (dataSource instanceof MessageAware) {
            setParent(((MessageAware) dataSource).getMessageContext().getPart());
        }
        if (dataSource instanceof MultipartDataSource) {
            setMultipartDataSource((MultipartDataSource) dataSource);
            return;
        }
        this.parsed = false;
        this.ds = dataSource;
        this.contentType = dataSource.getContentType();
    }

    public synchronized void setSubType(String str) throws MessagingException {
        ContentType contentType = new ContentType(this.contentType);
        contentType.setSubType(str);
        this.contentType = contentType.toString();
    }

    @Override // javax.mail.Multipart
    public synchronized int getCount() throws MessagingException {
        parse();
        return super.getCount();
    }

    @Override // javax.mail.Multipart
    public synchronized BodyPart getBodyPart(int i) throws MessagingException {
        parse();
        return super.getBodyPart(i);
    }

    public synchronized BodyPart getBodyPart(String str) throws MessagingException {
        MimeBodyPart mimeBodyPart;
        parse();
        int count = getCount();
        int i = 0;
        while (true) {
            if (i < count) {
                mimeBodyPart = (MimeBodyPart) getBodyPart(i);
                String contentID = mimeBodyPart.getContentID();
                if (contentID != null && contentID.equals(str)) {
                    break;
                }
                i++;
            } else {
                mimeBodyPart = null;
                break;
            }
        }
        return mimeBodyPart;
    }

    public boolean isComplete() throws MessagingException {
        parse();
        return this.complete;
    }

    public String getPreamble() throws MessagingException {
        parse();
        return this.preamble;
    }

    public void setPreamble(String str) throws MessagingException {
        this.preamble = str;
    }

    protected void updateHeaders() throws MessagingException {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.parts.size()) {
                ((MimeBodyPart) this.parts.elementAt(i2)).updateHeaders();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // javax.mail.Multipart
    public void writeTo(OutputStream outputStream) throws MessagingException, IOException {
        parse();
        String string = new StringBuffer().append("--").append(new ContentType(this.contentType).getParameter("boundary")).toString();
        f fVar = new f(outputStream);
        if (this.preamble != null) {
            byte[] bArrA = a.a(this.preamble);
            fVar.write(bArrA);
            if (bArrA.length > 0 && bArrA[bArrA.length - 1] != 13 && bArrA[bArrA.length - 1] != 10) {
                fVar.a();
            }
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.parts.size()) {
                fVar.a(string);
                ((MimeBodyPart) this.parts.elementAt(i2)).writeTo(outputStream);
                fVar.a();
                i = i2 + 1;
            } else {
                fVar.a(new StringBuffer().append(string).append("--").toString());
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x00da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x006a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected synchronized void parse() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instruction units count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeMultipart.parse():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:213:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0060 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void parsebm() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instruction units count: 861
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeMultipart.parsebm():void");
    }

    protected InternetHeaders createInternetHeaders(InputStream inputStream) throws MessagingException {
        return new InternetHeaders(inputStream);
    }

    protected MimeBodyPart createMimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        return new MimeBodyPart(internetHeaders, bArr);
    }

    protected MimeBodyPart createMimeBodyPart(InputStream inputStream) throws MessagingException {
        return new MimeBodyPart(inputStream);
    }
}
