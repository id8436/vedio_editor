package com.facebook.imagepipeline.k;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: MediaVariationsIndexDatabase.java */
/* JADX INFO: loaded from: classes.dex */
class bq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private bp f2696b;

    /* synthetic */ bq(Context context, bn bnVar) {
        this(context);
    }

    private bq(Context context) {
        this.f2695a = context;
    }

    public synchronized SQLiteDatabase a() {
        if (this.f2696b == null) {
            this.f2696b = new bp(this.f2695a);
        }
        return this.f2696b.getWritableDatabase();
    }
}
