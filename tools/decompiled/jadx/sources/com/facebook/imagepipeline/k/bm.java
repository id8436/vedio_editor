package com.facebook.imagepipeline.k;

import android.content.Context;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: MediaVariationsIndexDatabase.java */
/* JADX INFO: loaded from: classes2.dex */
public class bm implements bl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f2684a = bm.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f2685b = {"cache_key", "width", "height"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final bq f2686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f2687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f2688e;

    public bm(Context context, Executor executor, Executor executor2) {
        this.f2686c = new bq(context, null);
        this.f2687d = executor;
        this.f2688e = executor2;
    }

    @Override // com.facebook.imagepipeline.k.bl
    public a.l<List<com.facebook.imagepipeline.l.g>> a(String str) {
        try {
            return a.l.a(new bn(this, str), this.f2687d);
        } catch (Exception e2) {
            com.facebook.d.e.a.a(f2684a, e2, "Failed to schedule query task for %s", str);
            return a.l.a(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080 A[Catch: all -> 0x0087, TRY_ENTER, TryCatch #3 {, blocks: (B:4:0x0002, B:9:0x0025, B:10:0x0028, B:33:0x008c, B:34:0x008f, B:26:0x0080, B:27:0x0083, B:28:0x0086), top: B:42:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.List<com.facebook.imagepipeline.l.g> b(java.lang.String r11) {
        /*
            r10 = this;
            r8 = 0
            monitor-enter(r10)
            com.facebook.imagepipeline.k.bq r0 = r10.f2686c     // Catch: java.lang.Throwable -> L87
            android.database.sqlite.SQLiteDatabase r0 = r0.a()     // Catch: java.lang.Throwable -> L87
            java.lang.String r3 = "media_id = ?"
            r1 = 1
            java.lang.String[] r4 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> L94 android.database.SQLException -> L99
            r1 = 0
            r4[r1] = r11     // Catch: java.lang.Throwable -> L94 android.database.SQLException -> L99
            java.lang.String r1 = "media_variations_index"
            java.lang.String[] r2 = com.facebook.imagepipeline.k.bm.f2685b     // Catch: java.lang.Throwable -> L94 android.database.SQLException -> L99
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r2 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L94 android.database.SQLException -> L99
            int r1 = r2.getCount()     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            if (r1 != 0) goto L2e
            if (r2 == 0) goto L28
            r2.close()     // Catch: java.lang.Throwable -> L87
        L28:
            r0.close()     // Catch: java.lang.Throwable -> L87
            r0 = r8
        L2c:
            monitor-exit(r10)
            return r0
        L2e:
            java.lang.String r1 = "cache_key"
            int r3 = r2.getColumnIndexOrThrow(r1)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            java.lang.String r1 = "width"
            int r4 = r2.getColumnIndexOrThrow(r1)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            java.lang.String r1 = "height"
            int r5 = r2.getColumnIndexOrThrow(r1)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            int r6 = r2.getCount()     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            r1.<init>(r6)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
        L4c:
            boolean r6 = r2.moveToNext()     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            if (r6 == 0) goto L8a
            com.facebook.imagepipeline.l.g r6 = new com.facebook.imagepipeline.l.g     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            java.lang.String r7 = r2.getString(r3)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            android.net.Uri r7 = android.net.Uri.parse(r7)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            int r8 = r2.getInt(r4)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            int r9 = r2.getInt(r5)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            r6.<init>(r7, r8, r9)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            r1.add(r6)     // Catch: android.database.SQLException -> L6b java.lang.Throwable -> L97
            goto L4c
        L6b:
            r1 = move-exception
            r8 = r2
        L6d:
            java.lang.String r2 = com.facebook.imagepipeline.k.bm.f2684a     // Catch: java.lang.Throwable -> L7c
            java.lang.String r3 = "Error reading for %s"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L7c
            r5 = 0
            r4[r5] = r11     // Catch: java.lang.Throwable -> L7c
            com.facebook.d.e.a.b(r2, r1, r3, r4)     // Catch: java.lang.Throwable -> L7c
            throw r1     // Catch: java.lang.Throwable -> L7c
        L7c:
            r1 = move-exception
            r2 = r8
        L7e:
            if (r2 == 0) goto L83
            r2.close()     // Catch: java.lang.Throwable -> L87
        L83:
            r0.close()     // Catch: java.lang.Throwable -> L87
            throw r1     // Catch: java.lang.Throwable -> L87
        L87:
            r0 = move-exception
            monitor-exit(r10)
            throw r0
        L8a:
            if (r2 == 0) goto L8f
            r2.close()     // Catch: java.lang.Throwable -> L87
        L8f:
            r0.close()     // Catch: java.lang.Throwable -> L87
            r0 = r1
            goto L2c
        L94:
            r1 = move-exception
            r2 = r8
            goto L7e
        L97:
            r1 = move-exception
            goto L7e
        L99:
            r1 = move-exception
            goto L6d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.k.bm.b(java.lang.String):java.util.List");
    }

    @Override // com.facebook.imagepipeline.k.bl
    public void a(String str, com.facebook.c.a.f fVar, com.facebook.imagepipeline.h.d dVar) {
        this.f2688e.execute(new bo(this, str, dVar, fVar));
    }
}
