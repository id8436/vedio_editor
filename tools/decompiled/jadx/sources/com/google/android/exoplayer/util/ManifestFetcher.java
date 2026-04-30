package com.google.android.exoplayer.util;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer.upstream.Loader;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public class ManifestFetcher<T> implements Loader.Callback {
    final String contentId;
    private ManifestFetcher<T>.ManifestLoadable currentLoadable;
    private int enabledCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private IOException loadException;
    private int loadExceptionCount;
    private long loadExceptionTimestamp;
    private Loader loader;
    private volatile T manifest;
    private volatile long manifestLoadTimestamp;
    volatile String manifestUrl;
    final ManifestParser<T> parser;
    final String userAgent;

    public interface EventListener {
        void onManifestError(IOException iOException);

        void onManifestRefreshStarted();

        void onManifestRefreshed();
    }

    public interface ManifestCallback<T> {
        void onManifest(String str, T t);

        void onManifestError(String str, IOException iOException);
    }

    public ManifestFetcher(ManifestParser<T> manifestParser, String str, String str2, String str3) {
        this(manifestParser, str, str2, str3, null, null);
    }

    public ManifestFetcher(ManifestParser<T> manifestParser, String str, String str2, String str3, Handler handler, EventListener eventListener) {
        this.parser = manifestParser;
        this.contentId = str;
        this.manifestUrl = str2;
        this.userAgent = str3;
        this.eventHandler = handler;
        this.eventListener = eventListener;
    }

    public void updateManifestUrl(String str) {
        this.manifestUrl = str;
    }

    public void singleLoad(Looper looper, ManifestCallback<T> manifestCallback) {
        new SingleFetchHelper(looper, manifestCallback).startLoading();
    }

    public T getManifest() {
        return this.manifest;
    }

    public long getManifestLoadTimestamp() {
        return this.manifestLoadTimestamp;
    }

    public IOException getError() {
        if (this.loadExceptionCount <= 1) {
            return null;
        }
        return this.loadException;
    }

    public void enable() {
        int i = this.enabledCount;
        this.enabledCount = i + 1;
        if (i == 0) {
            this.loadExceptionCount = 0;
            this.loadException = null;
        }
    }

    public void disable() {
        int i = this.enabledCount - 1;
        this.enabledCount = i;
        if (i == 0 && this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
    }

    public void requestRefresh() {
        if (this.loadException == null || android.os.SystemClock.elapsedRealtime() >= this.loadExceptionTimestamp + getRetryDelayMillis(this.loadExceptionCount)) {
            if (this.loader == null) {
                this.loader = new Loader("manifestLoader");
            }
            if (!this.loader.isLoading()) {
                this.currentLoadable = new ManifestLoadable();
                this.loader.startLoading(this.currentLoadable, this);
                notifyManifestRefreshStarted();
            }
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        if (this.currentLoadable == loadable) {
            this.manifest = this.currentLoadable.result;
            this.manifestLoadTimestamp = android.os.SystemClock.elapsedRealtime();
            this.loadExceptionCount = 0;
            this.loadException = null;
            notifyManifestRefreshed();
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        if (this.currentLoadable == loadable) {
            this.loadExceptionCount++;
            this.loadExceptionTimestamp = android.os.SystemClock.elapsedRealtime();
            this.loadException = new IOException(iOException);
            notifyManifestError(this.loadException);
        }
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, 5000L);
    }

    private void notifyManifestRefreshStarted() {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.util.ManifestFetcher.1
                @Override // java.lang.Runnable
                public void run() {
                    ManifestFetcher.this.eventListener.onManifestRefreshStarted();
                }
            });
        }
    }

    private void notifyManifestRefreshed() {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.util.ManifestFetcher.2
                @Override // java.lang.Runnable
                public void run() {
                    ManifestFetcher.this.eventListener.onManifestRefreshed();
                }
            });
        }
    }

    private void notifyManifestError(final IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.util.ManifestFetcher.3
                @Override // java.lang.Runnable
                public void run() {
                    ManifestFetcher.this.eventListener.onManifestError(iOException);
                }
            });
        }
    }

    class SingleFetchHelper implements Loader.Callback {
        private final Looper callbackLooper;
        private final ManifestFetcher<T>.ManifestLoadable singleUseLoadable;
        private final Loader singleUseLoader = new Loader("manifestLoader:single");
        private final ManifestCallback<T> wrappedCallback;

        public SingleFetchHelper(Looper looper, ManifestCallback<T> manifestCallback) {
            this.callbackLooper = looper;
            this.wrappedCallback = manifestCallback;
            this.singleUseLoadable = new ManifestLoadable();
        }

        public void startLoading() {
            this.singleUseLoader.startLoading(this.callbackLooper, this.singleUseLoadable, this);
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(Loader.Loadable loadable) {
            try {
                ManifestFetcher.this.manifest = this.singleUseLoadable.result;
                ManifestFetcher.this.manifestLoadTimestamp = android.os.SystemClock.elapsedRealtime();
                this.wrappedCallback.onManifest(ManifestFetcher.this.contentId, this.singleUseLoadable.result);
            } finally {
                releaseLoader();
            }
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(Loader.Loadable loadable) {
            try {
                this.wrappedCallback.onManifestError(ManifestFetcher.this.contentId, new IOException("Load cancelled", new CancellationException()));
            } finally {
                releaseLoader();
            }
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Callback
        public void onLoadError(Loader.Loadable loadable, IOException iOException) {
            try {
                this.wrappedCallback.onManifestError(ManifestFetcher.this.contentId, iOException);
            } finally {
                releaseLoader();
            }
        }

        private void releaseLoader() {
            this.singleUseLoader.release();
        }
    }

    class ManifestLoadable implements Loader.Loadable {
        private static final int TIMEOUT_MILLIS = 10000;
        private volatile boolean isCanceled;
        volatile T result;

        private ManifestLoadable() {
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
            this.isCanceled = true;
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Loadable
        public boolean isLoadCanceled() {
            return this.isCanceled;
        }

        @Override // com.google.android.exoplayer.upstream.Loader.Loadable
        public void load() throws InterruptedException, IOException {
            InputStream inputStream = null;
            try {
                URLConnection uRLConnectionConfigureConnection = configureConnection(new URL(ManifestFetcher.this.manifestUrl));
                inputStream = uRLConnectionConfigureConnection.getInputStream();
                this.result = ManifestFetcher.this.parser.parse(inputStream, uRLConnectionConfigureConnection.getContentEncoding(), ManifestFetcher.this.contentId, Util.parseBaseUri(uRLConnectionConfigureConnection.getURL().toString()));
            } finally {
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        }

        private URLConnection configureConnection(URL url) throws IOException {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            uRLConnectionOpenConnection.setConnectTimeout(10000);
            uRLConnectionOpenConnection.setReadTimeout(10000);
            uRLConnectionOpenConnection.setDoOutput(false);
            uRLConnectionOpenConnection.setRequestProperty("User-Agent", ManifestFetcher.this.userAgent);
            uRLConnectionOpenConnection.connect();
            return uRLConnectionOpenConnection;
        }
    }
}
