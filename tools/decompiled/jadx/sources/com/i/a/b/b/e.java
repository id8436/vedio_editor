package com.i.a.b.b;

import android.annotation.TargetApi;
import android.graphics.BitmapFactory;
import android.os.Build;
import com.i.a.b.a.f;
import com.i.a.b.a.i;

/* JADX INFO: compiled from: ImageDecodingInfo.java */
/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f3297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.i.a.b.a.e f3298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i f3299f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.i.a.b.d.c f3300g;
    private final Object h;
    private final boolean i;
    private final BitmapFactory.Options j = new BitmapFactory.Options();

    public e(String str, String str2, String str3, f fVar, i iVar, com.i.a.b.d.c cVar, com.i.a.b.d dVar) {
        this.f3294a = str;
        this.f3295b = str2;
        this.f3296c = str3;
        this.f3297d = fVar;
        this.f3298e = dVar.j();
        this.f3299f = iVar;
        this.f3300g = cVar;
        this.h = dVar.n();
        this.i = dVar.m();
        a(dVar.k(), this.j);
    }

    private void a(BitmapFactory.Options options, BitmapFactory.Options options2) {
        options2.inDensity = options.inDensity;
        options2.inDither = options.inDither;
        options2.inInputShareable = options.inInputShareable;
        options2.inJustDecodeBounds = options.inJustDecodeBounds;
        options2.inPreferredConfig = options.inPreferredConfig;
        options2.inPurgeable = options.inPurgeable;
        options2.inSampleSize = options.inSampleSize;
        options2.inScaled = options.inScaled;
        options2.inScreenDensity = options.inScreenDensity;
        options2.inTargetDensity = options.inTargetDensity;
        options2.inTempStorage = options.inTempStorage;
        if (Build.VERSION.SDK_INT >= 10) {
            b(options, options2);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            c(options, options2);
        }
    }

    @TargetApi(10)
    private void b(BitmapFactory.Options options, BitmapFactory.Options options2) {
        options2.inPreferQualityOverSpeed = options.inPreferQualityOverSpeed;
    }

    @TargetApi(11)
    private void c(BitmapFactory.Options options, BitmapFactory.Options options2) {
        options2.inBitmap = options.inBitmap;
        options2.inMutable = options.inMutable;
    }

    public String a() {
        return this.f3294a;
    }

    public String b() {
        return this.f3295b;
    }

    public f c() {
        return this.f3297d;
    }

    public com.i.a.b.a.e d() {
        return this.f3298e;
    }

    public i e() {
        return this.f3299f;
    }

    public com.i.a.b.d.c f() {
        return this.f3300g;
    }

    public Object g() {
        return this.h;
    }

    public boolean h() {
        return this.i;
    }

    public BitmapFactory.Options i() {
        return this.j;
    }
}
