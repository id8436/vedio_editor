package com.facebook.imagepipeline.k;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: MediaVariationsIndexDatabase.java */
/* JADX INFO: loaded from: classes2.dex */
class bo implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.facebook.imagepipeline.h.d f2692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ com.facebook.c.a.f f2693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ bm f2694d;

    bo(bm bmVar, String str, com.facebook.imagepipeline.h.d dVar, com.facebook.c.a.f fVar) {
        this.f2694d = bmVar;
        this.f2691a = str;
        this.f2692b = dVar;
        this.f2693c = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        SQLiteDatabase sQLiteDatabaseA = this.f2694d.f2686c.a();
        try {
            sQLiteDatabaseA.beginTransaction();
            ContentValues contentValues = new ContentValues();
            contentValues.put("media_id", this.f2691a);
            contentValues.put("width", Integer.valueOf(this.f2692b.g()));
            contentValues.put("height", Integer.valueOf(this.f2692b.h()));
            contentValues.put("cache_key", this.f2693c.a());
            contentValues.put("resource_id", com.facebook.c.a.g.b(this.f2693c));
            sQLiteDatabaseA.insertOrThrow("media_variations_index", null, contentValues);
            sQLiteDatabaseA.setTransactionSuccessful();
        } catch (Exception e2) {
            com.facebook.d.e.a.b(bm.f2684a, e2, "Error writing for %s", this.f2691a);
        } finally {
            sQLiteDatabaseA.endTransaction();
        }
    }
}
