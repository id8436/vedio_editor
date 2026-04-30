package com.google.gdata.wireformats.input.media;

import com.google.gdata.data.ParseSource;
import com.google.gdata.data.media.GDataContentHandler;
import com.google.gdata.data.media.MediaMultipart;
import com.google.gdata.util.InvalidEntryException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.input.AbstractParser;
import com.google.gdata.wireformats.input.InputProperties;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes3.dex */
public class MediaMultipartParser extends AbstractParser<MediaMultipart> {
    public MediaMultipartParser() {
        super(AltFormat.MEDIA_MULTIPART, MediaMultipart.class);
    }

    protected MediaMultipart createMultipart(ParseSource parseSource, InputProperties inputProperties) throws MessagingException {
        return new MediaMultipart(inputProperties.getContentType().toString(), parseSource.getInputStream());
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public <R extends MediaMultipart> R parse(ParseSource parseSource, InputProperties inputProperties, Class<R> cls) throws ServiceException {
        Preconditions.checkArgument(MediaMultipart.class.isAssignableFrom(cls), "Result class must extend " + MediaMultipart.class.getName());
        Preconditions.checkNotNull(parseSource.getInputStream(), "Parse source must be stream-based");
        InputProperties threadInputProperties = null;
        try {
            try {
                threadInputProperties = GDataContentHandler.setThreadInputProperties(inputProperties);
                return cls.cast(createMultipart(parseSource, inputProperties));
            } catch (MessagingException e2) {
                throw new InvalidEntryException(e2.getMessage(), e2);
            }
        } finally {
            GDataContentHandler.setThreadInputProperties(threadInputProperties);
        }
    }
}
