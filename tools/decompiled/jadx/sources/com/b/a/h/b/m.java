package com.b.a.h.b;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: ViewTarget.java */
/* JADX INFO: loaded from: classes2.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f1203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<h> f1204b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private n f1205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Point f1206d;

    public m(View view) {
        this.f1203a = view;
    }

    private void a(int i, int i2) {
        Iterator<h> it = this.f1204b.iterator();
        while (it.hasNext()) {
            it.next().a(i, i2);
        }
        this.f1204b.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (!this.f1204b.isEmpty()) {
            int iC = c();
            int iB = b();
            if (a(iC) && a(iB)) {
                a(iC, iB);
                ViewTreeObserver viewTreeObserver = this.f1203a.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(this.f1205c);
                }
                this.f1205c = null;
            }
        }
    }

    public void a(h hVar) {
        int iC = c();
        int iB = b();
        if (a(iC) && a(iB)) {
            hVar.a(iC, iB);
            return;
        }
        if (!this.f1204b.contains(hVar)) {
            this.f1204b.add(hVar);
        }
        if (this.f1205c == null) {
            ViewTreeObserver viewTreeObserver = this.f1203a.getViewTreeObserver();
            this.f1205c = new n(this);
            viewTreeObserver.addOnPreDrawListener(this.f1205c);
        }
    }

    private int b() {
        ViewGroup.LayoutParams layoutParams = this.f1203a.getLayoutParams();
        if (a(this.f1203a.getHeight())) {
            return this.f1203a.getHeight();
        }
        if (layoutParams != null) {
            return a(layoutParams.height, true);
        }
        return 0;
    }

    private int c() {
        ViewGroup.LayoutParams layoutParams = this.f1203a.getLayoutParams();
        if (a(this.f1203a.getWidth())) {
            return this.f1203a.getWidth();
        }
        if (layoutParams != null) {
            return a(layoutParams.width, false);
        }
        return 0;
    }

    private int a(int i, boolean z) {
        if (i != -2) {
            return i;
        }
        Point pointD = d();
        return z ? pointD.y : pointD.x;
    }

    @TargetApi(13)
    private Point d() {
        if (this.f1206d != null) {
            return this.f1206d;
        }
        Display defaultDisplay = ((WindowManager) this.f1203a.getContext().getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 13) {
            this.f1206d = new Point();
            defaultDisplay.getSize(this.f1206d);
        } else {
            this.f1206d = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        }
        return this.f1206d;
    }

    private boolean a(int i) {
        return i > 0 || i == -2;
    }
}
