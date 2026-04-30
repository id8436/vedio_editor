package com.adobe.creativesdk.foundation.internal.net;

import android.text.TextUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class AdobeNetworkHttpMultiPartTask extends AdobeNetworkHttpTask {
    private static final int BUFFER_SIZE = 32768;
    private static final String CRLF = "\r\n";
    static final boolean L = false;
    private static final String T = "MultiPartTask";
    String _boundaryID;
    ArrayList<AdobeMultiPartData> multiPartDataList;

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask, java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ AdobeNetworkHttpResponse call() {
        return super.call();
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    public /* bridge */ /* synthetic */ void init(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        super.init(adobeNetworkHttpRequest, str, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    protected void captureInputStream() {
        captureData(this.response);
    }

    public void init(AdobeNetworkHttpRequest adobeNetworkHttpRequest, String str, AdobeNetworkHttpResponseHandler adobeNetworkHttpResponseHandler, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, String str2, ArrayList<AdobeMultiPartData> arrayList) {
        this._boundaryID = str2;
        this.multiPartDataList = arrayList;
        super.init(adobeNetworkHttpRequest, str, adobeNetworkHttpResponseHandler, adobeNetworkHttpTaskHandle);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTask
    protected boolean writeToOutputStream() throws Throwable {
        OutputStream outputStream;
        OutputStream outputStream2;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                this.urlConnection.setDoOutput(true);
                this.urlConnection.setDoInput(true);
                outputStream = this.urlConnection.getOutputStream();
                try {
                    for (AdobeMultiPartData adobeMultiPartData : this.multiPartDataList) {
                        if (Thread.currentThread().isInterrupted()) {
                            AdobeLogger.log(Level.WARN, T, "thread interrupted or cancelled.");
                            IOUtils.closeQuietly((InputStream) null);
                            IOUtils.closeQuietly(outputStream);
                            this.retryEnabled = false;
                            return false;
                        }
                        if (adobeMultiPartData.getSourcePath() != null || adobeMultiPartData.getInputStream() != null) {
                            BufferedInputStream bufferedInputStream2 = adobeMultiPartData.getInputStream() != null ? new BufferedInputStream(adobeMultiPartData.getInputStream()) : new BufferedInputStream(new FileInputStream(adobeMultiPartData.getSourcePath()), 32768);
                            try {
                                String strGenerateMultiPartMixedData = generateMultiPartMixedData(adobeMultiPartData, this._boundaryID);
                                logNw(strGenerateMultiPartMixedData);
                                outputStream.write(strGenerateMultiPartMixedData.getBytes(Charset.defaultCharset()));
                                byte[] bArr = new byte[32768];
                                int iAvailable = bufferedInputStream2.available();
                                int i = bufferedInputStream2.read(bArr, 0, 32768);
                                int i2 = 0;
                                while (i > 0) {
                                    if (this.requestHandler.isCancelled() || Thread.currentThread().isInterrupted()) {
                                        AdobeLogger.log(Level.WARN, T, "thread interrupted or cancelled.");
                                        IOUtils.closeQuietly((InputStream) bufferedInputStream2);
                                        IOUtils.closeQuietly(outputStream);
                                        this.retryEnabled = false;
                                        return false;
                                    }
                                    outputStream.write(bArr, 0, i);
                                    i2 += i;
                                    i = bufferedInputStream2.read(bArr, 0, 32768);
                                    issueProgressCallback(adobeMultiPartData, i2, iAvailable);
                                }
                                this.response.setBytesSent(i2);
                                IOUtils.closeQuietly((InputStream) bufferedInputStream2);
                            } catch (IOException e2) {
                                e = e2;
                                bufferedInputStream = bufferedInputStream2;
                                e.printStackTrace();
                                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e);
                                this.response.setHasFileError(true);
                                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                                IOUtils.closeQuietly(outputStream);
                                this.retryEnabled = false;
                                return false;
                            } catch (IllegalArgumentException e3) {
                                e = e3;
                                outputStream2 = outputStream;
                                bufferedInputStream = bufferedInputStream2;
                                outputStream = outputStream2;
                                e.printStackTrace();
                                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e);
                                this.response.setHasFileError(true);
                                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                                IOUtils.closeQuietly(outputStream);
                                this.retryEnabled = false;
                                return false;
                            } catch (IllegalStateException e4) {
                                e = e4;
                                bufferedInputStream = bufferedInputStream2;
                                e.printStackTrace();
                                AdobeLogger.log(Level.ERROR, AdobeNetworkHttpDataDownloadTask.class.getName(), "Error during io operation", e);
                                this.response.setHasFileError(true);
                                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                                IOUtils.closeQuietly(outputStream);
                                this.retryEnabled = false;
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                bufferedInputStream = bufferedInputStream2;
                                IOUtils.closeQuietly((InputStream) bufferedInputStream);
                                IOUtils.closeQuietly(outputStream);
                                this.retryEnabled = false;
                                throw th;
                            }
                        } else if (adobeMultiPartData.getData() != null) {
                            String strGenerateMultiPartMixedData2 = generateMultiPartMixedData(adobeMultiPartData, this._boundaryID);
                            logNw(strGenerateMultiPartMixedData2);
                            outputStream.write(strGenerateMultiPartMixedData2.getBytes(Charset.defaultCharset()));
                            outputStream.write(adobeMultiPartData.getData());
                        }
                        outputStream.write("\r\n".getBytes());
                    }
                    String str = String.format("--%s--\r\n", this._boundaryID);
                    outputStream.write(str.getBytes(Charset.defaultCharset()));
                    logNw(str);
                    IOUtils.closeQuietly((InputStream) null);
                    IOUtils.closeQuietly(outputStream);
                    this.retryEnabled = false;
                    return true;
                } catch (IOException e5) {
                    e = e5;
                } catch (IllegalArgumentException e6) {
                    e = e6;
                    outputStream2 = outputStream;
                } catch (IllegalStateException e7) {
                    e = e7;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e8) {
            e = e8;
            outputStream = null;
        } catch (IllegalArgumentException e9) {
            e = e9;
            outputStream2 = null;
        } catch (IllegalStateException e10) {
            e = e10;
            outputStream = null;
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
        }
    }

    private void issueProgressCallback(final AdobeMultiPartData adobeMultiPartData, final int i, final int i2) {
        if (adobeMultiPartData.progressHandler != null && adobeMultiPartData.progressCallback != null) {
            adobeMultiPartData.progressHandler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpMultiPartTask.1
                @Override // java.lang.Runnable
                public void run() {
                    adobeMultiPartData.progressCallback.progress(i, i2);
                }
            });
        }
    }

    private String generateMultiPartMixedData(AdobeMultiPartData adobeMultiPartData, String str) {
        StringBuilder sb = new StringBuilder("");
        sb.append(String.format("--%s\r\n", str));
        sb.append(String.format("Content-Disposition: %s; ", adobeMultiPartData.getContentDisposition()));
        String httpFormFieldName = adobeMultiPartData.getHttpFormFieldName();
        if (!TextUtils.isEmpty(httpFormFieldName)) {
            sb.append(String.format("name=\"%s\"", httpFormFieldName));
        }
        String name = adobeMultiPartData.getName();
        if (!TextUtils.isEmpty(name)) {
            sb.append(String.format("; filename=\"%s\"", name));
        }
        sb.append("\r\n");
        String contentID = adobeMultiPartData.getContentID();
        if (contentID != null) {
            if (contentID.startsWith("cid:")) {
                contentID = contentID.substring(4);
            }
            sb.append(String.format("Content-ID: <%s>\r\n", contentID));
        }
        String contentType = adobeMultiPartData.getContentType();
        if (!TextUtils.isEmpty(contentType)) {
            sb.append(String.format("Content-Type: %s\r\n", contentType));
        }
        sb.append("\r\n");
        return sb.toString();
    }

    private void logNw(String str) {
    }
}
