package com.getbase.floatingactionbutton;

import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: TouchDelegateGroup.java */
/* JADX INFO: loaded from: classes2.dex */
public class p extends TouchDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Rect f3136a = new Rect();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<TouchDelegate> f3137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TouchDelegate f3138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3139d;

    public p(View view) {
        super(f3136a, view);
        this.f3137b = new ArrayList<>();
    }

    public void a(@NonNull TouchDelegate touchDelegate) {
        this.f3137b.add(touchDelegate);
    }

    public void a() {
        this.f3137b.clear();
        this.f3138c = null;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        TouchDelegate touchDelegate;
        if (!this.f3139d) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                for (int i = 0; i < this.f3137b.size(); i++) {
                    TouchDelegate touchDelegate2 = this.f3137b.get(i);
                    if (touchDelegate2.onTouchEvent(motionEvent)) {
                        this.f3138c = touchDelegate2;
                        return true;
                    }
                }
                touchDelegate = null;
                break;
            case 1:
            case 3:
                touchDelegate = this.f3138c;
                this.f3138c = null;
                break;
            case 2:
                touchDelegate = this.f3138c;
                break;
            default:
                touchDelegate = null;
                break;
        }
        return touchDelegate != null && touchDelegate.onTouchEvent(motionEvent);
    }

    public void a(boolean z) {
        this.f3139d = z;
    }
}
