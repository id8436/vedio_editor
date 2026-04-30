package com.adobe.cliputils;

import android.app.ActivityManager;
import android.content.Context;
import android.net.TrafficStats;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;

/* JADX INFO: loaded from: classes.dex */
public class ClipProfiler {
    private Context context;
    private boolean currentRunStarted;
    private double maxRunTime;
    private int maxRunTimeRun;
    private MemoryState memoryStateAtBeginingOfCurrentRun;
    private MemoryState memoryStateAtBeginingOfFirstRun;
    private MemoryState memoryStateAtEnd;
    private long networkReceivedBytesTillTheBeginingOfCurrentRun;
    private long networkReceivedBytesTillTheBeginingOfFirstRun;
    private long networkReceivedBytesTillTheEnd;
    private long networkTransferedBytesTillTheBeginingOfCurrentRun;
    private long networkTransferedBytesTillTheBeginingOfFirstRun;
    private long networkTransferedBytesTillTheEnd;
    private int processId;
    private String profilerName;
    private int profilers = 0;
    private long runStartTime;
    private double runTime;
    private int runs;
    private StorageUsage storageUsageAtTheBeginingOfCurrentRun;
    private StorageUsage storageUsageAtTheBeginingOfFirstRun;
    private StorageUsage storageUsageAtTheEnd;
    public static int profileTime = 1;
    public static int profileMemory = 2;
    public static int profileStorage = 4;
    public static int profileNetworkDownloadData = 8;
    public static int profileNetworkUploadData = 16;
    public static int profileNetworkData = profileNetworkDownloadData | profileNetworkUploadData;
    public static int profileAll = ((profileTime | profileMemory) | profileStorage) | profileNetworkData;

    class MemoryState {
        long freeSystemMemorySize;
        long processMemoryFreeSize;
        long processMemoryUsageSize;
        long totalSystemMemorySize;

        public MemoryState(long j, long j2, long j3, long j4) {
            this.totalSystemMemorySize = j;
            this.freeSystemMemorySize = j2;
            this.processMemoryUsageSize = j3;
            this.processMemoryFreeSize = j4;
        }
    }

    class StorageUsage {
        long freeStorageSpace;
        long totalStorageSpace;

        public StorageUsage(long j, long j2) {
            this.totalStorageSpace = j;
            this.freeStorageSpace = j2;
        }
    }

    public ClipProfiler(Context context, String str, int... iArr) {
        this.context = context;
        this.profilerName = str;
        for (int i : iArr) {
            this.profilers |= i;
        }
        this.runs = 0;
        this.currentRunStarted = false;
        this.runTime = 0.0d;
        this.maxRunTime = 0.0d;
        this.maxRunTimeRun = -1;
        this.runStartTime = 0L;
        this.memoryStateAtBeginingOfFirstRun = null;
        this.memoryStateAtBeginingOfCurrentRun = null;
        this.memoryStateAtEnd = null;
        this.networkReceivedBytesTillTheBeginingOfFirstRun = 0L;
        this.networkReceivedBytesTillTheBeginingOfCurrentRun = 0L;
        this.networkReceivedBytesTillTheEnd = 0L;
        this.networkTransferedBytesTillTheBeginingOfFirstRun = 0L;
        this.networkTransferedBytesTillTheBeginingOfCurrentRun = 0L;
        this.networkTransferedBytesTillTheEnd = 0L;
        this.storageUsageAtTheBeginingOfFirstRun = null;
        this.storageUsageAtTheBeginingOfCurrentRun = null;
        this.storageUsageAtTheEnd = null;
        this.processId = Process.myUid();
    }

