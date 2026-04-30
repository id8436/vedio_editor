package com.facebook.d.j;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.facebook.d.d.p;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: StatFsHelper.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f1971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f1972b = TimeUnit.MINUTES.toMillis(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile File f1974d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile File f1976f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("lock")
    private long f1977g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile StatFs f1973c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile StatFs f1975e = null;
    private volatile boolean i = false;
    private final Lock h = new ReentrantLock();

    public static synchronized a a() {
        if (f1971a == null) {
            f1971a = new a();
        }
        return f1971a;
    }

    protected a() {
    }

    private void b() {
        if (!this.i) {
            this.h.lock();
            try {
                if (!this.i) {
                    this.f1974d = Environment.getDataDirectory();
                    this.f1976f = Environment.getExternalStorageDirectory();
                    d();
                    this.i = true;
                }
            } finally {
                this.h.unlock();
            }
        }
    }

    public boolean a(b bVar, long j) {
        b();
        long jA = a(bVar);
        return jA <= 0 || jA < j;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long a(b bVar) {
        long blockSize;
        long availableBlocks;
        b();
        c();
        StatFs statFs = bVar == b.INTERNAL ? this.f1973c : this.f1975e;
        if (statFs != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return availableBlocks * blockSize;
        }
        return 0L;
    }

    private void c() {
        if (this.h.tryLock()) {
            try {
                if (SystemClock.uptimeMillis() - this.f1977g > f1972b) {
                    d();
                }
            } finally {
                this.h.unlock();
            }
        }
    }

    @GuardedBy("lock")
    private void d() {
        this.f1973c = a(this.f1973c, this.f1974d);
        this.f1975e = a(this.f1975e, this.f1976f);
        this.f1977g = SystemClock.uptimeMillis();
    }

    private StatFs a(@Nullable StatFs statFs, @Nullable File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            if (statFs == null) {
                statFs = a(file.getAbsolutePath());
            } else {
                statFs.restat(file.getAbsolutePath());
            }
            return statFs;
        } catch (IllegalArgumentException e2) {
            return null;
        } catch (Throwable th) {
            throw p.b(th);
        }
    }

    protected static StatFs a(String str) {
        return new StatFs(str);
    }
}
