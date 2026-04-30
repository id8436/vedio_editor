package com.adobe.customextractor.SampleLoader;

import android.net.Uri;
import android.util.Log;
import com.adobe.customextractor.DataSource.DataSource;
import com.adobe.customextractor.Util.Allocate.Allocator;
import com.adobe.customextractor.extractor.Parser;

/* JADX INFO: loaded from: classes2.dex */
public class Loadable implements Runnable {
    private Allocator allocator;
    private DataSource dataSource;
    private SampleLoader loader;
    private long offset;
    private Parser parser;
    private Uri sourceUri;
    private int trackIndex;
    private String trackType;
    private boolean pendingLoadCancel = false;
    private boolean loadCancelled = false;
    private boolean loadFinished = false;

    public Loadable(SampleLoader sampleLoader, long j, DataSource dataSource, Uri uri, Allocator allocator, Parser parser, int i, String str) {
        this.loader = sampleLoader;
        this.offset = j;
        this.dataSource = dataSource;
        this.sourceUri = uri;
        this.allocator = allocator;
        this.parser = parser;
        this.trackIndex = i;
        this.trackType = str;
    }

    public void cancelLoading() {
        Log.i("LoaderThread", "Cancel Loading");
        this.pendingLoadCancel = true;
    }

    public boolean isLoadFinished() {
        return this.loadFinished;
    }

    public void setOffset(long j) {
        this.offset = j;
    }

    public boolean isLoadCancelled() {
        return this.loadCancelled;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:(5:92|6|(1:8)|9|10)|(4:94|12|(2:14|(8:107|16|98|(1:22)|90|18|19|20)(1:25))(1:106)|30)|105|(1:28)(2:(1:32)|33)|84|29|99|30) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d6, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d7, code lost:
    
        android.util.Log.e("LoaderThread", "datasource close exc " + r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long runSync() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.customextractor.SampleLoader.Loadable.runSync():long");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0157 A[ADDED_TO_REGION] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void run() {
        /*
            Method dump skipped, instruction units count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.customextractor.SampleLoader.Loadable.run():void");
    }
}
