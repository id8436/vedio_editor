package com.google.gdata.wireformats.output.media;

import com.google.gdata.data.media.GDataContentHandler;
import com.google.gdata.data.media.MediaMultipart;
import com.google.gdata.util.InvalidEntryException;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.output.OutputGenerator;
import com.google.gdata.wireformats.output.OutputProperties;
import java.io.IOException;
import java.io.OutputStream;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes3.dex */
public class MediaMultipartGenerator implements OutputGenerator<MediaMultipart> {
    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return AltFormat.MEDIA_MULTIPART;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<MediaMultipart> getSourceType() {
        return MediaMultipart.class;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public void generate(OutputStream outputStream, OutputProperties outputProperties, MediaMultipart mediaMultipart) throws Throwable {
        OutputProperties outputProperties2;
        MessagingException messagingException;
        try {
            OutputProperties threadOutputProperties = GDataContentHandler.setThreadOutputProperties(outputProperties);
            try {
                mediaMultipart.writeTo(outputStream);
                GDataContentHandler.setThreadOutputProperties(threadOutputProperties);
            } catch (MessagingException e2) {
                outputProperties2 = threadOutputProperties;
                messagingException = e2;
                try {
                    Throwable cause = messagingException.getCause();
                    if (cause instanceof IOException) {
                        throw ((IOException) cause);
                    }
                    IOException iOException = new IOException("Invalid multipart content");
                    iOException.initCause(new InvalidEntryException("Invalid media entry", messagingException));
                    throw iOException;
                } catch (Throwable th) {
                    th = th;
                    GDataContentHandler.setThreadOutputProperties(outputProperties2);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputProperties2 = threadOutputProperties;
                GDataContentHandler.setThreadOutputProperties(outputProperties2);
                throw th;
            }
        } catch (MessagingException e3) {
            outputProperties2 = null;
            messagingException = e3;
        } catch (Throwable th3) {
            th = th3;
            outputProperties2 = null;
        }
    }
}
