package com.crashlytics.android.core;

import c.a.a.a.a.b.k;
import c.a.a.a.a.b.l;
import c.a.a.a.f;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class ReportUploader {
    private static final String CLS_FILE_EXT = ".cls";
    private final CreateReportSpiCall createReportCall;
    private final Object fileAccessLock = new Object();
    private Thread uploadThread;
    private static final FilenameFilter crashFileFilter = new FilenameFilter() { // from class: com.crashlytics.android.core.ReportUploader.1
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".cls") && !str.contains("Session");
        }
    };
    static final Map<String, String> HEADER_INVALID_CLS_FILE = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
    private static final short[] RETRY_INTERVALS = {10, 20, 30, 60, 120, 300};

    public ReportUploader(CreateReportSpiCall createReportSpiCall) {
        if (createReportSpiCall == null) {
            throw new IllegalArgumentException("createReportCall must not be null.");
        }
        this.createReportCall = createReportSpiCall;
    }

    public void uploadReports() {
        uploadReports(0.0f);
    }

    public synchronized void uploadReports(float f2) {
        if (this.uploadThread == null) {
            this.uploadThread = new Thread(new Worker(f2), "Crashlytics Report Uploader");
            this.uploadThread.start();
        }
    }

    boolean isUploading() {
        return this.uploadThread != null;
    }

    boolean forceUpload(Report report) {
        boolean zInvoke;
        boolean z = false;
        synchronized (this.fileAccessLock) {
            try {
                zInvoke = this.createReportCall.invoke(new CreateReportRequest(new k().a(CrashlyticsCore.getInstance().getContext()), report));
                f.h().c(CrashlyticsCore.TAG, "Crashlytics report upload " + (zInvoke ? "complete: " : "FAILED: ") + report.getFileName());
            } catch (Exception e2) {
                f.h().e(CrashlyticsCore.TAG, "Error occurred sending report " + report, e2);
            }
            if (zInvoke) {
                report.remove();
                z = true;
            }
        }
        return z;
    }

    List<Report> findReports() {
        File[] fileArrListFiles;
        f.h().a(CrashlyticsCore.TAG, "Checking for crash reports...");
        synchronized (this.fileAccessLock) {
            fileArrListFiles = CrashlyticsCore.getInstance().getSdkDirectory().listFiles(crashFileFilter);
        }
        LinkedList linkedList = new LinkedList();
        for (File file : fileArrListFiles) {
            f.h().a(CrashlyticsCore.TAG, "Found crash report " + file.getPath());
            linkedList.add(new SessionReport(file));
        }
        if (linkedList.isEmpty()) {
            f.h().a(CrashlyticsCore.TAG, "No reports found.");
        }
        return linkedList;
    }

    class Worker extends l {
        private final float delay;

        Worker(float f2) {
            this.delay = f2;
        }

        @Override // c.a.a.a.a.b.l
        public void onRun() {
            try {
                attemptUploadWithRetry();
            } catch (Exception e2) {
                f.h().e(CrashlyticsCore.TAG, "An unexpected error occurred while attempting to upload crash reports.", e2);
            }
            ReportUploader.this.uploadThread = null;
        }

        private void attemptUploadWithRetry() {
            f.h().a(CrashlyticsCore.TAG, "Starting report processing in " + this.delay + " second(s)...");
            if (this.delay > 0.0f) {
                try {
                    Thread.sleep((long) (this.delay * 1000.0f));
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            CrashlyticsCore crashlyticsCore = CrashlyticsCore.getInstance();
            CrashlyticsUncaughtExceptionHandler handler = crashlyticsCore.getHandler();
            List<Report> listFindReports = ReportUploader.this.findReports();
            if (!handler.isHandlingException()) {
                if (!listFindReports.isEmpty() && !crashlyticsCore.canSendWithUserApproval()) {
                    f.h().a(CrashlyticsCore.TAG, "User declined to send. Removing " + listFindReports.size() + " Report(s).");
                    Iterator<Report> it = listFindReports.iterator();
                    while (it.hasNext()) {
                        it.next().remove();
                    }
                    return;
                }
                List<Report> list = listFindReports;
                int i = 0;
                while (!list.isEmpty() && !CrashlyticsCore.getInstance().getHandler().isHandlingException()) {
                    f.h().a(CrashlyticsCore.TAG, "Attempting to send " + list.size() + " report(s)");
                    Iterator<Report> it2 = list.iterator();
                    while (it2.hasNext()) {
                        ReportUploader.this.forceUpload(it2.next());
                    }
                    List<Report> listFindReports2 = ReportUploader.this.findReports();
                    if (listFindReports2.isEmpty()) {
                        list = listFindReports2;
                    } else {
                        int i2 = i + 1;
                        long j = ReportUploader.RETRY_INTERVALS[Math.min(i, ReportUploader.RETRY_INTERVALS.length - 1)];
                        f.h().a(CrashlyticsCore.TAG, "Report submisson: scheduling delayed retry in " + j + " seconds");
                        try {
                            Thread.sleep(j * 1000);
                            i = i2;
                            list = listFindReports2;
                        } catch (InterruptedException e3) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                    }
                }
            }
        }
    }
}
