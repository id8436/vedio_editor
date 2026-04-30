package com.a.a.a.i.a;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;

/* JADX INFO: compiled from: Where.java */
/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f568d = Long.toString(Long.MIN_VALUE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final String f569e = Long.toString(Long.MAX_VALUE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f572c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SQLiteStatement f573f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f574g;
    private SQLiteStatement h;
    private String i;

    public l(long j, String str, String[] strArr) {
        this.f570a = j;
        this.f571b = str;
        this.f572c = strArr;
    }

    public SQLiteStatement a(SQLiteDatabase sQLiteDatabase, StringBuilder sb) {
        if (this.f573f == null) {
            sb.setLength(0);
            sb.append("SELECT SUM(case WHEN ").append(a.f537d.f556a).append(" is null then group_cnt else 1 end) from (").append("SELECT count(*) group_cnt, ").append(a.f537d.f556a).append(" FROM ").append("job_holder").append(" WHERE ").append(this.f571b).append(" GROUP BY ").append(a.f537d.f556a).append(")");
            this.f573f = sQLiteDatabase.compileStatement(sb.toString());
        } else {
            this.f573f.clearBindings();
        }
        for (int i = 1; i <= this.f572c.length; i++) {
            this.f573f.bindString(i, this.f572c[i - 1]);
        }
        return this.f573f;
    }

    public SQLiteStatement a(SQLiteDatabase sQLiteDatabase, c cVar) {
        if (this.h == null) {
            String strA = cVar.a(a.j.f556a, this.f571b, null, new e[0]);
            String strA2 = cVar.a(a.f540g.f556a, this.f571b, null, new e[0]);
            StringBuilder sb = cVar.f547f;
            sb.setLength(0);
            sb.append("SELECT * FROM (").append(strA).append(" ORDER BY 1 ASC LIMIT 1").append(") UNION SELECT * FROM (").append(strA2).append(" ORDER BY 1 ASC LIMIT 1").append(") ORDER BY 1 ASC LIMIT 1");
            this.h = sQLiteDatabase.compileStatement(sb.toString());
        } else {
            this.h.clearBindings();
        }
        for (int i = 1; i <= this.f572c.length; i++) {
            this.h.bindString(i, this.f572c[i - 1]);
            this.h.bindString(this.f572c.length + i, this.f572c[i - 1]);
        }
        this.h.bindString(1, f569e);
        this.h.bindString(this.f572c.length + 1, f568d);
        return this.h;
    }

    public String a(c cVar) {
        if (this.i == null) {
            this.i = cVar.a(this.f571b, (Integer) 1, new e(a.f536c, f.DESC), new e(a.f539f, f.ASC), new e(a.f534a, f.ASC));
        }
        return this.i;
    }

    public String b(c cVar) {
        if (this.f574g == null) {
            this.f574g = cVar.a(this.f571b, (Integer) null, new e[0]);
        }
        return this.f574g;
    }

    public void a() {
        if (this.f573f != null) {
            this.f573f.close();
            this.f573f = null;
        }
        if (this.h != null) {
            this.h.close();
            this.h = null;
        }
    }
}
