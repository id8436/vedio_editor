package javax.mail.internet;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.UnknownServiceException;
import javax.activation.DataSource;
import javax.mail.MessageAware;
import javax.mail.MessageContext;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes3.dex */
public class MimePartDataSource implements DataSource, MessageAware {
    private static boolean ignoreMultipartEncoding;
    private MessageContext context;
    protected MimePart part;

    static {
        boolean z = true;
        ignoreMultipartEncoding = true;
        try {
            String property = System.getProperty("mail.mime.ignoremultipartencoding");
            if (property != null && property.equalsIgnoreCase("false")) {
                z = false;
            }
            ignoreMultipartEncoding = z;
        } catch (SecurityException e2) {
        }
    }

    public MimePartDataSource(MimePart mimePart) {
        this.part = mimePart;
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        InputStream contentStream;
        try {
            if (this.part instanceof MimeBodyPart) {
                contentStream = ((MimeBodyPart) this.part).getContentStream();
            } else if (this.part instanceof MimeMessage) {
                contentStream = ((MimeMessage) this.part).getContentStream();
            } else {
                throw new MessagingException("Unknown part");
            }
            String strRestrictEncoding = restrictEncoding(this.part.getEncoding(), this.part);
            if (strRestrictEncoding != null) {
                return MimeUtility.decode(contentStream, strRestrictEncoding);
            }
            return contentStream;
        } catch (MessagingException e2) {
            throw new IOException(e2.getMessage());
        }
    }

    private static String restrictEncoding(String str, MimePart mimePart) throws MessagingException {
        String contentType;
        if (ignoreMultipartEncoding && str != null && !str.equalsIgnoreCase("7bit") && !str.equalsIgnoreCase("8bit") && !str.equalsIgnoreCase("binary") && (contentType = mimePart.getContentType()) != null) {
            try {
                ContentType contentType2 = new ContentType(contentType);
                if (!contentType2.match("multipart/*")) {
                    if (!contentType2.match("message/*")) {
                        return str;
                    }
                }
                return null;
            } catch (ParseException e2) {
                return str;
            }
        }
        return str;
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() throws IOException {
        throw new UnknownServiceException();
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        try {
            return this.part.getContentType();
        } catch (MessagingException e2) {
            return null;
        }
    }

    @Override // javax.activation.DataSource
    public String getName() {
        try {
            if (this.part instanceof MimeBodyPart) {
                return ((MimeBodyPart) this.part).getFileName();
            }
        } catch (MessagingException e2) {
        }
        return "";
    }

    @Override // javax.mail.MessageAware
    public synchronized MessageContext getMessageContext() {
        if (this.context == null) {
            this.context = new MessageContext(this.part);
        }
        return this.context;
    }
}
