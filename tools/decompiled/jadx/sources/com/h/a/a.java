package com.h.a;

import android.graphics.Typeface;
import android.util.SparseArray;

/* JADX INFO: compiled from: TypefaceCollection.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseArray<Typeface> f3183a;

    private a() {
        this.f3183a = new SparseArray<>(4);
    }

    Typeface a(int i) {
        c(i);
        return this.f3183a.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
                return;
            default:
                throw new IllegalArgumentException("Invalid typeface style! Have to be one of Typeface.NORMAL, Typeface.BOLD, Typeface.ITALIC or Typeface.BOLD_ITALIC");
        }
    }
}
