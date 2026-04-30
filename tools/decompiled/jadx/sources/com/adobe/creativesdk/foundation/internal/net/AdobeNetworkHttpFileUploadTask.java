package com.adobe.creativesdk.foundation.internal.net;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.http.entity.mime.MIME;

/* JADX INFO: loaded from: classes.dex */
class AdobeNetworkHttpFileUploadTask extends AdobeNetworkHttpTask {
    protected static final int BUFFER_SIZE = 32768;
    private static String T = AdobeNetworkHttpFileUploadTask.class.getSimpleName();
    private String _sourcePath = null;

    AdobeNetworkHttpFileUploadTask() {
    }

    public void init(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, String str2, AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        this._sourcePath = str2;
        super.init(adobeNetworkHttpRequest, str, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    protected boolean writeToOutputStream() throws Throwable {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        long length;
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        try {
            try {
                this.urlConnection.setDoOutput(true);
                this.urlConnection.setDoInput(true);
                length = new File(this._sourcePath).length();
                this.urlConnection.setFixedLengthStreamingMode((int) length);
                this.urlConnection.setRequestProperty("file", FilenameUtils.getName(URLDecoder.decode(this.request.getUrl().getPath(), "UTF-8")));
                this.urlConnection.setRequestProperty(MIME.CONTENT_TRANSFER_ENC, "binary");
                if (length > 0) {
                    this.urlConnection.setRequestProperty("Content-Length", "" + length);
                }
                outputStream = this.urlConnection.getOutputStream();
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(this._sourcePath), 32768);
                } catch (IOException e2) {
                    e = e2;
                    bufferedInputStream = null;
                    outputStream2 = outputStream;
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    bufferedInputStream = null;
                    outputStream2 = outputStream;
                } catch (IllegalStateException e4) {
                    e = e4;
                    bufferedInputStream2 = null;
                    outputStream2 = outputStream;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = null;
                    outputStream2 = outputStream;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
            bufferedInputStream = null;
        } catch (IllegalArgumentException e6) {
            e = e6;
            bufferedInputStream = null;
        } catch (IllegalStateException e7) {
            e = e7;
            bufferedInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
        }
        try {
            byte[] bArr = new byte[32768];
            int i = bufferedInputStream.read(bArr, 0, 32768);
            int i2 = 0;
            while (i > 0) {
                if (this.requestHandler.isCancelled()) {
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    IOUtils.closeQuietly(outputStream);
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                    IOUtils.closeQuietly(outputStream);
                    return false;
                }
                outputStream.write(bArr, 0, i);
                outputStream.flush();
                i2 += i;
                i = bufferedInputStream.read(bArr, 0, 32768);
                onProgressUpdate(Integer.valueOf((int) ((i2 / length) * 100.0f)));
            }
            this.response.setBytesSent(i2);
            IOUtils.closeQuietly((InputStream) bufferedInputStream);
            IOUtils.closeQuietly(outputStream);
            return true;
        } catch (IOException e8) {
            e = e8;
            outputStream2 = outputStream;
            AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e);
            this.response.setHasFileError(true);
            IOUtils.closeQuietly((InputStream) bufferedInputStream);
            IOUtils.closeQuietly(outputStream2);
            return false;
        } catch (IllegalArgumentException e9) {
            e = e9;
            outputStream2 = outputStream;
            AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e);
            this.response.setHasFileError(true);
            IOUtils.closeQuietly((InputStream) bufferedInputStream);
            IOUtils.closeQuietly(outputStream2);
            return false;
        } catch (IllegalStateException e10) {
            e = e10;
            outputStream2 = outputStream;
            bufferedInputStream2 = bufferedInputStream;
            try {
                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e);
                this.response.setHasFileError(true);
                IOUtils.closeQuietly((InputStream) bufferedInputStream2);
                IOUtils.closeQuietly(outputStream2);
                return false;
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream = bufferedInputStream2;
                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                IOUtils.closeQuietly(outputStream2);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            outputStream2 = outputStream;
            IOUtils.closeQuietly((InputStream) bufferedInputStream);
            IOUtils.closeQuietly(outputStream2);
            throw th;
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    protected void captureInputStream() {
        captureData(this.response);
    }
}
