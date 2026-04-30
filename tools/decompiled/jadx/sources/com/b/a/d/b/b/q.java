package com.b.a.d.b.b;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.Log;

/* JADX INFO: compiled from: MemorySizeCalculator.java */
/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f838c;

    public q(Context context) {
        this(context, (ActivityManager) context.getSystemService("activity"), new r(context.getResources().getDisplayMetrics()));
    }

    q(Context context, ActivityManager activityManager, s sVar) {
        this.f838c = context;
        int iA = a(activityManager);
        int iA2 = sVar.a() * sVar.b() * 4;
        int i = iA2 * 4;
        int i2 = iA2 * 2;
        if (i2 + i <= iA) {
            this.f837b = i2;
            this.f836a = i;
        } else {
            int iRound = Math.round(iA / 6.0f);
            this.f837b = iRound * 2;
            this.f836a = iRound * 4;
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            Log.d("MemorySizeCalculator", "Calculated memory cache size: " + a(this.f837b) + " pool size: " + a(this.f836a) + " memory class limited? " + (i2 + i > iA) + " max size: " + a(iA) + " memoryClass: " + activityManager.getMemoryClass() + " isLowMemoryDevice: " + b(activityManager));
        }
    }

    public int a() {
        return this.f837b;
    }

    public int b() {
        return this.f836a;
    }

    private static int a(ActivityManager activityManager) {
        return Math.round((b(activityManager) ? 0.33f : 0.4f) * activityManager.getMemoryClass() * 1024 * 1024);
    }

    private String a(int i) {
        return Formatter.formatFileSize(this.f838c, i);
    }

    @TargetApi(19)
    private static boolean b(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return Build.VERSION.SDK_INT < 11;
    }
}