    public void start() {
        if (this.currentRunStarted) {
            ClipLogger.e(this.profilerName, "Invalid state. Looks like stop was NOT called");
            return;
        }
        this.currentRunStarted = true;
        if ((this.profilers & profileTime) != 0) {
            this.runStartTime = System.nanoTime();
        }
        if ((this.profilers & profileMemory) != 0) {
            if (this.runs == 0) {
                this.memoryStateAtBeginingOfFirstRun = getCurrentMemoryState();
                this.memoryStateAtBeginingOfCurrentRun = this.memoryStateAtBeginingOfFirstRun;
            } else {
                this.memoryStateAtBeginingOfCurrentRun = getCurrentMemoryState();
            }
            this.memoryStateAtEnd = null;
        }
        if ((this.profilers & profileNetworkDownloadData) != 0) {
            if (this.runs == 0) {
                this.networkReceivedBytesTillTheBeginingOfFirstRun = TrafficStats.getUidRxBytes(this.processId);
                this.networkReceivedBytesTillTheBeginingOfCurrentRun = this.networkReceivedBytesTillTheBeginingOfFirstRun;
            } else {
                this.networkReceivedBytesTillTheBeginingOfCurrentRun = TrafficStats.getUidRxBytes(this.processId);
            }
            this.networkReceivedBytesTillTheEnd = this.networkReceivedBytesTillTheBeginingOfCurrentRun;
        }
        if ((this.profilers & profileNetworkUploadData) != 0) {
            if (this.runs == 0) {
                this.networkTransferedBytesTillTheBeginingOfFirstRun = TrafficStats.getUidTxBytes(this.processId);
                this.networkTransferedBytesTillTheBeginingOfCurrentRun = this.networkTransferedBytesTillTheBeginingOfFirstRun;
            } else {
                this.networkTransferedBytesTillTheBeginingOfCurrentRun = TrafficStats.getUidTxBytes(this.processId);
            }
            this.networkTransferedBytesTillTheEnd = this.networkTransferedBytesTillTheBeginingOfCurrentRun;
        }
        if ((this.profilers & profileStorage) != 0) {
            if (this.runs == 0) {
                this.storageUsageAtTheBeginingOfFirstRun = getCurrentStorageUsage();
                this.storageUsageAtTheBeginingOfCurrentRun = this.storageUsageAtTheBeginingOfFirstRun;
            } else {
                this.storageUsageAtTheBeginingOfCurrentRun = getCurrentStorageUsage();
            }
            this.storageUsageAtTheEnd = null;
        }
    }

    public void stop() {
        if (!this.currentRunStarted) {
            ClipLogger.e(this.profilerName, "Invalid state. Looks like start was NOT called");
            return;
        }
        if ((this.profilers & profileTime) != 0) {
            double dNanoTime = (System.nanoTime() - this.runStartTime) / 1000.0d;
            this.runTime += dNanoTime;
            if (this.maxRunTime < dNanoTime) {
                this.maxRunTime = dNanoTime;
                this.maxRunTimeRun = this.runs;
            }
            this.runStartTime = 0L;
        }
        if ((this.profilers & profileMemory) != 0) {
            this.memoryStateAtEnd = getCurrentMemoryState();
        }
        if ((this.profilers & profileNetworkDownloadData) != 0) {
            this.networkReceivedBytesTillTheEnd = TrafficStats.getUidRxBytes(this.processId);
        }
        if ((this.profilers & profileNetworkUploadData) != 0) {
            this.networkTransferedBytesTillTheEnd = TrafficStats.getUidTxBytes(this.processId);
        }
        if ((this.profilers & profileStorage) != 0) {
            this.storageUsageAtTheEnd = getCurrentStorageUsage();
        }
        this.currentRunStarted = false;
        this.runs++;
    }

