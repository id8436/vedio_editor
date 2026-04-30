package org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes3.dex */
public class ProxyWriter extends FilterWriter {
    public ProxyWriter(Writer writer) {
        super(writer);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c2) throws IOException {
        try {
            beforeWrite(1);
            this.out.append(c2);
            afterWrite(1);
        } catch (IOException e2) {
            handleIOException(e2);
        }
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) throws IOException {
        try {
            beforeWrite(i2 - i);
            this.out.append(charSequence, i, i2);
            afterWrite(i2 - i);
        } catch (IOException e2) {
            handleIOException(e2);
        }
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        int length = 0;
        if (charSequence != null) {
            try {
                length = charSequence.length();
            } catch (IOException e2) {
                handleIOException(e2);
            }
        }
        beforeWrite(length);
        this.out.append(charSequence);
        afterWrite(length);
        return this;
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) throws IOException {
        try {
            beforeWrite(1);
            this.out.write(i);
            afterWrite(1);
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        int length = 0;
        if (cArr != null) {
            try {
                length = cArr.length;
            } catch (IOException e2) {
                handleIOException(e2);
                return;
            }
        }
        beforeWrite(length);
        this.out.write(cArr);
        afterWrite(length);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        try {
            beforeWrite(i2);
            this.out.write(cArr, i, i2);
            afterWrite(i2);
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        int length = 0;
        if (str != null) {
            try {
                length = str.length();
            } catch (IOException e2) {
                handleIOException(e2);
                return;
            }
        }
        beforeWrite(length);
        this.out.write(str);
        afterWrite(length);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        try {
            beforeWrite(i2);
            this.out.write(str, i, i2);
            afterWrite(i2);
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.out.flush();
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } catch (IOException e2) {
            handleIOException(e2);
        }
    }

    protected void beforeWrite(int i) throws IOException {
    }

    protected void afterWrite(int i) throws IOException {
    }

    protected void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }
}
