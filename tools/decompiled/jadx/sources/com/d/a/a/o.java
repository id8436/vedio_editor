package com.d.a.a;

/* JADX INFO: compiled from: JsonToken.java */
/* JADX INFO: loaded from: classes2.dex */
public enum o {
    NOT_AVAILABLE(null, -1),
    START_OBJECT("{", 1),
    END_OBJECT("}", 2),
    START_ARRAY("[", 3),
    END_ARRAY("]", 4),
    FIELD_NAME(null, 5),
    VALUE_EMBEDDED_OBJECT(null, 12),
    VALUE_STRING(null, 6),
    VALUE_NUMBER_INT(null, 7),
    VALUE_NUMBER_FLOAT(null, 8),
    VALUE_TRUE("true", 9),
    VALUE_FALSE("false", 10),
    VALUE_NULL("null", 11);

    final String n;
    final char[] o;
    final byte[] p;
    final int q;
    final boolean r;
    final boolean s;
    final boolean t;
    final boolean u;
    final boolean v;

    o(String str, int i) {
        if (str == null) {
            this.n = null;
            this.o = null;
            this.p = null;
        } else {
            this.n = str;
            this.o = str.toCharArray();
            int length = this.o.length;
            this.p = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                this.p[i2] = (byte) this.o[i2];
            }
        }
        this.q = i;
        this.u = i == 10 || i == 9;
        this.t = i == 7 || i == 8;
        this.r = i == 1 || i == 3;
        this.s = i == 2 || i == 4;
        this.v = (this.r || this.s || i == 5 || i == -1) ? false : true;
    }

    public final int a() {
        return this.q;
    }

    public final String b() {
        return this.n;
    }

    public final char[] c() {
        return this.o;
    }

    public final boolean d() {
        return this.r;
    }

    public final boolean e() {
        return this.s;
    }

    public final boolean f() {
        return this.v;
    }
}
