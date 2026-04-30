package com.d.a.a;

/* JADX INFO: compiled from: JsonGenerator.java */
/* JADX INFO: loaded from: classes2.dex */
public enum h {
    AUTO_CLOSE_TARGET(true),
    AUTO_CLOSE_JSON_CONTENT(true),
    FLUSH_PASSED_TO_STREAM(true),
    QUOTE_FIELD_NAMES(true),
    QUOTE_NON_NUMERIC_NUMBERS(true),
    WRITE_NUMBERS_AS_STRINGS(false),
    WRITE_BIGDECIMAL_AS_PLAIN(false),
    ESCAPE_NON_ASCII(false),
    STRICT_DUPLICATE_DETECTION(false),
    IGNORE_UNKNOWN(false);

    private final boolean k;
    private final int l = 1 << ordinal();

    public static int a() {
        int iC = 0;
        for (h hVar : values()) {
            if (hVar.b()) {
                iC |= hVar.c();
            }
        }
        return iC;
    }

    h(boolean z) {
        this.k = z;
    }

    public boolean b() {
        return this.k;
    }

    public boolean a(int i) {
        return (this.l & i) != 0;
    }

    public int c() {
        return this.l;
    }
}
