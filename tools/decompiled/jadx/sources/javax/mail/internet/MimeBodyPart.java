package javax.mail.internet;

import com.l.b.a.a;
import com.l.b.a.f;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Vector;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Part;
import javax.mail.internet.HeaderTokenizer;
import org.apache.http.entity.mime.MIME;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public class MimeBodyPart extends BodyPart implements MimePart {
    static boolean cacheMultipart;
    private static boolean decodeFileName;
    private static boolean encodeFileName;
    private static boolean setContentTypeFileName;
    private static boolean setDefaultTextCharset;
    protected byte[] content;
    protected InputStream contentStream;
    protected DataHandler dh;
    protected InternetHeaders headers;

    static {
        setDefaultTextCharset = true;
        setContentTypeFileName = true;
        encodeFileName = false;
        decodeFileName = false;
        cacheMultipart = true;
        try {
            String property = System.getProperty("mail.mime.setdefaulttextcharset");
            setDefaultTextCharset = property == null || !property.equalsIgnoreCase("false");
            String property2 = System.getProperty("mail.mime.setcontenttypefilename");
            setContentTypeFileName = property2 == null || !property2.equalsIgnoreCase("false");
            String property3 = System.getProperty("mail.mime.encodefilename");
            encodeFileName = (property3 == null || property3.equalsIgnoreCase("false")) ? false : true;
            String property4 = System.getProperty("mail.mime.decodefilename");
            decodeFileName = (property4 == null || property4.equalsIgnoreCase("false")) ? false : true;
            String property5 = System.getProperty("mail.mime.cachemultipart");
            cacheMultipart = property5 == null || !property5.equalsIgnoreCase("false");
        } catch (SecurityException e2) {
        }
    }

    public MimeBodyPart() {
        this.headers = new InternetHeaders();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MimeBodyPart(InputStream inputStream) throws MessagingException {
        InputStream bufferedInputStream = ((inputStream instanceof ByteArrayInputStream) || (inputStream instanceof BufferedInputStream) || (inputStream instanceof SharedInputStream)) ? inputStream : new BufferedInputStream(inputStream);
        this.headers = new InternetHeaders(bufferedInputStream);
        if (bufferedInputStream instanceof SharedInputStream) {
            SharedInputStream sharedInputStream = (SharedInputStream) bufferedInputStream;
            this.contentStream = sharedInputStream.newStream(sharedInputStream.getPosition(), -1L);
        } else {
            try {
                this.content = a.a(bufferedInputStream);
            } catch (IOException e2) {
                throw new MessagingException("Error reading input stream", e2);
            }
        }
    }

    public MimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        this.headers = internetHeaders;
        this.content = bArr;
    }

    @Override // javax.mail.Part
    public int getSize() throws MessagingException {
        if (this.content != null) {
            return this.content.length;
        }
        if (this.contentStream != null) {
            try {
                int iAvailable = this.contentStream.available();
                if (iAvailable > 0) {
                    return iAvailable;
                }
            } catch (IOException e2) {
            }
        }
        return -1;
    }

    @Override // javax.mail.Part
    public int getLineCount() throws MessagingException {
        return -1;
    }

    @Override // javax.mail.Part
    public String getContentType() throws MessagingException {
        String header = getHeader("Content-Type", null);
        if (header == null) {
            return MimeTypes.TEXT_PLAIN;
        }
        return header;
    }

    @Override // javax.mail.Part
    public boolean isMimeType(String str) throws MessagingException {
        return isMimeType(this, str);
    }

    @Override // javax.mail.Part
    public String getDisposition() throws MessagingException {
        return getDisposition(this);
    }

    @Override // javax.mail.Part
    public void setDisposition(String str) throws MessagingException {
        setDisposition(this, str);
    }

    @Override // javax.mail.internet.MimePart
    public String getEncoding() throws MessagingException {
        return getEncoding(this);
    }

    @Override // javax.mail.internet.MimePart
    public String getContentID() throws MessagingException {
        return getHeader("Content-Id", null);
    }

    public void setContentID(String str) throws MessagingException {
        if (str == null) {
            removeHeader("Content-ID");
        } else {
            setHeader("Content-ID", str);
        }
    }

    @Override // javax.mail.internet.MimePart
    public String getContentMD5() throws MessagingException {
        return getHeader("Content-MD5", null);
    }

    @Override // javax.mail.internet.MimePart
    public void setContentMD5(String str) throws MessagingException {
        setHeader("Content-MD5", str);
    }

    @Override // javax.mail.internet.MimePart
    public String[] getContentLanguage() throws MessagingException {
        return getContentLanguage(this);
    }

    @Override // javax.mail.internet.MimePart
    public void setContentLanguage(String[] strArr) throws MessagingException {
        setContentLanguage(this, strArr);
    }

    @Override // javax.mail.Part
    public String getDescription() throws MessagingException {
        return getDescription(this);
    }

    @Override // javax.mail.Part
    public void setDescription(String str) throws MessagingException {
        setDescription(str, null);
    }

    public void setDescription(String str, String str2) throws MessagingException {
        setDescription(this, str, str2);
    }

    @Override // javax.mail.Part
    public String getFileName() throws MessagingException {
        return getFileName(this);
    }

    @Override // javax.mail.Part
    public void setFileName(String str) throws MessagingException {
        setFileName(this, str);
    }

    @Override // javax.mail.Part
    public InputStream getInputStream() throws MessagingException, IOException {
        return getDataHandler().getInputStream();
    }

    protected InputStream getContentStream() throws MessagingException {
        if (this.contentStream != null) {
            return ((SharedInputStream) this.contentStream).newStream(0L, -1L);
        }
        if (this.content != null) {
            return new ByteArrayInputStream(this.content);
        }
        throw new MessagingException("No content");
    }

    public InputStream getRawInputStream() throws MessagingException {
        return getContentStream();
    }

    @Override // javax.mail.Part
    public DataHandler getDataHandler() throws MessagingException {
        if (this.dh == null) {
            this.dh = new DataHandler(new MimePartDataSource(this));
        }
        return this.dh;
    }

    @Override // javax.mail.Part
    public Object getContent() throws MessagingException, IOException {
        Object content = getDataHandler().getContent();
        if (cacheMultipart && (((content instanceof Multipart) || (content instanceof Message)) && !(this.dh instanceof CachedDataHandler) && (this.content != null || this.contentStream != null))) {
            this.dh = createCachedDataHandler(content, getContentType());
        }
        return content;
    }

    @Override // javax.mail.Part
    public void setDataHandler(DataHandler dataHandler) throws MessagingException {
        this.dh = dataHandler;
        invalidateContentHeaders(this);
    }

    @Override // javax.mail.Part
    public void setContent(Object obj, String str) throws MessagingException {
        if (obj instanceof Multipart) {
            setContent((Multipart) obj);
        } else {
            setDataHandler(new DataHandler(obj, str));
        }
    }

    @Override // javax.mail.Part, javax.mail.internet.MimePart
    public void setText(String str) throws MessagingException {
        setText(str, null);
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2) throws MessagingException {
        setText(this, str, str2, "plain");
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2, String str3) throws MessagingException {
        setText(this, str, str2, str3);
    }

    @Override // javax.mail.Part
    public void setContent(Multipart multipart) throws MessagingException {
        setDataHandler(new DataHandler(multipart, multipart.getContentType()));
        multipart.setParent(this);
    }

    public void attachFile(File file) throws MessagingException, IOException {
        FileDataSource fileDataSource = new FileDataSource(file);
        setDataHandler(new DataHandler(fileDataSource));
        setFileName(fileDataSource.getName());
    }

    public void attachFile(String str) throws MessagingException, IOException {
        attachFile(new File(str));
    }

    public void saveFile(File file) throws MessagingException, IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        InputStream inputStream = getInputStream();
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i = inputStream.read(bArr);
                if (i <= 0) {
                    break;
                } else {
                    bufferedOutputStream.write(bArr, 0, i);
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                }
            }
            if (bufferedOutputStream != null) {
                try {
                    bufferedOutputStream.close();
                } catch (IOException e3) {
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                }
            }
            if (bufferedOutputStream != null) {
                try {
                    bufferedOutputStream.close();
                    throw th;
                } catch (IOException e5) {
                    throw th;
                }
            }
            throw th;
        }
    }

    public void saveFile(String str) throws MessagingException, IOException {
        saveFile(new File(str));
    }

    @Override // javax.mail.Part
    public void writeTo(OutputStream outputStream) throws MessagingException, IOException {
        writeTo(this, outputStream, null);
    }

    @Override // javax.mail.Part
    public String[] getHeader(String str) throws MessagingException {
        return this.headers.getHeader(str);
    }

    @Override // javax.mail.internet.MimePart
    public String getHeader(String str, String str2) throws MessagingException {
        return this.headers.getHeader(str, str2);
    }

    @Override // javax.mail.Part
    public void setHeader(String str, String str2) throws MessagingException {
        this.headers.setHeader(str, str2);
    }

    @Override // javax.mail.Part
    public void addHeader(String str, String str2) throws MessagingException {
        this.headers.addHeader(str, str2);
    }

    @Override // javax.mail.Part
    public void removeHeader(String str) throws MessagingException {
        this.headers.removeHeader(str);
    }

    @Override // javax.mail.Part
    public Enumeration getAllHeaders() throws MessagingException {
        return this.headers.getAllHeaders();
    }

    @Override // javax.mail.Part
    public Enumeration getMatchingHeaders(String[] strArr) throws MessagingException {
        return this.headers.getMatchingHeaders(strArr);
    }

    @Override // javax.mail.Part
    public Enumeration getNonMatchingHeaders(String[] strArr) throws MessagingException {
        return this.headers.getNonMatchingHeaders(strArr);
    }

    @Override // javax.mail.internet.MimePart
    public void addHeaderLine(String str) throws MessagingException {
        this.headers.addHeaderLine(str);
    }

    @Override // javax.mail.internet.MimePart
    public Enumeration getAllHeaderLines() throws MessagingException {
        return this.headers.getAllHeaderLines();
    }

    @Override // javax.mail.internet.MimePart
    public Enumeration getMatchingHeaderLines(String[] strArr) throws MessagingException {
        return this.headers.getMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.internet.MimePart
    public Enumeration getNonMatchingHeaderLines(String[] strArr) throws MessagingException {
        return this.headers.getNonMatchingHeaderLines(strArr);
    }

    protected void updateHeaders() throws MessagingException {
        updateHeaders(this);
    }

    static boolean isMimeType(MimePart mimePart, String str) throws MessagingException {
        try {
            return new ContentType(mimePart.getContentType()).match(str);
        } catch (ParseException e2) {
            return mimePart.getContentType().equalsIgnoreCase(str);
        }
    }

    static void setText(MimePart mimePart, String str, String str2, String str3) throws MessagingException {
        if (str2 == null) {
            if (MimeUtility.checkAscii(str) != 1) {
                str2 = MimeUtility.getDefaultMIMECharset();
            } else {
                str2 = "us-ascii";
            }
        }
        mimePart.setContent(str, new StringBuffer().append("text/").append(str3).append("; charset=").append(MimeUtility.quote(str2, HeaderTokenizer.MIME)).toString());
    }

    static String getDisposition(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header == null) {
            return null;
        }
        return new ContentDisposition(header).getDisposition();
    }

    static void setDisposition(MimePart mimePart, String str) throws MessagingException {
        if (str == null) {
            mimePart.removeHeader("Content-Disposition");
            return;
        }
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header != null) {
            ContentDisposition contentDisposition = new ContentDisposition(header);
            contentDisposition.setDisposition(str);
            str = contentDisposition.toString();
        }
        mimePart.setHeader("Content-Disposition", str);
    }

    static String getDescription(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Description", null);
        if (header == null) {
            return null;
        }
        try {
            return MimeUtility.decodeText(MimeUtility.unfold(header));
        } catch (UnsupportedEncodingException e2) {
            return header;
        }
    }

    static void setDescription(MimePart mimePart, String str, String str2) throws MessagingException {
        if (str == null) {
            mimePart.removeHeader("Content-Description");
            return;
        }
        try {
            mimePart.setHeader("Content-Description", MimeUtility.fold(21, MimeUtility.encodeText(str, str2, null)));
        } catch (UnsupportedEncodingException e2) {
            throw new MessagingException("Encoding error", e2);
        }
    }

    static String getFileName(MimePart mimePart) throws MessagingException {
        String header;
        String header2 = mimePart.getHeader("Content-Disposition", null);
        String parameter = header2 != null ? new ContentDisposition(header2).getParameter("filename") : null;
        if (parameter == null && (header = mimePart.getHeader("Content-Type", null)) != null) {
            try {
                parameter = new ContentType(header).getParameter("name");
            } catch (ParseException e2) {
            }
        }
        if (decodeFileName && parameter != null) {
            try {
                return MimeUtility.decodeText(parameter);
            } catch (UnsupportedEncodingException e3) {
                throw new MessagingException("Can't decode filename", e3);
            }
        }
        return parameter;
    }

    static void setFileName(MimePart mimePart, String str) throws MessagingException {
        String header;
        if (encodeFileName && str != null) {
            try {
                str = MimeUtility.encodeText(str);
            } catch (UnsupportedEncodingException e2) {
                throw new MessagingException("Can't encode filename", e2);
            }
        }
        String header2 = mimePart.getHeader("Content-Disposition", null);
        if (header2 == null) {
            header2 = Part.ATTACHMENT;
        }
        ContentDisposition contentDisposition = new ContentDisposition(header2);
        contentDisposition.setParameter("filename", str);
        mimePart.setHeader("Content-Disposition", contentDisposition.toString());
        if (setContentTypeFileName && (header = mimePart.getHeader("Content-Type", null)) != null) {
            try {
                ContentType contentType = new ContentType(header);
                contentType.setParameter("name", str);
                mimePart.setHeader("Content-Type", contentType.toString());
            } catch (ParseException e3) {
            }
        }
    }

    static String[] getContentLanguage(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Language", null);
        if (header == null) {
            return null;
        }
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(header, HeaderTokenizer.MIME);
        Vector vector = new Vector();
        while (true) {
            HeaderTokenizer.Token next = headerTokenizer.next();
            int type = next.getType();
            if (type == -4) {
                break;
            }
            if (type == -1) {
                vector.addElement(next.getValue());
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    static void setContentLanguage(MimePart mimePart, String[] strArr) throws MessagingException {
        StringBuffer stringBuffer = new StringBuffer(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            stringBuffer.append(',').append(strArr[i]);
        }
        mimePart.setHeader("Content-Language", stringBuffer.toString());
    }

    static String getEncoding(MimePart mimePart) throws MessagingException {
        HeaderTokenizer.Token next;
        int type;
        String header = mimePart.getHeader(MIME.CONTENT_TRANSFER_ENC, null);
        if (header == null) {
            return null;
        }
        String strTrim = header.trim();
        if (!strTrim.equalsIgnoreCase("7bit") && !strTrim.equalsIgnoreCase("8bit") && !strTrim.equalsIgnoreCase("quoted-printable") && !strTrim.equalsIgnoreCase("binary") && !strTrim.equalsIgnoreCase("base64")) {
            HeaderTokenizer headerTokenizer = new HeaderTokenizer(strTrim, HeaderTokenizer.MIME);
            do {
                next = headerTokenizer.next();
                type = next.getType();
                if (type == -4) {
                    return strTrim;
                }
            } while (type != -1);
            return next.getValue();
        }
        return strTrim;
    }

    static void setEncoding(MimePart mimePart, String str) throws MessagingException {
        mimePart.setHeader(MIME.CONTENT_TRANSFER_ENC, str);
    }

    static DataHandler createCachedDataHandler(Object obj, String str) {
        return new CachedDataHandler(obj, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void updateHeaders(javax.mail.internet.MimePart r7) throws javax.mail.MessagingException {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeBodyPart.updateHeaders(javax.mail.internet.MimePart):void");
    }

    static void invalidateContentHeaders(MimePart mimePart) throws MessagingException {
        mimePart.removeHeader("Content-Type");
        mimePart.removeHeader(MIME.CONTENT_TRANSFER_ENC);
    }

    static void writeTo(MimePart mimePart, OutputStream outputStream, String[] strArr) throws MessagingException, IOException {
        f fVar;
        if (outputStream instanceof f) {
            fVar = (f) outputStream;
        } else {
            fVar = new f(outputStream);
        }
        Enumeration nonMatchingHeaderLines = mimePart.getNonMatchingHeaderLines(strArr);
        while (nonMatchingHeaderLines.hasMoreElements()) {
            fVar.a((String) nonMatchingHeaderLines.nextElement());
        }
        fVar.a();
        OutputStream outputStreamEncode = MimeUtility.encode(outputStream, mimePart.getEncoding());
        mimePart.getDataHandler().writeTo(outputStreamEncode);
        outputStreamEncode.flush();
    }
}
