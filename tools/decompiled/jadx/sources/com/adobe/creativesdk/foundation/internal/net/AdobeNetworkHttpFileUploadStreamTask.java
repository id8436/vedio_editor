package com.adobe.creativesdk.foundation.internal.net;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.http.entity.mime.MIME;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkHttpFileUploadStreamTask extends AdobeNetworkHttpFileUploadTask {
    private static String T = AdobeNetworkHttpFileUploadStreamTask.class.getSimpleName();
    private InputStream dataStream;

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask, java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ AdobeNetworkHttpResponse call() {
        return super.call();
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    public /* bridge */ /* synthetic */ void init(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        super.init(adobeNetworkHttpRequest, str, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpFileUploadTask
    public /* bridge */ /* synthetic */ void init(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, String str2, AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        super.init(adobeNetworkHttpRequest, str, str2, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
    }

    public void init(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, InputStream inputStream, AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        super.init(adobeNetworkHttpRequest, str, (String) null, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
        this.dataStream = inputStream;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpFileUploadTask, com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    protected boolean writeToOutputStream() {
        try {
            if (this.dataStream == null) {
                this.response.setHasFileError(true);
                return false;
            }
            this.urlConnection.setDoOutput(true);
            this.urlConnection.setDoInput(true);
            this.urlConnection.setFixedLengthStreamingMode(this.dataStream.available());
            this.urlConnection.setRequestProperty("file", FilenameUtils.getName(URLDecoder.decode(this.request.getUrl().getPath(), "UTF-8")));
            int iAvailable = this.dataStream.available();
            this.urlConnection.setRequestProperty(MIME.CONTENT_TRANSFER_ENC, "binary");
            if (iAvailable > 0) {
                this.urlConnection.setRequestProperty("Content-Length", "" + iAvailable);
            }
            OutputStream outputStream = this.urlConnection.getOutputStream();
            byte[] bArr = new byte[32768];
            int i = this.dataStream.read(bArr, 0, 32768);
            int i2 = 0;
            while (i > 0) {
                if (this.requestHandler.isCancelled()) {
                    IOUtils.closeQuietly(this.dataStream);
                    IOUtils.closeQuietly(outputStream);
                    IOUtils.closeQuietly(this.dataStream);
                    IOUtils.closeQuietly(outputStream);
                    return false;
                }
                outputStream.write(bArr, 0, i);
                outputStream.flush();
                i2 += i;
                i = this.dataStream.read(bArr, 0, 32768);
                onProgressUpdate(Integer.valueOf((int) ((i2 / iAvailable) * 100.0f)));
            }
            this.response.setBytesSent(i2);
            IOUtils.closeQuietly(this.dataStream);
            IOUtils.closeQuietly(outputStream);
            return true;
        } catch (IllegalArgumentException e2) {
            AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e2);
            this.response.setHasFileError(true);
            return false;
        } catch (IOException e3) {
            AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e3);
            this.response.setHasFileError(true);
            return false;
        } catch (IllegalStateException e4) {
            AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e4);
            this.response.setHasFileError(true);
            return false;
        } finally {
            IOUtils.closeQuietly(this.dataStream);
            IOUtils.closeQuietly((OutputStream) null);
        }
    }
}
