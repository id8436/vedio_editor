package com.facebook.imagepipeline.k;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: LocalContentUriThumbnailFetchProducer.java */
/* JADX INFO: loaded from: classes.dex */
public class au extends ay implements df<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f2637a = au.class;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f2638b = {"_id", "_data"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f2639c = {"_data"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Rect f2640d = new Rect(0, 0, 512, 384);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Rect f2641e = new Rect(0, 0, 96, 96);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ContentResolver f2642f;

    public au(Executor executor, com.facebook.imagepipeline.memory.aj ajVar, ContentResolver contentResolver) {
        super(executor, ajVar);
        this.f2642f = contentResolver;
    }

    @Override // com.facebook.imagepipeline.k.df
    public boolean a(com.facebook.imagepipeline.d.d dVar) {
        return dg.a(f2640d.width(), f2640d.height(), dVar);
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.l.a aVar) throws IOException {
        com.facebook.imagepipeline.h.d dVarA;
        Uri uriB = aVar.b();
        if (!com.facebook.d.m.f.e(uriB) || (dVarA = a(uriB, aVar.f())) == null) {
            return null;
        }
        return dVarA;
    }

    @Nullable
    private com.facebook.imagepipeline.h.d a(Uri uri, com.facebook.imagepipeline.d.d dVar) throws IOException {
        com.facebook.imagepipeline.h.d dVarA;
        Cursor cursorQuery = this.f2642f.query(uri, f2638b, null, null, null);
        if (cursorQuery == null) {
            return null;
        }
        try {
            if (cursorQuery.getCount() == 0) {
                return null;
            }
            cursorQuery.moveToFirst();
            String string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
            if (dVar == null || (dVarA = a(dVar, cursorQuery.getInt(cursorQuery.getColumnIndex("_id")))) == null) {
                return null;
            }
            dVarA.c(b(string));
            return dVarA;
        } finally {
            cursorQuery.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.d.d r8, int r9) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            int r1 = b(r8)
            if (r1 != 0) goto L8
        L7:
            return r0
        L8:
            android.content.ContentResolver r2 = r7.f2642f     // Catch: java.lang.Throwable -> L51
            long r4 = (long) r9     // Catch: java.lang.Throwable -> L51
            java.lang.String[] r3 = com.facebook.imagepipeline.k.au.f2639c     // Catch: java.lang.Throwable -> L51
            android.database.Cursor r1 = android.provider.MediaStore.Images.Thumbnails.queryMiniThumbnail(r2, r4, r1, r3)     // Catch: java.lang.Throwable -> L51
            if (r1 != 0) goto L19
            if (r1 == 0) goto L7
            r1.close()
            goto L7
        L19:
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L5b
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L5b
            if (r2 <= 0) goto L4b
            java.lang.String r2 = "_data"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L5b
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L5b
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L5b
            boolean r3 = r3.exists()     // Catch: java.lang.Throwable -> L5b
            if (r3 == 0) goto L4b
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5b
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L5b
            int r2 = a(r2)     // Catch: java.lang.Throwable -> L5b
            com.facebook.imagepipeline.h.d r0 = r7.b(r0, r2)     // Catch: java.lang.Throwable -> L5b
            if (r1 == 0) goto L7
            r1.close()
            goto L7
        L4b:
            if (r1 == 0) goto L7
            r1.close()
            goto L7
        L51:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L55:
            if (r1 == 0) goto L5a
            r1.close()
        L5a:
            throw r0
        L5b:
            r0 = move-exception
            goto L55
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.k.au.a(com.facebook.imagepipeline.d.d, int):com.facebook.imagepipeline.h.d");
    }

    private static int b(com.facebook.imagepipeline.d.d dVar) {
        if (dg.a(f2641e.width(), f2641e.height(), dVar)) {
            return 3;
        }
        if (dg.a(f2640d.width(), f2640d.height(), dVar)) {
            return 1;
        }
        return 0;
    }

    private static int a(String str) {
        if (str == null) {
            return -1;
        }
        return (int) new File(str).length();
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected String a() {
        return "LocalContentUriThumbnailFetchProducer";
    }

    private static int b(String str) {
        if (str == null) {
            return 0;
        }
        try {
            return com.facebook.h.c.a(new ExifInterface(str).getAttributeInt("Orientation", 1));
        } catch (IOException e2) {
            com.facebook.d.e.a.b(f2637a, e2, "Unable to retrieve thumbnail rotation for %s", str);
            return 0;
        }
    }
}