    public void printInfo() {
        if ((this.profilers & profileTime) != 0) {
            if (this.runs == 0) {
                ClipLogger.w(this.profilerName, "Time profiler never used. No run!!!!");
            } else if (this.runs == 1) {
                ClipLogger.i(this.profilerName, "Total time taken: " + timeMSToString(this.runTime));
            } else {
                ClipLogger.i(this.profilerName, "Total time taken: " + timeMSToString(this.runTime) + " " + this.runs + " runs, avg. perf: " + timeMSToString(this.runTime / ((double) this.runs)) + ", max time in a run(" + this.maxRunTimeRun + "): " + timeMSToString(this.maxRunTime));
            }
        }
        if ((this.profilers & profileMemory) != 0) {
            if (this.runs == 0) {
                ClipLogger.w(this.profilerName, "Memory profiler never used. No run!!!!");
            } else if (this.runs == 1) {
                if (this.memoryStateAtBeginingOfFirstRun == null || this.memoryStateAtEnd == null) {
                    ClipLogger.e(this.profilerName, "Something is wrong, needs attention!!!!!");
                } else {
                    ClipLogger.i(this.profilerName, "Memory usage: Total: " + bytesToString(this.memoryStateAtBeginingOfFirstRun.totalSystemMemorySize) + ", Free at begining: " + bytesToString(this.memoryStateAtBeginingOfFirstRun.freeSystemMemorySize) + " - end: " + bytesToString(this.memoryStateAtEnd.freeSystemMemorySize) + ", Used by process at begining: " + bytesToString(this.memoryStateAtBeginingOfFirstRun.processMemoryUsageSize) + " - end: " + bytesToString(this.memoryStateAtEnd.processMemoryUsageSize) + " - change: " + bytesToString(this.memoryStateAtEnd.processMemoryUsageSize - this.memoryStateAtBeginingOfFirstRun.processMemoryUsageSize));
                }
            } else if (this.memoryStateAtBeginingOfFirstRun == null || this.memoryStateAtBeginingOfCurrentRun == null || this.memoryStateAtEnd == null) {
                ClipLogger.e(this.profilerName, "Something is very very wrong, needs attention!!!!!");
            } else {
                ClipLogger.i(this.profilerName, "Memory usage: Total: " + bytesToString(this.memoryStateAtBeginingOfFirstRun.totalSystemMemorySize) + ", Free at begining: " + bytesToString(this.memoryStateAtBeginingOfFirstRun.freeSystemMemorySize) + ", - last run: " + bytesToString(this.memoryStateAtBeginingOfCurrentRun.freeSystemMemorySize) + " - end: " + bytesToString(this.memoryStateAtEnd.freeSystemMemorySize) + ", Used by process at begining: " + bytesToString(this.memoryStateAtBeginingOfFirstRun.processMemoryUsageSize) + ", - last run: " + bytesToString(this.memoryStateAtBeginingOfCurrentRun.processMemoryUsageSize) + " - end: " + bytesToString(this.memoryStateAtEnd.processMemoryUsageSize) + " - change: " + bytesToString(this.memoryStateAtEnd.processMemoryUsageSize - this.memoryStateAtBeginingOfFirstRun.processMemoryUsageSize));
            }
        }
        if ((this.profilers & profileNetworkDownloadData) != 0) {
            if (this.runs == 0) {
                ClipLogger.w(this.profilerName, "Network download data profiler never used. No run!!!!");
            } else if (this.runs == 1) {
                ClipLogger.i(this.profilerName, "Total downloaded data: " + Long.toString(this.networkReceivedBytesTillTheEnd - this.networkReceivedBytesTillTheBeginingOfFirstRun));
            } else {
                ClipLogger.i(this.profilerName, "Total downloaded data from first run: " + bytesToString(this.networkReceivedBytesTillTheEnd - this.networkReceivedBytesTillTheBeginingOfFirstRun) + " Total downloaded data from last run: " + bytesToString(this.networkReceivedBytesTillTheEnd - this.networkReceivedBytesTillTheBeginingOfCurrentRun));
            }
        }
        if ((this.profilers & profileNetworkUploadData) != 0) {
            if (this.runs == 0) {
                ClipLogger.w(this.profilerName, "Network upload data profiles never used. No run!!!!");
            } else if (this.runs == 1) {
                ClipLogger.i(this.profilerName, "Total uploaded data: " + bytesToString(this.networkTransferedBytesTillTheEnd - this.networkTransferedBytesTillTheBeginingOfFirstRun));
            } else {
                ClipLogger.i(this.profilerName, "Total uploaded data from first run: " + bytesToString(this.networkTransferedBytesTillTheEnd - this.networkTransferedBytesTillTheBeginingOfFirstRun) + " Total uploaded data from last run: " + bytesToString(this.networkTransferedBytesTillTheEnd - this.networkTransferedBytesTillTheBeginingOfCurrentRun));
            }
        }
        if ((this.profilers & profileStorage) != 0) {
            if (this.runs == 0) {
                ClipLogger.w(this.profilerName, "Storage profiler never used. No run!!!!");
                return;
            }
            if (this.runs == 1) {
                if (this.storageUsageAtTheBeginingOfFirstRun == null || this.storageUsageAtTheEnd == null) {
                    ClipLogger.e(this.profilerName, "Something is wrong, needs some attention!!!!!");
                    return;
                } else {
                    ClipLogger.i(this.profilerName, "Storage usage: Total: " + bytesToString(this.storageUsageAtTheBeginingOfFirstRun.totalStorageSpace) + ", Free at begining: " + bytesToString(this.storageUsageAtTheBeginingOfFirstRun.freeStorageSpace) + " - end: " + bytesToString(this.storageUsageAtTheEnd.freeStorageSpace) + " - change: " + bytesToString(this.storageUsageAtTheBeginingOfFirstRun.freeStorageSpace - this.storageUsageAtTheEnd.freeStorageSpace));
                    return;
                }
            }
            if (this.storageUsageAtTheBeginingOfFirstRun == null || this.storageUsageAtTheBeginingOfCurrentRun == null || this.storageUsageAtTheEnd == null) {
                ClipLogger.e(this.profilerName, "Something is very very wrong, needs some attention!!!!!");
            } else {
                ClipLogger.i(this.profilerName, "Storage usage: Total: " + bytesToString(this.storageUsageAtTheBeginingOfFirstRun.totalStorageSpace) + ", Free at begining: " + bytesToString(this.storageUsageAtTheBeginingOfFirstRun.freeStorageSpace) + " - last run: " + bytesToString(this.storageUsageAtTheBeginingOfCurrentRun.freeStorageSpace) + " - end: " + bytesToString(this.storageUsageAtTheEnd.freeStorageSpace) + " - change: " + bytesToString(this.storageUsageAtTheBeginingOfFirstRun.freeStorageSpace - this.storageUsageAtTheEnd.freeStorageSpace));
            }
        }
    }

    private MemoryState getCurrentMemoryState() {
        ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        Runtime runtime = Runtime.getRuntime();
        return new MemoryState(runtime.totalMemory(), runtime.freeMemory(), memoryInfo.totalMem, memoryInfo.availMem);
    }

    private StorageUsage getCurrentStorageUsage() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return new StorageUsage(statFs.getBlockCountLong() * statFs.getBlockSizeLong(), statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong());
    }

    private String bytesToString(long j) {
        if (j < 1024) {
            return Long.toString(j) + " bytes";
        }
        if (j < 1048576) {
            return Float.toString(j / 1024.0f) + " KB";
        }
        if (j < 1048576) {
            return Float.toString(j / 1048576.0f) + " MB";
        }
        return Float.toString(j / 1048576.0f) + " GB";
    }

    private String timeMSToString(double d2) {
        if (d2 < 1000.0d) {
            return Long.toString((long) d2) + " Ms";
        }
        if (d2 < 1000000.0d) {
            return Double.toString(d2 / 1000.0d) + " ms";
        }
        if (d2 < 6.0E7d) {
            return Double.toString(d2 / 1000000.0d) + " sec";
        }
        return Double.toString(d2 / 6.0E7d) + " min";
    }
}
