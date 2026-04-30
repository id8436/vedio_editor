package com.a.a.a.i.a;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.behance.sdk.util.BehanceSDKConstants;

/* JADX INFO: compiled from: SqlHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f544c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f546e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final SQLiteDatabase f548g;
    final String h;
    final String i;
    final int j;
    final String k;
    final int l;
    final long m;
    private SQLiteStatement n;
    private SQLiteStatement o;
    private SQLiteStatement p;
    private SQLiteStatement q;
    private SQLiteStatement r;
    private SQLiteStatement s;
    private SQLiteStatement t;
    private SQLiteStatement u;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final StringBuilder f547f = new StringBuilder();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f545d = "SELECT " + a.o.f556a + " FROM job_holder_tags WHERE " + a.n.f556a + " = ?";

    public c(SQLiteDatabase sQLiteDatabase, String str, String str2, int i, String str3, int i2, long j) {
        this.f548g = sQLiteDatabase;
        this.h = str;
        this.j = i;
        this.i = str2;
        this.m = j;
        this.l = i2;
        this.k = str3;
        this.f542a = "SELECT * FROM " + str + " WHERE " + a.f535b.f556a + " = ?";
        this.f543b = "SELECT * FROM " + str + " WHERE " + a.f535b.f556a + " IN ( SELECT " + a.n.f556a + " FROM " + str3 + " WHERE " + a.o.f556a + " = ?)";
        this.f544c = "SELECT " + a.f535b.f556a + " FROM " + str;
        this.f546e = "UPDATE " + str + " SET " + a.l.f556a + " = 0";
    }

    public static String a(String str, g gVar, g... gVarArr) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        sb.append(str).append(" (");
        sb.append(gVar.f556a).append(" ");
        sb.append(gVar.f557b);
        sb.append("  primary key ");
        for (g gVar2 : gVarArr) {
            sb.append(", `").append(gVar2.f556a).append("` ").append(gVar2.f557b);
            if (gVar2.f560e) {
                sb.append(" UNIQUE");
            }
        }
        for (g gVar3 : gVarArr) {
            if (gVar3.f559d != null) {
                d dVar = gVar3.f559d;
                sb.append(", FOREIGN KEY(`").append(gVar3.f556a).append("`) REFERENCES ").append(dVar.f549a).append("(`").append(dVar.f550b).append("`) ON DELETE CASCADE");
            }
        }
        sb.append(" );");
        com.a.a.a.f.b.a(sb.toString(), new Object[0]);
        return sb.toString();
    }

    public static String a(String str) {
        return "DROP TABLE IF EXISTS " + str;
    }

    public SQLiteStatement a() {
        if (this.n == null) {
            this.f547f.setLength(0);
            this.f547f.append("INSERT INTO ").append(this.h);
            this.f547f.append(" VALUES (");
            for (int i = 0; i < this.j; i++) {
                if (i != 0) {
                    this.f547f.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                this.f547f.append("?");
            }
            this.f547f.append(")");
            this.n = this.f548g.compileStatement(this.f547f.toString());
        }
        return this.n;
    }

    public SQLiteStatement b() {
        if (this.o == null) {
            this.f547f.setLength(0);
            this.f547f.append("INSERT INTO ").append("job_holder_tags");
            this.f547f.append(" VALUES (");
            for (int i = 0; i < this.l; i++) {
                if (i != 0) {
                    this.f547f.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                this.f547f.append("?");
            }
            this.f547f.append(")");
            this.o = this.f548g.compileStatement(this.f547f.toString());
        }
        return this.o;
    }

    public SQLiteStatement c() {
        if (this.t == null) {
            this.t = this.f548g.compileStatement("SELECT COUNT(*) FROM " + this.h + " WHERE " + a.h.f556a + " != ?");
        }
        return this.t;
    }

    public SQLiteStatement d() {
        if (this.p == null) {
            this.f547f.setLength(0);
            this.f547f.append("INSERT OR REPLACE INTO ").append(this.h);
            this.f547f.append(" VALUES (");
            for (int i = 0; i < this.j; i++) {
                if (i != 0) {
                    this.f547f.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                this.f547f.append("?");
            }
            this.f547f.append(")");
            this.p = this.f548g.compileStatement(this.f547f.toString());
        }
        return this.p;
    }

    public SQLiteStatement e() {
        if (this.q == null) {
            this.q = this.f548g.compileStatement("DELETE FROM " + this.h + " WHERE " + this.i + " = ?");
        }
        return this.q;
    }

    public SQLiteStatement f() {
        if (this.r == null) {
            this.r = this.f548g.compileStatement("DELETE FROM " + this.k + " WHERE " + a.n.f556a + "= ?");
        }
        return this.r;
    }

    public SQLiteStatement g() {
        if (this.s == null) {
            this.s = this.f548g.compileStatement("UPDATE " + this.h + " SET " + a.f538e.f556a + " = ? , " + a.h.f556a + " = ?  WHERE " + this.i + " = ? ");
        }
        return this.s;
    }

    public SQLiteStatement h() {
        if (this.u == null) {
            this.u = this.f548g.compileStatement("UPDATE " + this.h + " SET " + a.l.f556a + " = 1  WHERE " + this.i + " = ? ");
        }
        return this.u;
    }

    public String a(String str, Integer num, e... eVarArr) {
        this.f547f.setLength(0);
        this.f547f.append("SELECT * FROM ");
        this.f547f.append(this.h);
        if (str != null) {
            this.f547f.append(" WHERE ").append(str);
        }
        int length = eVarArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            e eVar = eVarArr[i];
            if (z) {
                this.f547f.append(" ORDER BY ");
            } else {
                this.f547f.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            }
            this.f547f.append(eVar.f551a.f556a).append(" ").append(eVar.f552b);
            i++;
            z = false;
        }
        if (num != null) {
            this.f547f.append(" LIMIT ").append(num);
        }
        return this.f547f.toString();
    }

    public String a(String str, String str2, Integer num, e... eVarArr) {
        this.f547f.setLength(0);
        this.f547f.append("SELECT ").append(str).append(" FROM ").append(this.h);
        if (str2 != null) {
            this.f547f.append(" WHERE ").append(str2);
        }
        int length = eVarArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            e eVar = eVarArr[i];
            if (z) {
                this.f547f.append(" ORDER BY ");
            } else {
                this.f547f.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            }
            this.f547f.append(eVar.f551a.f556a).append(" ").append(eVar.f552b);
            i++;
            z = false;
        }
        if (num != null) {
            this.f547f.append(" LIMIT ").append(num);
        }
        return this.f547f.toString();
    }

    static void a(StringBuilder sb, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("cannot create placeholders for 0 items");
        }
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
    }

    public void i() {
        this.f548g.execSQL("DELETE FROM job_holder");
        this.f548g.execSQL("DELETE FROM job_holder_tags");
        j();
    }

    public void j() {
        this.f548g.execSQL("VACUUM");
    }

    public void a(long j) {
        this.f548g.execSQL("UPDATE job_holder SET " + a.f540g.f556a + "=?", new Object[]{Long.valueOf(j)});
    }
}
