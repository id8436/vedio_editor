package com.google.gdata.client.uploader;

import com.google.gdata.client.uploader.ResumableHttpFileUploader;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
class ResumableHttpUploadTask implements Callable<ResumableHttpFileUploader.ResponseMessage> {
    private static final String CONTENT_LENGTH_HEADER_NAME = "Content-Length";
    private static final String CONTENT_RANGE_HEADER_NAME = "Content-Range";
    private final boolean resume;
    private final ResumableHttpFileUploader uploader;
    private final UrlConnectionFactory urlConnectionFactory;

    public ResumableHttpUploadTask(UrlConnectionFactory urlConnectionFactory, ResumableHttpFileUploader resumableHttpFileUploader, boolean z) {
        this.urlConnectionFactory = urlConnectionFactory;
        this.uploader = resumableHttpFileUploader;
        this.resume = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public ResumableHttpFileUploader.ResponseMessage call() throws Exception {
        return upload();
    }

    private long getNextStartByteFromServer() throws IOException {
        HttpURLConnection httpURLConnectionCreate = this.urlConnectionFactory.create(this.uploader.getUrl());
        httpURLConnectionCreate.setRequestMethod(this.uploader.getHttpRequestMethod().toString());
        httpURLConnectionCreate.setRequestProperty("Content-Length", "0");
        httpURLConnectionCreate.connect();
        if (httpURLConnectionCreate.getResponseCode() != 308) {
            return 0L;
        }
        return getNextByteIndexFromRangeHeader(httpURLConnectionCreate.getHeaderField("Range"));
    }

    private long getNextByteIndexFromRangeHeader(String str) {
        if (str == null || str.indexOf(45) == -1) {
            return 0L;
        }
        Matcher matcher = Pattern.compile("[0-9]+-[0-9]+").matcher(str);
        if (!matcher.find(1)) {
            return 0L;
        }
        try {
            String[] strArrSplit = matcher.group().split("-");
            if (Long.parseLong(strArrSplit[0]) != 0) {
                return 0L;
            }
            long j = Long.parseLong(strArrSplit[1]);
            this.uploader.setNumBytesUploaded(j + 1);
            return j + 1;
        } catch (NumberFormatException e2) {
            return 0L;
        }
    }

    private void setHeaders(HttpURLConnection httpURLConnection, long j, long j2) {
        long length = this.uploader.getData().length();
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(j2));
        httpURLConnection.setRequestProperty("Content-Range", "bytes " + (length == 0 ? "*/0" : j + "-" + ((j + j2) - 1) + URIUtil.SLASH + String.valueOf(length)));
        for (Map.Entry<String, String> entry : this.uploader.getHeaders().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    private ResumableHttpFileUploader.ResponseMessage upload() throws IOException {
        long nextStartByteFromServer = this.resume ? getNextStartByteFromServer() : 0L;
        while (this.uploader.getUploadState().equals(ResumableHttpFileUploader.UploadState.IN_PROGRESS)) {
            long jMin = Math.min(this.uploader.getData().length() - nextStartByteFromServer, this.uploader.getChunkSize());
            HttpURLConnection httpURLConnectionCreate = this.urlConnectionFactory.create(this.uploader.getUrl());
            httpURLConnectionCreate.setDoOutput(true);
            httpURLConnectionCreate.setDoInput(true);
            httpURLConnectionCreate.setRequestMethod(this.uploader.getHttpRequestMethod().toString());
            setHeaders(httpURLConnectionCreate, nextStartByteFromServer, jMin);
            OutputStream outputStream = httpURLConnectionCreate.getOutputStream();
            try {
                writeSlice(nextStartByteFromServer, jMin, outputStream);
                outputStream.close();
            } catch (ServerException e2) {
                long nextStartByteFromServer2 = nextStartByteFromServer;
                if (!this.uploader.isPaused()) {
                    nextStartByteFromServer2 = getNextStartByteFromServer();
                }
                nextStartByteFromServer = nextStartByteFromServer2;
            } catch (IOException e3) {
                this.uploader.setUploadState(ResumableHttpFileUploader.UploadState.CLIENT_ERROR);
            }
            switch (httpURLConnectionCreate.getResponseCode()) {
                case 308:
                    String headerField = httpURLConnectionCreate.getHeaderField("Range");
                    if (headerField != null) {
                        nextStartByteFromServer = getNextByteIndexFromRangeHeader(headerField);
                    } else {
                        nextStartByteFromServer += jMin;
                    }
                    String headerField2 = httpURLConnectionCreate.getHeaderField("Location");
                    if (headerField2 != null) {
                        this.uploader.setUrl(new URL(headerField2));
                    }
                    this.uploader.getBackoffPolicy().reset();
                    break;
                case 503:
                    if (!this.uploader.isPaused()) {
                        nextStartByteFromServer = getNextStartByteFromServer();
                        this.uploader.addNumBytesUploaded(-jMin);
                        try {
                            long nextBackoffMs = this.uploader.getBackoffPolicy().getNextBackoffMs();
                            if (nextBackoffMs == -1) {
                                this.uploader.pause();
                            } else {
                                Thread.sleep(nextBackoffMs);
                            }
                        } catch (InterruptedException e4) {
                        }
                    }
                    break;
                default:
                    this.uploader.setUploadState(ResumableHttpFileUploader.UploadState.COMPLETE);
                    this.uploader.sendCompletionNotification();
                    this.uploader.getBackoffPolicy().reset();
                    return new ResumableHttpFileUploader.ResponseMessage(httpURLConnectionCreate.getContentLength(), httpURLConnectionCreate.getInputStream());
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
    
        if (r12 <= 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
    
        r14.flush();
        r9.uploader.setUploadState(com.google.gdata.client.uploader.ResumableHttpFileUploader.UploadState.CLIENT_ERROR);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void writeSlice(long r10, long r12, java.io.OutputStream r14) throws com.google.gdata.client.uploader.ResumableHttpUploadTask.ServerException, java.io.IOException {
        /*
            r9 = this;
            r6 = 0
            r0 = 65536(0x10000, float:9.18355E-41)
            byte[] r1 = new byte[r0]
            com.google.gdata.client.uploader.ResumableHttpFileUploader r0 = r9.uploader
            com.google.gdata.client.uploader.UploadData r2 = r0.getData()
            r2.setPosition(r10)
            monitor-enter(r2)
        L10:
            com.google.gdata.client.uploader.ResumableHttpFileUploader r0 = r9.uploader     // Catch: java.lang.Throwable -> L58
            boolean r0 = r0.isPaused()     // Catch: java.lang.Throwable -> L58
            if (r0 != 0) goto L34
            int r0 = r1.length     // Catch: java.lang.Throwable -> L58
            long r4 = (long) r0     // Catch: java.lang.Throwable -> L58
            int r0 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r0 >= 0) goto L36
            r0 = 0
            int r3 = (int) r12     // Catch: java.lang.Throwable -> L58
            int r0 = r2.read(r1, r0, r3)     // Catch: java.lang.Throwable -> L58
        L24:
            if (r0 >= 0) goto L3d
            int r0 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r0 <= 0) goto L34
            r14.flush()     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            com.google.gdata.client.uploader.ResumableHttpFileUploader r0 = r9.uploader     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            com.google.gdata.client.uploader.ResumableHttpFileUploader$UploadState r1 = com.google.gdata.client.uploader.ResumableHttpFileUploader.UploadState.CLIENT_ERROR     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            r0.setUploadState(r1)     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
        L34:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L58
            return
        L36:
            r0 = 0
            int r3 = r1.length     // Catch: java.lang.Throwable -> L58
            int r0 = r2.read(r1, r0, r3)     // Catch: java.lang.Throwable -> L58
            goto L24
        L3d:
            r3 = 0
            r14.write(r1, r3, r0)     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            r14.flush()     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            long r4 = (long) r0     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            long r12 = r12 - r4
            com.google.gdata.client.uploader.ResumableHttpFileUploader r3 = r9.uploader     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            long r4 = (long) r0     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            r3.addNumBytesUploaded(r4)     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L58
            int r0 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r0 != 0) goto L10
            goto L34
        L51:
            r0 = move-exception
            com.google.gdata.client.uploader.ResumableHttpUploadTask$ServerException r0 = new com.google.gdata.client.uploader.ResumableHttpUploadTask$ServerException     // Catch: java.lang.Throwable -> L58
            r0.<init>()     // Catch: java.lang.Throwable -> L58
            throw r0     // Catch: java.lang.Throwable -> L58
        L58:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L58
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gdata.client.uploader.ResumableHttpUploadTask.writeSlice(long, long, java.io.OutputStream):void");
    }

    class ServerException extends Exception {
        ServerException() {
        }
    }
}
