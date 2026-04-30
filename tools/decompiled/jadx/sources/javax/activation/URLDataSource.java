package javax.activation;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class URLDataSource implements DataSource {
    private URL url;
    private URLConnection url_conn = null;

    public URLDataSource(URL url) {
        this.url = null;
        this.url = url;
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        String contentType = null;
        try {
            if (this.url_conn == null) {
                this.url_conn = this.url.openConnection();
            }
        } catch (IOException e2) {
        }
        if (this.url_conn != null) {
            contentType = this.url_conn.getContentType();
        }
        if (contentType == null) {
            return "application/octet-stream";
        }
        return contentType;
    }

    @Override // javax.activation.DataSource
    public String getName() {
        return this.url.getFile();
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        return this.url.openStream();
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() throws IOException {
        this.url_conn = this.url.openConnection();
        if (this.url_conn == null) {
            return null;
        }
        this.url_conn.setDoOutput(true);
        return this.url_conn.getOutputStream();
    }

    public URL getURL() {
        return this.url;
    }
}
