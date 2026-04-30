package com.a.a.a.i.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import android.support.annotation.NonNull;
import com.a.a.a.aa;
import com.a.a.a.r;
import com.a.a.a.s;
import com.a.a.a.u;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: SqliteJobQueue.java */
/* JADX INFO: loaded from: classes.dex */
public class h implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SQLiteDatabase f563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private k f565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f566f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final StringBuilder f567g = new StringBuilder();
    private final m h;

    public h(com.a.a.a.c.a aVar, long j, k kVar) {
        this.f562b = j;
        this.f566f = new b(aVar.a(), "jobs_" + aVar.b());
        this.h = new m(j);
        this.f561a = new a(aVar.a(), aVar.l() ? null : "db_" + aVar.b());
        this.f563c = this.f561a.getWritableDatabase();
        this.f564d = new c(this.f563c, "job_holder", a.f535b.f556a, 12, "job_holder_tags", 3, j);
        this.f565e = kVar;
        if (aVar.n()) {
            this.f564d.a(Long.MIN_VALUE);
        }
        c();
        d();
    }

    private void c() {
        this.f563c.execSQL(this.f564d.f546e);
    }

    private void d() {
        Cursor cursorRawQuery = this.f563c.rawQuery(this.f564d.f544c, null);
        HashSet hashSet = new HashSet();
        while (cursorRawQuery.moveToNext()) {
            try {
                hashSet.add(cursorRawQuery.getString(0));
            } catch (Throwable th) {
                cursorRawQuery.close();
                throw th;
            }
        }
        cursorRawQuery.close();
        this.f566f.a(hashSet);
    }

    @Override // com.a.a.a.aa
    public boolean a(@NonNull s sVar) {
        e(sVar);
        if (sVar.q()) {
            return f(sVar);
        }
        SQLiteStatement sQLiteStatementA = this.f564d.a();
        sQLiteStatementA.clearBindings();
        a(sQLiteStatementA, sVar);
        long jExecuteInsert = sQLiteStatementA.executeInsert();
        sVar.a(jExecuteInsert);
        return jExecuteInsert != -1;
    }

    private void e(@NonNull s sVar) {
        try {
            this.f566f.a(sVar.a(), this.f565e.a(sVar.j()));
        } catch (IOException e2) {
            throw new RuntimeException("cannot save job to disk", e2);
        }
    }

    @Override // com.a.a.a.aa
    public void a(@NonNull s sVar, @NonNull s sVar2) {
        this.f563c.beginTransaction();
        try {
            c(sVar2);
            a(sVar);
            this.f563c.setTransactionSuccessful();
        } finally {
            this.f563c.endTransaction();
        }
    }

    private boolean f(s sVar) {
        SQLiteStatement sQLiteStatementA = this.f564d.a();
        SQLiteStatement sQLiteStatementB = this.f564d.b();
        this.f563c.beginTransaction();
        try {
            sQLiteStatementA.clearBindings();
            a(sQLiteStatementA, sVar);
            if (!(sQLiteStatementA.executeInsert() != -1)) {
                return false;
            }
            for (String str : sVar.l()) {
                sQLiteStatementB.clearBindings();
                a(sQLiteStatementB, sVar.a(), str);
                sQLiteStatementB.executeInsert();
            }
            this.f563c.setTransactionSuccessful();
            return true;
        } catch (Throwable th) {
            com.a.a.a.f.b.a(th, "error while inserting job with tags", new Object[0]);
            return false;
        } finally {
            this.f563c.endTransaction();
        }
        this.f563c.endTransaction();
    }

    private void a(SQLiteStatement sQLiteStatement, String str, String str2) {
        sQLiteStatement.bindString(a.n.f558c + 1, str);
        sQLiteStatement.bindString(a.o.f558c + 1, str2);
    }

    private void a(SQLiteStatement sQLiteStatement, s sVar) {
        if (sVar.c() != null) {
            sQLiteStatement.bindLong(a.f534a.f558c + 1, sVar.c().longValue());
        }
        sQLiteStatement.bindString(a.f535b.f558c + 1, sVar.a());
        sQLiteStatement.bindLong(a.f536c.f558c + 1, sVar.b());
        if (sVar.k() != null) {
            sQLiteStatement.bindString(a.f537d.f558c + 1, sVar.k());
        }
        sQLiteStatement.bindLong(a.f538e.f558c + 1, sVar.d());
        sQLiteStatement.bindLong(a.f539f.f558c + 1, sVar.e());
        sQLiteStatement.bindLong(a.f540g.f558c + 1, sVar.i());
        sQLiteStatement.bindLong(a.h.f558c + 1, sVar.f());
        sQLiteStatement.bindLong(a.i.f558c + 1, sVar.v());
        sQLiteStatement.bindLong(a.j.f558c + 1, sVar.g());
        sQLiteStatement.bindLong(a.k.f558c + 1, sVar.h() ? 1L : 0L);
        sQLiteStatement.bindLong(a.l.f558c + 1, sVar.n() ? 1L : 0L);
    }

    @Override // com.a.a.a.aa
    public boolean b(@NonNull s sVar) {
        if (sVar.c() == null) {
            return a(sVar);
        }
        e(sVar);
        sVar.c(Long.MIN_VALUE);
        SQLiteStatement sQLiteStatementD = this.f564d.d();
        sQLiteStatementD.clearBindings();
        a(sQLiteStatementD, sVar);
        boolean z = sQLiteStatementD.executeInsert() != -1;
        com.a.a.a.f.b.a("reinsert job result %s", Boolean.valueOf(z));
        return z;
    }

    @Override // com.a.a.a.aa
    public void c(@NonNull s sVar) {
        b(sVar.a());
    }

    private void b(String str) {
        this.f563c.beginTransaction();
        try {
            SQLiteStatement sQLiteStatementE = this.f564d.e();
            sQLiteStatementE.clearBindings();
            sQLiteStatementE.bindString(1, str);
            sQLiteStatementE.execute();
            SQLiteStatement sQLiteStatementF = this.f564d.f();
            sQLiteStatementF.bindString(1, str);
            sQLiteStatementF.execute();
            this.f563c.setTransactionSuccessful();
            this.f566f.a(str);
        } finally {
            this.f563c.endTransaction();
        }
    }

    @Override // com.a.a.a.aa
    public int a() {
        SQLiteStatement sQLiteStatementC = this.f564d.c();
        sQLiteStatementC.clearBindings();
        sQLiteStatementC.bindLong(1, this.f562b);
        return (int) sQLiteStatementC.simpleQueryForLong();
    }

    @Override // com.a.a.a.aa
    public int a(@NonNull com.a.a.a.j jVar) {
        return (int) e(jVar).a(this.f563c, this.f567g).simpleQueryForLong();
    }

    @Override // com.a.a.a.aa
    public s a(@NonNull String str) {
        s sVarA = null;
        Cursor cursorRawQuery = this.f563c.rawQuery(this.f564d.f542a, new String[]{str});
        try {
            if (cursorRawQuery.moveToFirst()) {
                sVarA = a(cursorRawQuery);
                cursorRawQuery.close();
            }
        } catch (i e2) {
            com.a.a.a.f.b.a(e2, "invalid job on findJobById", new Object[0]);
        } finally {
            cursorRawQuery.close();
        }
        return sVarA;
    }

    @Override // com.a.a.a.aa
    @NonNull
    public Set<s> d(@NonNull com.a.a.a.j jVar) {
        l lVarE = e(jVar);
        Cursor cursorRawQuery = this.f563c.rawQuery(lVarE.b(this.f564d), lVarE.f572c);
        HashSet hashSet = new HashSet();
        while (cursorRawQuery.moveToNext()) {
            try {
                hashSet.add(a(cursorRawQuery));
            } catch (i e2) {
                com.a.a.a.f.b.a(e2, "invalid job found by tags.", new Object[0]);
            } finally {
                cursorRawQuery.close();
            }
        }
        return hashSet;
    }

    @Override // com.a.a.a.aa
    public void d(s sVar) {
        SQLiteStatement sQLiteStatementH = this.f564d.h();
        sQLiteStatementH.clearBindings();
        sQLiteStatementH.bindString(1, sVar.a());
        sQLiteStatementH.execute();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:10|20|11|(2:13|25)(2:15|26)|14) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
    
        r0 = r3.getString(com.a.a.a.i.a.a.f535b.f558c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (r0 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        com.a.a.a.f.b.b("cannot find job id on a retrieved job", new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
    
        b(r0);
     */
    @Override // com.a.a.a.aa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.a.a.a.s b(@android.support.annotation.NonNull com.a.a.a.j r6) {
        /*
            r5 = this;
            com.a.a.a.i.a.l r1 = r5.e(r6)
            com.a.a.a.i.a.c r0 = r5.f564d
            java.lang.String r2 = r1.a(r0)
        La:
            android.database.sqlite.SQLiteDatabase r0 = r5.f563c
            java.lang.String[] r3 = r1.f572c
            android.database.Cursor r3 = r0.rawQuery(r2, r3)
            boolean r0 = r3.moveToNext()     // Catch: com.a.a.a.i.a.i -> L28 java.lang.Throwable -> L44
            if (r0 != 0) goto L1d
            r0 = 0
            r3.close()
        L1c:
            return r0
        L1d:
            com.a.a.a.s r0 = r5.a(r3)     // Catch: com.a.a.a.i.a.i -> L28 java.lang.Throwable -> L44
            r5.g(r0)     // Catch: com.a.a.a.i.a.i -> L28 java.lang.Throwable -> L44
            r3.close()
            goto L1c
        L28:
            r0 = move-exception
            com.a.a.a.i.a.g r0 = com.a.a.a.i.a.a.f535b     // Catch: java.lang.Throwable -> L44
            int r0 = r0.f558c     // Catch: java.lang.Throwable -> L44
            java.lang.String r0 = r3.getString(r0)     // Catch: java.lang.Throwable -> L44
            if (r0 != 0) goto L40
            java.lang.String r0 = "cannot find job id on a retrieved job"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L44
            com.a.a.a.f.b.b(r0, r4)     // Catch: java.lang.Throwable -> L44
        L3c:
            r3.close()
            goto La
        L40:
            r5.b(r0)     // Catch: java.lang.Throwable -> L44
            goto L3c
        L44:
            r0 = move-exception
            r3.close()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.a.i.a.h.b(com.a.a.a.j):com.a.a.a.s");
    }

    private l e(com.a.a.a.j jVar) {
        return this.h.a(jVar, this.f567g);
    }

    @Override // com.a.a.a.aa
    public Long c(@NonNull com.a.a.a.j jVar) {
        try {
            long jSimpleQueryForLong = e(jVar).a(this.f563c, this.f564d).simpleQueryForLong();
            if (jSimpleQueryForLong == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jSimpleQueryForLong);
        } catch (SQLiteDoneException e2) {
            return null;
        }
    }

    @Override // com.a.a.a.aa
    public void b() {
        this.f564d.i();
        d();
    }

    private void g(s sVar) {
        SQLiteStatement sQLiteStatementG = this.f564d.g();
        sVar.b(sVar.d() + 1);
        sVar.c(this.f562b);
        sQLiteStatementG.clearBindings();
        sQLiteStatementG.bindLong(1, sVar.d());
        sQLiteStatementG.bindLong(2, this.f562b);
        sQLiteStatementG.bindString(3, sVar.a());
        sQLiteStatementG.execute();
    }

    private s a(Cursor cursor) throws i {
        String string = cursor.getString(a.f535b.f558c);
        try {
            r rVarA = a(this.f566f.b(string));
            if (rVarA == null) {
                throw new i("null job");
            }
            return new u().c(cursor.getLong(a.f534a.f558c)).a(cursor.getInt(a.f536c.f558c)).a(cursor.getString(a.f537d.f558c)).b(cursor.getInt(a.f538e.f558c)).a(rVarA).b(string).a(c(string)).a(true).a(cursor.getLong(a.j.f558c), cursor.getInt(a.k.f558c) == 1).a(cursor.getLong(a.f539f.f558c)).b(cursor.getLong(a.f540g.f558c)).d(cursor.getLong(a.h.f558c)).c(cursor.getInt(a.i.f558c)).a();
        } catch (IOException e2) {
            throw new i("cannot load job from disk", e2);
        }
    }

    private Set<String> c(String str) {
        Set<String> hashSet;
        Cursor cursorRawQuery = this.f563c.rawQuery(this.f564d.f545d, new String[]{str});
        try {
            if (cursorRawQuery.getCount() == 0) {
                hashSet = Collections.EMPTY_SET;
            } else {
                hashSet = new HashSet<>();
                while (cursorRawQuery.moveToNext()) {
                    hashSet.add(cursorRawQuery.getString(0));
                }
            }
            return hashSet;
        } finally {
            cursorRawQuery.close();
        }
    }

    private r a(byte[] bArr) {
        try {
            return this.f565e.a(bArr);
        } catch (Throwable th) {
            com.a.a.a.f.b.a(th, "error while deserializing job", new Object[0]);
            return null;
        }
    }
}
