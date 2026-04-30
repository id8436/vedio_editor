package com.facebook.drawee.g;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: GestureDetector.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f2181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final float f2182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f2184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f2185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f2186f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f2187g;

    public a(Context context) {
        this.f2182b = ViewConfiguration.get(context).getScaledTouchSlop();
        a();
    }

    public static a a(Context context) {
        return new a(context);
    }

    public void a() {
        this.f2181a = null;
        b();
    }

    public void b() {
        this.f2183c = false;
        this.f2184d = false;
    }

    public void a(b bVar) {
        this.f2181a = bVar;
    }

    public boolean c() {
        return this.f2183c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean a(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.f2183c = true;
                this.f2184d = true;
                this.f2185e = motionEvent.getEventTime();
                this.f2186f = motionEvent.getX();
                this.f2187g = motionEvent.getY();
                return true;
            case 1:
                this.f2183c = false;
                if (Math.abs(motionEvent.getX() - this.f2186f) > this.f2182b || Math.abs(motionEvent.getY() - this.f2187g) > this.f2182b) {
                    this.f2184d = false;
                }
                if (this.f2184d && motionEvent.getEventTime() - this.f2185e <= ViewConfiguration.getLongPressTimeout() && this.f2181a != null) {
                    this.f2181a.n();
                }
                this.f2184d = false;
                return true;
            case 2:
                if (Math.abs(motionEvent.getX() - this.f2186f) > this.f2182b || Math.abs(motionEvent.getY() - this.f2187g) > this.f2182b) {
                    this.f2184d = false;
                }
                return true;
            case 3:
                this.f2183c = false;
                this.f2184d = false;
                return true;
            default:
                return true;
        }
    }
}
