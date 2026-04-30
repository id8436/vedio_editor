package com.google.gdata.data.media;

import com.google.gdata.data.DateTime;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;

/* JADX INFO: loaded from: classes3.dex */
public interface MediaSource extends DataSource {
    long getContentLength();

    String getEtag();

    DateTime getLastModified();

    public class Output {
        public static void writeTo(MediaSource mediaSource, OutputStream outputStream) throws IOException {
            InputStream inputStream = mediaSource.getInputStream();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int i = bufferedInputStream.read(bArr, 0, bArr.length);
                    if (i >= 0) {
                        bufferedOutputStream.write(bArr, 0, i);
                    } else {
                        bufferedOutputStream.flush();
                        return;
                    }
                }
            } finally {
                bufferedInputStream.close();
            }
        }
    }
}
