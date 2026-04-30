package javax.mail.internet;

import com.l.b.a.f;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes3.dex */
public class PreencodedMimeBodyPart extends MimeBodyPart {
    private String encoding;

    public PreencodedMimeBodyPart(String str) {
        this.encoding = str;
    }

    @Override // javax.mail.internet.MimeBodyPart, javax.mail.internet.MimePart
    public String getEncoding() throws MessagingException {
        return this.encoding;
    }

    @Override // javax.mail.internet.MimeBodyPart, javax.mail.Part
    public void writeTo(OutputStream outputStream) throws MessagingException, IOException {
        f fVar;
        if (outputStream instanceof f) {
            fVar = (f) outputStream;
        } else {
            fVar = new f(outputStream);
        }
        Enumeration allHeaderLines = getAllHeaderLines();
        while (allHeaderLines.hasMoreElements()) {
            fVar.a((String) allHeaderLines.nextElement());
        }
        fVar.a();
        getDataHandler().writeTo(outputStream);
        outputStream.flush();
    }

    @Override // javax.mail.internet.MimeBodyPart
    protected void updateHeaders() throws MessagingException {
        super.updateHeaders();
        MimeBodyPart.setEncoding(this, this.encoding);
    }
}
