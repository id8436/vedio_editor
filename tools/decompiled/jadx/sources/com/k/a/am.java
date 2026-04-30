package com.k.a;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Picasso.java */
/* JADX INFO: loaded from: classes3.dex */
public class am {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private w f3459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ExecutorService f3460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private k f3461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ap f3462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private as f3463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<bb> f3464g;
    private Bitmap.Config h;
    private boolean i;
    private boolean j;

    public am(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        this.f3458a = context.getApplicationContext();
    }

    public ak a() {
        Context context = this.f3458a;
        if (this.f3459b == null) {
            this.f3459b = bm.a(context);
        }
        if (this.f3461d == null) {
            this.f3461d = new ab(context);
        }
        if (this.f3460c == null) {
            this.f3460c = new av();
        }
        if (this.f3463f == null) {
            this.f3463f = as.f3478a;
        }
        be beVar = new be(this.f3461d);
        return new ak(context, new r(context, this.f3460c, ak.f3451a, this.f3459b, this.f3461d, beVar), this.f3461d, this.f3462e, this.f3463f, this.f3464g, beVar, this.h, this.i, this.j);
    }
}
