package com.google.gdata.client.uploader;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class ResumableHttpFileUploader {
    public static long DEFAULT_MAX_CHUNK_SIZE = 10485760;
    public static final long DEFAULT_PROGRESS_INTERVAL_MS = 100;
    public static final String METHOD_OVERRIDE = "X-HTTP-Method-Override";
    private final BackoffPolicy backoffPolicy;
    private final long chunkSize;
    private final UploadData data;
    private final ExecutorService executor;
    private Map<String, String> headers;
    private RequestMethod httpRequestMethod;
    private long numBytesUploaded;
    private final long progressIntervalMillis;
    private final ProgressListener progressListener;
    private Timer progressNotifier;
    private Future<ResponseMessage> uploadResultFuture;
    private UploadState uploadState;
    private URL url;
    private final UrlConnectionFactory urlConnectionFactory;

    /* JADX INFO: loaded from: classes3.dex */
    public enum RequestMethod {
        POST,
        PUT
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum UploadState {
        COMPLETE,
        CLIENT_ERROR,
        IN_PROGRESS,
        NOT_STARTED,
        PAUSED
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class ResponseMessage {
        private final int contentLength;
        private final InputStream inputStream;

        public ResponseMessage(int i, InputStream inputStream) {
            this.contentLength = i;
            this.inputStream = inputStream;
        }

        public int getContentLength() {
            return this.contentLength;
        }

        public InputStream getInputStream() {
            return this.inputStream;
        }

        public String receiveMessage(long j) throws ExecutionException, InterruptedException, TimeoutException {
            return (String) Executors.newSingleThreadExecutor().submit(new Callable<String>() { // from class: com.google.gdata.client.uploader.ResumableHttpFileUploader.ResponseMessage.1
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    StringBuilder sb = new StringBuilder();
                    int i = 0;
                    while (i < ResponseMessage.this.contentLength) {
                        int iAvailable = ResponseMessage.this.inputStream.available();
                        if (iAvailable > 0) {
                            byte[] bArr = new byte[iAvailable];
                            i += ResponseMessage.this.inputStream.read(bArr, 0, iAvailable);
                            sb.append(new String(bArr));
                        } else {
                            Thread.sleep(10L);
                        }
                    }
                    return sb.toString();
                }
            }).get(j, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class NotificationTask extends TimerTask {
        private final ResumableHttpFileUploader fileUploader;
        private final ProgressListener listener;
        private final Timer timer;

        public NotificationTask(ResumableHttpFileUploader resumableHttpFileUploader, ProgressListener progressListener, Timer timer) {
            this.fileUploader = resumableHttpFileUploader;
            this.listener = progressListener;
            this.timer = timer;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!this.fileUploader.getUploadState().equals(UploadState.IN_PROGRESS)) {
                this.timer.cancel();
            }
            this.listener.progressChanged(this.fileUploader);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class Builder {
        private UploadData data;
        private ExecutorService executor;
        private ProgressListener progressListener;
        private URL url;
        private UrlConnectionFactory urlConnectionFactory = UrlConnectionFactory.DEFAULT;
        private long chunkSize = ResumableHttpFileUploader.DEFAULT_MAX_CHUNK_SIZE;
        private long progressIntervalMillis = 100;
        private RequestMethod requestMethod = RequestMethod.PUT;
        private BackoffPolicy backoffPolicy = BackoffPolicy.DEFAULT;

        public Builder setUrl(URL url) {
            this.url = url;
            return this;
        }

        public Builder setFile(File file) throws IOException {
            if (file == null || !file.exists() || !file.canRead()) {
                throw new IOException("The file must exist and be readable.");
            }
            this.data = new FileUploadData(file);
            return this;
        }

        public Builder setData(UploadData uploadData) {
            this.data = uploadData;
            return this;
        }

        public Builder setExecutorService(ExecutorService executorService) {
            this.executor = executorService;
            return this;
        }

        public Builder setUrlConnectionFactory(UrlConnectionFactory urlConnectionFactory) {
            this.urlConnectionFactory = urlConnectionFactory;
            return this;
        }

        public Builder setProgressListener(ProgressListener progressListener) {
            this.progressListener = progressListener;
            return this;
        }

        public Builder setChunkSize(long j) {
            this.chunkSize = j;
            return this;
        }

        public Builder setProgressIntervalMillis(long j) {
            this.progressIntervalMillis = j;
            return this;
        }

        public Builder setRequestMethod(RequestMethod requestMethod) {
            this.requestMethod = requestMethod;
            return this;
        }

        public Builder setBackoffPolicy(BackoffPolicy backoffPolicy) {
            this.backoffPolicy = backoffPolicy;
            return this;
        }

        public ResumableHttpFileUploader build() throws IOException {
            return new ResumableHttpFileUploader(this);
        }
    }

    @Deprecated
    public ResumableHttpFileUploader(URL url, File file, ExecutorService executorService, ProgressListener progressListener, long j) throws IOException {
        this(new Builder().setUrl(url).setFile(file).setExecutorService(executorService).setProgressListener(progressListener).setProgressIntervalMillis(j));
    }

    @Deprecated
    public ResumableHttpFileUploader(URL url, File file, ExecutorService executorService, ProgressListener progressListener, long j, long j2) throws IOException {
        this(new Builder().setUrl(url).setFile(file).setExecutorService(executorService).setProgressListener(progressListener).setChunkSize(j).setProgressIntervalMillis(j2));
    }

    ResumableHttpFileUploader(Builder builder) throws IOException {
        this.numBytesUploaded = 0L;
        this.uploadState = UploadState.NOT_STARTED;
        this.headers = new HashMap();
        this.url = builder.url;
        this.data = builder.data;
        this.executor = builder.executor;
        this.urlConnectionFactory = builder.urlConnectionFactory;
        this.progressListener = builder.progressListener;
        this.progressIntervalMillis = Math.max(0L, builder.progressIntervalMillis);
        this.chunkSize = builder.chunkSize;
        this.httpRequestMethod = builder.requestMethod;
        this.backoffPolicy = builder.backoffPolicy;
        checkArgument((this.url == null || this.url.getHost() == null || this.url.getHost().length() <= 0 || this.url.getPath() == null || this.url.getPath().length() <= 0) ? false : true, "The url must be non null and have a non-empty host and path.");
        checkArgument(this.executor != null, "Must provide a non-null executor service.");
        checkArgument(this.urlConnectionFactory != null, "Factories must be non-null.");
        if (RequestMethod.POST.equals(this.httpRequestMethod)) {
            addHeader("X-HTTP-Method-Override", RequestMethod.PUT.toString());
        }
    }

    @Deprecated
    public void setHttpRequestMethod(RequestMethod requestMethod) {
        this.httpRequestMethod = requestMethod;
        if (RequestMethod.POST.equals(requestMethod)) {
            addHeader("X-HTTP-Method-Override", RequestMethod.PUT.toString());
        }
    }

    public RequestMethod getHttpRequestMethod() {
        return this.httpRequestMethod;
    }

    public String addHeader(String str, String str2) {
        return this.headers.put(str, str2);
    }

    Map<String, String> getHeaders() {
        return this.headers;
    }

    BackoffPolicy getBackoffPolicy() {
        return this.backoffPolicy;
    }

    public synchronized long getNumBytesUploaded() {
        return this.numBytesUploaded;
    }

    public double getProgress() {
        long length = this.data.length();
        if (length == 0) {
            return this.uploadState.equals(UploadState.COMPLETE) ? 1.0d : 0.0d;
        }
        return getNumBytesUploaded() / length;
    }

    public ResponseMessage getResponse() {
        if (this.uploadResultFuture != null && this.uploadResultFuture.isDone()) {
            try {
                return this.uploadResultFuture.get();
            } catch (InterruptedException e2) {
                setUploadState(UploadState.CLIENT_ERROR);
                throw new IllegalStateException("InterruptedException even though upload is done (should never get here).");
            } catch (ExecutionException e3) {
                setUploadState(UploadState.CLIENT_ERROR);
            }
        }
        return null;
    }

    public synchronized UploadState getUploadState() {
        return this.uploadState;
    }

    public synchronized boolean isPaused() {
        return this.uploadState.equals(UploadState.PAUSED);
    }

    public synchronized void pause() {
        setUploadState(UploadState.PAUSED);
        if (this.progressNotifier != null) {
            this.progressNotifier.cancel();
        }
    }

    public void resume() {
        if (this.uploadState.equals(UploadState.PAUSED) || this.uploadState.equals(UploadState.NOT_STARTED)) {
            upload(true);
        }
    }

    public Future<ResponseMessage> start() {
        upload(false);
        return this.uploadResultFuture;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean isDone() {
        /*
            r1 = this;
            monitor-enter(r1)
            java.util.concurrent.Future<com.google.gdata.client.uploader.ResumableHttpFileUploader$ResponseMessage> r0 = r1.uploadResultFuture     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            java.util.concurrent.Future<com.google.gdata.client.uploader.ResumableHttpFileUploader$ResponseMessage> r0 = r1.uploadResultFuture     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isDone()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gdata.client.uploader.ResumableHttpFileUploader.isDone():boolean");
    }

    synchronized void addNumBytesUploaded(long j) {
        this.numBytesUploaded += j;
    }

    public UploadData getData() {
        return this.data;
    }

    URL getUrl() {
        return this.url;
    }

    void setUrl(URL url) {
        this.url = url;
    }

    long getChunkSize() {
        return this.chunkSize;
    }

    void sendCompletionNotification() {
        if (this.progressListener != null) {
            new NotificationTask(this, this.progressListener, this.progressNotifier).run();
        }
    }

    synchronized void setNumBytesUploaded(long j) {
        this.numBytesUploaded = j;
    }

    synchronized void setUploadState(UploadState uploadState) {
        this.uploadState = uploadState;
    }

    private void checkArgument(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    private void upload(boolean z) {
        setUploadState(UploadState.IN_PROGRESS);
        ResumableHttpUploadTask resumableHttpUploadTask = new ResumableHttpUploadTask(this.urlConnectionFactory, this, z);
        if (this.progressListener != null) {
            this.progressNotifier = new Timer();
            this.progressNotifier.schedule(new NotificationTask(this, this.progressListener, this.progressNotifier), 0L, this.progressIntervalMillis);
        }
        this.uploadResultFuture = this.executor.submit(resumableHttpUploadTask);
    }
}
