package javax.mail.internet;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.data.analytics.Engagement;
import com.l.b.a.a;
import com.l.b.a.f;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Enumeration;
import java.util.Vector;
import javax.activation.DataHandler;
import javax.mail.Address;
import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.util.SharedByteArrayInputStream;
import org.mortbay.jetty.HttpHeaders;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public class MimeMessage extends Message implements MimePart {
    protected byte[] content;
    protected InputStream contentStream;
    protected DataHandler dh;
    protected Flags flags;
    protected InternetHeaders headers;
    protected boolean modified;
    protected boolean saved;
    private boolean strict;
    private static MailDateFormat mailDateFormat = new MailDateFormat();
    private static final Flags answeredFlag = new Flags(Flags.Flag.ANSWERED);

    public MimeMessage(Session session) {
        super(session);
        this.modified = false;
        this.saved = false;
        this.strict = true;
        this.modified = true;
        this.headers = new InternetHeaders();
        this.flags = new Flags();
        initStrict();
    }

    public MimeMessage(Session session, InputStream inputStream) throws MessagingException {
        super(session);
        this.modified = false;
        this.saved = false;
        this.strict = true;
        this.flags = new Flags();
        initStrict();
        parse(inputStream);
        this.saved = true;
    }

    public MimeMessage(MimeMessage mimeMessage) throws MessagingException {
        ByteArrayOutputStream byteArrayOutputStream;
        super(mimeMessage.session);
        this.modified = false;
        this.saved = false;
        this.strict = true;
        this.flags = mimeMessage.getFlags();
        int size = mimeMessage.getSize();
        if (size > 0) {
            byteArrayOutputStream = new ByteArrayOutputStream(size);
        } else {
            byteArrayOutputStream = new ByteArrayOutputStream();
        }
        try {
            this.strict = mimeMessage.strict;
            mimeMessage.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.close();
            SharedByteArrayInputStream sharedByteArrayInputStream = new SharedByteArrayInputStream(byteArrayOutputStream.toByteArray());
            parse(sharedByteArrayInputStream);
            sharedByteArrayInputStream.close();
            this.saved = true;
        } catch (IOException e2) {
            throw new MessagingException("IOException while copying message", e2);
        }
    }

    protected MimeMessage(Folder folder, int i) {
        super(folder, i);
        this.modified = false;
        this.saved = false;
        this.strict = true;
        this.flags = new Flags();
        this.saved = true;
        initStrict();
    }

    protected MimeMessage(Folder folder, InputStream inputStream, int i) throws MessagingException {
        this(folder, i);
        initStrict();
        parse(inputStream);
    }

    protected MimeMessage(Folder folder, InternetHeaders internetHeaders, byte[] bArr, int i) throws MessagingException {
        this(folder, i);
        this.headers = internetHeaders;
        this.content = bArr;
        initStrict();
    }

    private void initStrict() {
        if (this.session != null) {
            String property = this.session.getProperty("mail.mime.address.strict");
            this.strict = property == null || !property.equalsIgnoreCase("false");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void parse(InputStream inputStream) throws MessagingException {
        InputStream bufferedInputStream = ((inputStream instanceof ByteArrayInputStream) || (inputStream instanceof BufferedInputStream) || (inputStream instanceof SharedInputStream)) ? inputStream : new BufferedInputStream(inputStream);
        this.headers = createInternetHeaders(bufferedInputStream);
        if (bufferedInputStream instanceof SharedInputStream) {
            SharedInputStream sharedInputStream = (SharedInputStream) bufferedInputStream;
            this.contentStream = sharedInputStream.newStream(sharedInputStream.getPosition(), -1L);
        } else {
            try {
                this.content = a.a(bufferedInputStream);
            } catch (IOException e2) {
                throw new MessagingException("IOException", e2);
            }
        }
        this.modified = false;
    }

    @Override // javax.mail.Message
    public Address[] getFrom() throws MessagingException {
        Address[] addressHeader = getAddressHeader("From");
        if (addressHeader == null) {
            return getAddressHeader("Sender");
        }
        return addressHeader;
    }

    @Override // javax.mail.Message
    public void setFrom(Address address) throws MessagingException {
        if (address == null) {
            removeHeader("From");
        } else {
            setHeader("From", address.toString());
        }
    }

    @Override // javax.mail.Message
    public void setFrom() throws MessagingException {
        InternetAddress localAddress = InternetAddress.getLocalAddress(this.session);
        if (localAddress != null) {
            setFrom(localAddress);
            return;
        }
        throw new MessagingException("No From address");
    }

    @Override // javax.mail.Message
    public void addFrom(Address[] addressArr) throws MessagingException {
        addAddressHeader("From", addressArr);
    }

    public Address getSender() throws MessagingException {
        Address[] addressHeader = getAddressHeader("Sender");
        if (addressHeader == null || addressHeader.length == 0) {
            return null;
        }
        return addressHeader[0];
    }

    public void setSender(Address address) throws MessagingException {
        if (address == null) {
            removeHeader("Sender");
        } else {
            setHeader("Sender", address.toString());
        }
    }

    public class RecipientType extends Message.RecipientType {
        public static final RecipientType NEWSGROUPS = new RecipientType("Newsgroups");
        private static final long serialVersionUID = -5468290701714395543L;

        protected RecipientType(String str) {
            super(str);
        }

        @Override // javax.mail.Message.RecipientType
        protected Object readResolve() throws ObjectStreamException {
            return this.type.equals("Newsgroups") ? NEWSGROUPS : super.readResolve();
        }
    }

    @Override // javax.mail.Message
    public Address[] getRecipients(Message.RecipientType recipientType) throws MessagingException {
        if (recipientType == RecipientType.NEWSGROUPS) {
            String header = getHeader("Newsgroups", BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            if (header == null) {
                return null;
            }
            return NewsAddress.parse(header);
        }
        return getAddressHeader(getHeaderName(recipientType));
    }

    @Override // javax.mail.Message
    public Address[] getAllRecipients() throws MessagingException {
        int length;
        Address[] allRecipients = super.getAllRecipients();
        Address[] recipients = getRecipients(RecipientType.NEWSGROUPS);
        if (recipients == null) {
            return allRecipients;
        }
        Address[] addressArr = new Address[(recipients != null ? recipients.length : 0) + (allRecipients != null ? allRecipients.length : 0)];
        if (allRecipients != null) {
            System.arraycopy(allRecipients, 0, addressArr, 0, allRecipients.length);
            length = allRecipients.length + 0;
        } else {
            length = 0;
        }
        if (recipients != null) {
            System.arraycopy(recipients, 0, addressArr, length, recipients.length);
            int length2 = recipients.length + length;
            return addressArr;
        }
        return addressArr;
    }

    @Override // javax.mail.Message
    public void setRecipients(Message.RecipientType recipientType, Address[] addressArr) throws MessagingException {
        if (recipientType == RecipientType.NEWSGROUPS) {
            if (addressArr == null || addressArr.length == 0) {
                removeHeader("Newsgroups");
                return;
            } else {
                setHeader("Newsgroups", NewsAddress.toString(addressArr));
                return;
            }
        }
        setAddressHeader(getHeaderName(recipientType), addressArr);
    }

    public void setRecipients(Message.RecipientType recipientType, String str) throws MessagingException {
        if (recipientType == RecipientType.NEWSGROUPS) {
            if (str == null || str.length() == 0) {
                removeHeader("Newsgroups");
                return;
            } else {
                setHeader("Newsgroups", str);
                return;
            }
        }
        setAddressHeader(getHeaderName(recipientType), InternetAddress.parse(str));
    }

    @Override // javax.mail.Message
    public void addRecipients(Message.RecipientType recipientType, Address[] addressArr) throws MessagingException {
        if (recipientType == RecipientType.NEWSGROUPS) {
            String string = NewsAddress.toString(addressArr);
            if (string != null) {
                addHeader("Newsgroups", string);
                return;
            }
            return;
        }
        addAddressHeader(getHeaderName(recipientType), addressArr);
    }

    public void addRecipients(Message.RecipientType recipientType, String str) throws MessagingException {
        if (recipientType == RecipientType.NEWSGROUPS) {
            if (str != null && str.length() != 0) {
                addHeader("Newsgroups", str);
                return;
            }
            return;
        }
        addAddressHeader(getHeaderName(recipientType), InternetAddress.parse(str));
    }

    @Override // javax.mail.Message
    public Address[] getReplyTo() throws MessagingException {
        Address[] addressHeader = getAddressHeader("Reply-To");
        if (addressHeader == null) {
            return getFrom();
        }
        return addressHeader;
    }

    @Override // javax.mail.Message
    public void setReplyTo(Address[] addressArr) throws MessagingException {
        setAddressHeader("Reply-To", addressArr);
    }

    private Address[] getAddressHeader(String str) throws MessagingException {
        String header = getHeader(str, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        if (header == null) {
            return null;
        }
        return InternetAddress.parseHeader(header, this.strict);
    }

    private void setAddressHeader(String str, Address[] addressArr) throws MessagingException {
        String string = InternetAddress.toString(addressArr);
        if (string == null) {
            removeHeader(str);
        } else {
            setHeader(str, string);
        }
    }

    private void addAddressHeader(String str, Address[] addressArr) throws MessagingException {
        String string = InternetAddress.toString(addressArr);
        if (string != null) {
            addHeader(str, string);
        }
    }

    @Override // javax.mail.Message
    public String getSubject() throws MessagingException {
        String header = getHeader("Subject", null);
        if (header == null) {
            return null;
        }
        try {
            return MimeUtility.decodeText(MimeUtility.unfold(header));
        } catch (UnsupportedEncodingException e2) {
            return header;
        }
    }

    @Override // javax.mail.Message
    public void setSubject(String str) throws MessagingException {
        setSubject(str, null);
    }

    public void setSubject(String str, String str2) throws MessagingException {
        if (str == null) {
            removeHeader("Subject");
        }
        try {
            setHeader("Subject", MimeUtility.fold(9, MimeUtility.encodeText(str, str2, null)));
        } catch (UnsupportedEncodingException e2) {
            throw new MessagingException("Encoding error", e2);
        }
    }

    @Override // javax.mail.Message
    public Date getSentDate() throws MessagingException {
        Date date;
        String header = getHeader("Date", null);
        if (header == null) {
            return null;
        }
        try {
            synchronized (mailDateFormat) {
                date = mailDateFormat.parse(header);
            }
            return date;
        } catch (java.text.ParseException e2) {
            return null;
        }
    }

    @Override // javax.mail.Message
    public void setSentDate(Date date) throws MessagingException {
        if (date == null) {
            removeHeader("Date");
            return;
        }
        synchronized (mailDateFormat) {
            setHeader("Date", mailDateFormat.format(date));
        }
    }

    @Override // javax.mail.Message
    public Date getReceivedDate() throws MessagingException {
        return null;
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
        return MimeBodyPart.isMimeType(this, str);
    }

    @Override // javax.mail.Part
    public String getDisposition() throws MessagingException {
        return MimeBodyPart.getDisposition(this);
    }

    @Override // javax.mail.Part
    public void setDisposition(String str) throws MessagingException {
        MimeBodyPart.setDisposition(this, str);
    }

    @Override // javax.mail.internet.MimePart
    public String getEncoding() throws MessagingException {
        return MimeBodyPart.getEncoding(this);
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

    @Override // javax.mail.Part
    public String getDescription() throws MessagingException {
        return MimeBodyPart.getDescription(this);
    }

    @Override // javax.mail.Part
    public void setDescription(String str) throws MessagingException {
        setDescription(str, null);
    }

    public void setDescription(String str, String str2) throws MessagingException {
        MimeBodyPart.setDescription(this, str, str2);
    }

    @Override // javax.mail.internet.MimePart
    public String[] getContentLanguage() throws MessagingException {
        return MimeBodyPart.getContentLanguage(this);
    }

    @Override // javax.mail.internet.MimePart
    public void setContentLanguage(String[] strArr) throws MessagingException {
        MimeBodyPart.setContentLanguage(this, strArr);
    }

    public String getMessageID() throws MessagingException {
        return getHeader("Message-ID", null);
    }

    @Override // javax.mail.Part
    public String getFileName() throws MessagingException {
        return MimeBodyPart.getFileName(this);
    }

    @Override // javax.mail.Part
    public void setFileName(String str) throws MessagingException {
        MimeBodyPart.setFileName(this, str);
    }

    private String getHeaderName(Message.RecipientType recipientType) throws MessagingException {
        if (recipientType == Message.RecipientType.TO) {
            return "To";
        }
        if (recipientType == Message.RecipientType.CC) {
            return "Cc";
        }
        if (recipientType == Message.RecipientType.BCC) {
            return "Bcc";
        }
        if (recipientType == RecipientType.NEWSGROUPS) {
            return "Newsgroups";
        }
        throw new MessagingException("Invalid Recipient Type");
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
            return new SharedByteArrayInputStream(this.content);
        }
        throw new MessagingException("No content");
    }

    public InputStream getRawInputStream() throws MessagingException {
        return getContentStream();
    }

    @Override // javax.mail.Part
    public synchronized DataHandler getDataHandler() throws MessagingException {
        if (this.dh == null) {
            this.dh = new DataHandler(new MimePartDataSource(this));
        }
        return this.dh;
    }

    @Override // javax.mail.Part
    public Object getContent() throws MessagingException, IOException {
        Object content = getDataHandler().getContent();
        if (MimeBodyPart.cacheMultipart && (((content instanceof Multipart) || (content instanceof Message)) && !(this.dh instanceof CachedDataHandler) && (this.content != null || this.contentStream != null))) {
            this.dh = MimeBodyPart.createCachedDataHandler(content, getContentType());
        }
        return content;
    }

    @Override // javax.mail.Part
    public synchronized void setDataHandler(DataHandler dataHandler) throws MessagingException {
        this.dh = dataHandler;
        MimeBodyPart.invalidateContentHeaders(this);
    }

    @Override // javax.mail.Part
    public void setContent(Object obj, String str) throws MessagingException {
        setDataHandler(new DataHandler(obj, str));
    }

    @Override // javax.mail.Part, javax.mail.internet.MimePart
    public void setText(String str) throws MessagingException {
        setText(str, null);
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2) throws MessagingException {
        MimeBodyPart.setText(this, str, str2, "plain");
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2, String str3) throws MessagingException {
        MimeBodyPart.setText(this, str, str2, str3);
    }

    @Override // javax.mail.Part
    public void setContent(Multipart multipart) throws MessagingException {
        setDataHandler(new DataHandler(multipart, multipart.getContentType()));
        multipart.setParent(this);
    }

    @Override // javax.mail.Message
    public Message reply(boolean z) throws MessagingException {
        MimeMessage mimeMessageCreateMimeMessage = createMimeMessage(this.session);
        String header = getHeader("Subject", null);
        if (header != null) {
            if (!header.regionMatches(true, 0, "Re: ", 0, 4)) {
                header = new StringBuffer().append("Re: ").append(header).toString();
            }
            mimeMessageCreateMimeMessage.setHeader("Subject", header);
        }
        Address[] replyTo = getReplyTo();
        mimeMessageCreateMimeMessage.setRecipients(Message.RecipientType.TO, replyTo);
        if (z) {
            Vector vector = new Vector();
            InternetAddress localAddress = InternetAddress.getLocalAddress(this.session);
            if (localAddress != null) {
                vector.addElement(localAddress);
            }
            String property = this.session != null ? this.session.getProperty("mail.alternates") : null;
            if (property != null) {
                eliminateDuplicates(vector, InternetAddress.parse(property, false));
            }
            String property2 = this.session != null ? this.session.getProperty("mail.replyallcc") : null;
            boolean z2 = property2 != null && property2.equalsIgnoreCase("true");
            eliminateDuplicates(vector, replyTo);
            Address[] addressArrEliminateDuplicates = eliminateDuplicates(vector, getRecipients(Message.RecipientType.TO));
            if (addressArrEliminateDuplicates != null && addressArrEliminateDuplicates.length > 0) {
                if (z2) {
                    mimeMessageCreateMimeMessage.addRecipients(Message.RecipientType.CC, addressArrEliminateDuplicates);
                } else {
                    mimeMessageCreateMimeMessage.addRecipients(Message.RecipientType.TO, addressArrEliminateDuplicates);
                }
            }
            Address[] addressArrEliminateDuplicates2 = eliminateDuplicates(vector, getRecipients(Message.RecipientType.CC));
            if (addressArrEliminateDuplicates2 != null && addressArrEliminateDuplicates2.length > 0) {
                mimeMessageCreateMimeMessage.addRecipients(Message.RecipientType.CC, addressArrEliminateDuplicates2);
            }
            Address[] recipients = getRecipients(RecipientType.NEWSGROUPS);
            if (recipients != null && recipients.length > 0) {
                mimeMessageCreateMimeMessage.setRecipients(RecipientType.NEWSGROUPS, recipients);
            }
        }
        String header2 = getHeader("Message-Id", null);
        if (header2 != null) {
            mimeMessageCreateMimeMessage.setHeader("In-Reply-To", header2);
        }
        try {
            setFlags(answeredFlag, true);
        } catch (MessagingException e2) {
        }
        return mimeMessageCreateMimeMessage;
    }

    private Address[] eliminateDuplicates(Vector vector, Address[] addressArr) {
        Address[] addressArr2;
        boolean z;
        int i = 0;
        if (addressArr == null) {
            return null;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < addressArr.length; i3++) {
            int i4 = 0;
            while (true) {
                if (i4 >= vector.size()) {
                    z = false;
                    break;
                }
                if (!((InternetAddress) vector.elementAt(i4)).equals(addressArr[i3])) {
                    i4++;
                } else {
                    z = true;
                    i2++;
                    addressArr[i3] = null;
                    break;
                }
            }
            if (!z) {
                vector.addElement(addressArr[i3]);
            }
        }
        if (i2 == 0) {
            return addressArr;
        }
        if (addressArr instanceof InternetAddress[]) {
            addressArr2 = new InternetAddress[addressArr.length - i2];
        } else {
            addressArr2 = new Address[addressArr.length - i2];
        }
        for (int i5 = 0; i5 < addressArr.length; i5++) {
            if (addressArr[i5] != null) {
                addressArr2[i] = addressArr[i5];
                i++;
            }
        }
        return addressArr2;
    }

    @Override // javax.mail.Part
    public void writeTo(OutputStream outputStream) throws MessagingException, IOException {
        writeTo(outputStream, null);
    }

    public void writeTo(OutputStream outputStream, String[] strArr) throws MessagingException, IOException {
        if (!this.saved) {
            saveChanges();
        }
        if (this.modified) {
            MimeBodyPart.writeTo(this, outputStream, strArr);
            return;
        }
        Enumeration nonMatchingHeaderLines = getNonMatchingHeaderLines(strArr);
        f fVar = new f(outputStream);
        while (nonMatchingHeaderLines.hasMoreElements()) {
            fVar.a((String) nonMatchingHeaderLines.nextElement());
        }
        fVar.a();
        if (this.content == null) {
            InputStream contentStream = getContentStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int i = contentStream.read(bArr);
                if (i <= 0) {
                    break;
                } else {
                    outputStream.write(bArr, 0, i);
                }
            }
            contentStream.close();
        } else {
            outputStream.write(this.content);
        }
        outputStream.flush();
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

    @Override // javax.mail.Message
    public synchronized Flags getFlags() throws MessagingException {
        return (Flags) this.flags.clone();
    }

    @Override // javax.mail.Message
    public synchronized boolean isSet(Flags.Flag flag) throws MessagingException {
        return this.flags.contains(flag);
    }

    @Override // javax.mail.Message
    public synchronized void setFlags(Flags flags, boolean z) throws MessagingException {
        if (z) {
            this.flags.add(flags);
        } else {
            this.flags.remove(flags);
        }
    }

    @Override // javax.mail.Message
    public void saveChanges() throws MessagingException {
        this.modified = true;
        this.saved = true;
        updateHeaders();
    }

    protected void updateMessageID() throws MessagingException {
        setHeader("Message-ID", new StringBuffer().append(Engagement.Comparison.LT).append(UniqueValue.getUniqueMessageIDValue(this.session)).append(Engagement.Comparison.GT).toString());
    }

    protected void updateHeaders() throws MessagingException {
        MimeBodyPart.updateHeaders(this);
        setHeader(HttpHeaders.MIME_VERSION, "1.0");
        updateMessageID();
    }

    protected InternetHeaders createInternetHeaders(InputStream inputStream) throws MessagingException {
        return new InternetHeaders(inputStream);
    }

    protected MimeMessage createMimeMessage(Session session) throws MessagingException {
        return new MimeMessage(session);
    }
}
