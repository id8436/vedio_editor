package com.google.gdata.data.media;

import com.google.gdata.data.IEntry;
import com.google.gdata.data.ILink;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.common.base.Preconditions;
import java.io.InputStream;
import java.util.logging.Logger;
import javax.activation.CommandInfo;
import javax.activation.CommandMap;
import javax.activation.MailcapCommandMap;
import javax.mail.MessagingException;
import javax.mail.internet.InternetHeaders;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;

/* JADX INFO: loaded from: classes3.dex */
public class MediaMultipart extends MimeMultipart {
    private static final Logger LOGGER = Logger.getLogger(MediaMultipart.class.getName());
    protected MediaBodyPart atomPart;
    protected MediaBodyPart mediaPart;

    static {
        loadMimeMappings();
    }

    public static void loadMimeMappings() {
        String[] strArr = {"application/atom+xml", "application/rss+xml", "application/json"};
        CommandMap defaultCommandMap = CommandMap.getDefaultCommandMap();
        if (defaultCommandMap instanceof MailcapCommandMap) {
            MailcapCommandMap mailcapCommandMap = (MailcapCommandMap) defaultCommandMap;
            for (int i = 0; i < strArr.length; i++) {
                CommandInfo[] allCommands = mailcapCommandMap.getAllCommands(strArr[i]);
                if (allCommands == null || allCommands.length == 0) {
                    mailcapCommandMap.addMailcap(strArr[i] + ";; x-java-content-handler=com.google.gdata.data.media.GDataContentHandler");
                }
            }
            return;
        }
        LOGGER.warning("Unable to find MailcapCommandMap, skipping dynamic mailcap config.");
    }

    protected MediaMultipart(String str) {
        super(str);
    }

    public MediaMultipart(String str, InputStream inputStream) throws MessagingException {
        super(new MediaStreamSource(inputStream, str));
        if (getCount() != 2) {
            throw new MessagingException("Multipart must have Atom and media part");
        }
        boolean zIsMimeType = getBodyPart(0).isMimeType(ContentType.ATOM.getMediaType());
        if (!zIsMimeType && !getBodyPart(1).isMimeType(ContentType.ATOM.getMediaType())) {
            throw new MessagingException("No Atom MIME body part found");
        }
        this.atomPart = (MediaBodyPart) getBodyPart(zIsMimeType ? 0 : 1);
        this.mediaPart = (MediaBodyPart) getBodyPart(zIsMimeType ? 1 : 0);
    }

    public MediaMultipart(IEntry iEntry, MediaSource mediaSource) throws MessagingException {
        super(ILink.Rel.RELATED);
        Preconditions.checkNotNull(iEntry, "entry");
        Preconditions.checkNotNull(mediaSource, "media");
        this.atomPart = new MediaBodyPart(iEntry);
        addBodyPart(this.atomPart);
        this.mediaPart = new MediaBodyPart(mediaSource);
        addBodyPart(this.mediaPart);
    }

    @Override // javax.mail.internet.MimeMultipart
    public MimeBodyPart createMimeBodyPart(InputStream inputStream) throws MessagingException {
        return new MediaBodyPart(inputStream);
    }

    @Override // javax.mail.internet.MimeMultipart
    public MimeBodyPart createMimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        return new MediaBodyPart(internetHeaders, bArr);
    }

    public MediaBodyPart getAtomPart() {
        return this.atomPart;
    }

    public MediaBodyPart getMediaPart() {
        return this.mediaPart;
    }
}
