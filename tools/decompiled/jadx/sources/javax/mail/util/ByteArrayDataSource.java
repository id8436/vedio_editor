package javax.mail.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;
import javax.mail.internet.ContentType;
import javax.mail.internet.MimeUtility;
import javax.mail.internet.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public class ByteArrayDataSource implements DataSource {
    private byte[] data;
    private String name = "";
    private String type;

    public ByteArrayDataSource(InputStream inputStream, String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i > 0) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                this.data = byteArrayOutputStream.toByteArray();
                this.type = str;
                return;
            }
        }
    }

    public ByteArrayDataSource(byte[] bArr, String str) {
        this.data = bArr;
        this.type = str;
    }

    public ByteArrayDataSource(String str, String str2) throws IOException {
        String parameter = null;
        try {
            parameter = new ContentType(str2).getParameter(com.google.gdata.util.ContentType.ATTR_CHARSET);
        } catch (ParseException e2) {
        }
        this.data = str.getBytes(parameter == null ? MimeUtility.getDefaultJavaCharset() : parameter);
        this.type = str2;
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        if (this.data == null) {
            throw new IOException("no data");
        }
        return new ByteArrayInputStream(this.data);
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() throws IOException {
        throw new IOException("cannot do this");
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        return this.type;
    }

    @Override // javax.activation.DataSource
    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }
}
