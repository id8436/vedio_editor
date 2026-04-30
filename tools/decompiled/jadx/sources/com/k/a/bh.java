package com.k.a;

import com.google.gdata.data.Category;
import java.io.PrintWriter;

/* JADX INFO: compiled from: StatsSnapshot.java */
/* JADX INFO: loaded from: classes3.dex */
public class bh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f3527d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f3529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f3530g;
    public final long h;
    public final long i;
    public final long j;
    public final int k;
    public final int l;
    public final int m;
    public final long n;

    public bh(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.f3524a = i;
        this.f3525b = i2;
        this.f3526c = j;
        this.f3527d = j2;
        this.f3528e = j3;
        this.f3529f = j4;
        this.f3530g = j5;
        this.h = j6;
        this.i = j7;
        this.j = j8;
        this.k = i3;
        this.l = i4;
        this.m = i5;
        this.n = j9;
    }

    public void a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f3524a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f3525b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f3525b / this.f3524a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f3526c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f3527d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f3528e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f3529f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f3530g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f3524a + ", size=" + this.f3525b + ", cacheHits=" + this.f3526c + ", cacheMisses=" + this.f3527d + ", downloadCount=" + this.k + ", totalDownloadSize=" + this.f3528e + ", averageDownloadSize=" + this.h + ", totalOriginalBitmapSize=" + this.f3529f + ", totalTransformedBitmapSize=" + this.f3530g + ", averageOriginalBitmapSize=" + this.i + ", averageTransformedBitmapSize=" + this.j + ", originalBitmapCount=" + this.l + ", transformedBitmapCount=" + this.m + ", timeStamp=" + this.n + Category.SCHEME_SUFFIX;
    }
}
