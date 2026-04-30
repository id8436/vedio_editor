package com.c.a.a.a;

import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: VarSpec.java */
/* JADX INFO: loaded from: classes2.dex */
public final class e implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f1285a = Pattern.compile("([\\w\\_\\.]|%[A-Fa-f0-9]{2})+");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f1286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f1287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f1288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1290f;

    public e(String str, a aVar) {
        this(str, aVar, -1);
    }

    public e(String str, a aVar, Integer num) {
        this.f1286b = a.NONE;
        this.f1288d = 0;
        this.f1286b = aVar;
        this.f1287c = str;
        if (num != null) {
            this.f1288d = num;
        }
        f();
        e();
    }

    public a a() {
        return this.f1286b;
    }

    private void e() {
        StringBuilder sb = new StringBuilder("([\\w.~\\-\\_]|%[A-Fa-f0-9]{2})");
        if (this.f1286b == a.PREFIX) {
            sb.append("{").append(c()).append("}");
        } else {
            sb.append("+");
        }
        this.f1290f = sb.toString();
    }

    public String b() {
        return this.f1287c;
    }

    public Integer c() {
        return this.f1288d;
    }

    private void f() {
        this.f1289e = b();
        if (this.f1286b != a.NONE) {
            if (this.f1286b == a.PREFIX) {
                this.f1289e = b().split(a.PREFIX.a())[0];
            }
            if (this.f1286b == a.EXPLODE && b().lastIndexOf(42) != -1) {
                this.f1289e = b().substring(0, b().length() - 1);
            }
        } else if (this.f1289e.lastIndexOf(42) != -1) {
            this.f1289e = b().substring(0, b().length() - 1);
            this.f1286b = a.EXPLODE;
        }
        if (!f1285a.matcher(this.f1289e).matches()) {
            throw new com.c.a.a.d("The variable name " + this.f1289e + " contains invalid characters", this.f1288d.intValue());
        }
        if (this.f1289e.contains(" ")) {
            throw new com.c.a.a.d("The variable name " + this.f1289e + " cannot contain spaces (leading or trailing)", this.f1288d.intValue());
        }
    }

    public String d() {
        return this.f1289e == null ? b() : this.f1289e;
    }

    public String toString() {
        return "VarSpec [modifier=" + this.f1286b + ", value=" + this.f1287c + ", position=" + this.f1288d + ", variableName=" + this.f1289e + "]";
    }
}
