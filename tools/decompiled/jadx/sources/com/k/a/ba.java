package com.k.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.gdata.data.gtt.CompletedCategory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: RequestCreator.java */
/* JADX INFO: loaded from: classes3.dex */
public class ba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f3502a = new AtomicInteger();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ak f3503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final az f3504c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3507f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3508g;
    private int h;
    private int i;
    private int j;
    private Drawable k;
    private Drawable l;
    private Object m;

    ba(ak akVar, Uri uri, int i) {
        this.f3507f = true;
        if (akVar.m) {
            throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
        }
        this.f3503b = akVar;
        this.f3504c = new az(uri, i, akVar.j);
    }

    ba() {
        this.f3507f = true;
        this.f3503b = null;
        this.f3504c = new az(null, 0, null);
    }

    public ba a(int i) {
        if (!this.f3507f) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        }
        if (i == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        }
        if (this.k != null) {
            throw new IllegalStateException("Placeholder image already set.");
        }
        this.f3508g = i;
        return this;
    }

    public ba a(Drawable drawable) {
        if (!this.f3507f) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        }
        if (this.f3508g != 0) {
            throw new IllegalStateException("Placeholder image already set.");
        }
        this.k = drawable;
        return this;
    }

    public ba a() {
        this.f3506e = true;
        return this;
    }

    ba b() {
        this.f3506e = false;
        return this;
    }

    public ba a(int i, int i2) {
        this.f3504c.a(i, i2);
        return this;
    }

    public ba c() {
        this.f3504c.c();
        return this;
    }

    public ba a(bi biVar) {
        this.f3504c.a(biVar);
        return this;
    }

    public void a(ImageView imageView) {
        a(imageView, (m) null);
    }

    public void a(ImageView imageView, m mVar) {
        Bitmap bitmapB;
        long jNanoTime = System.nanoTime();
        bm.a();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (!this.f3504c.a()) {
            this.f3503b.a(imageView);
            if (this.f3507f) {
                au.a(imageView, d());
                return;
            }
            return;
        }
        if (this.f3506e) {
            if (this.f3504c.b()) {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width == 0 || height == 0) {
                if (this.f3507f) {
                    au.a(imageView, d());
                }
                this.f3503b.a(imageView, new q(this, imageView, mVar));
                return;
            }
            this.f3504c.a(width, height);
        }
        ax axVarA = a(jNanoTime);
        String strA = bm.a(axVarA);
        if (af.a(this.i) && (bitmapB = this.f3503b.b(strA)) != null) {
            this.f3503b.a(imageView);
            au.a(imageView, this.f3503b.f3453c, bitmapB, aq.MEMORY, this.f3505d, this.f3503b.k);
            if (this.f3503b.l) {
                bm.a("Main", CompletedCategory.Label.COMPLETED, axVarA.b(), "from " + aq.MEMORY);
            }
            if (mVar != null) {
                mVar.a();
                return;
            }
            return;
        }
        if (this.f3507f) {
            au.a(imageView, d());
        }
        this.f3503b.a((a) new aa(this.f3503b, imageView, axVarA, this.i, this.j, this.h, this.l, strA, this.m, mVar, this.f3505d));
    }

    private Drawable d() {
        return this.f3508g != 0 ? this.f3503b.f3453c.getResources().getDrawable(this.f3508g) : this.k;
    }

    private ax a(long j) {
        int andIncrement = f3502a.getAndIncrement();
        ax axVarD = this.f3504c.d();
        axVarD.f3487a = andIncrement;
        axVarD.f3488b = j;
        boolean z = this.f3503b.l;
        if (z) {
            bm.a("Main", "created", axVarD.b(), axVarD.toString());
        }
        ax axVarA = this.f3503b.a(axVarD);
        if (axVarA != axVarD) {
            axVarA.f3487a = andIncrement;
            axVarA.f3488b = j;
            if (z) {
                bm.a("Main", "changed", axVarA.a(), "into " + axVarA);
            }
        }
        return axVarA;
    }
}
