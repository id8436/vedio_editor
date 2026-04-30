package com.d.a.a;

/* JADX INFO: compiled from: JsonParser.java */
/* JADX INFO: loaded from: classes2.dex */
public enum l {
    AUTO_CLOSE_SOURCE(true),
    ALLOW_COMMENTS(false),
    ALLOW_YAML_COMMENTS(false),
    ALLOW_UNQUOTED_FIELD_NAMES(false),
    ALLOW_SINGLE_QUOTES(false),
    ALLOW_UNQUOTED_CONTROL_CHARS(false),
    ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
    ALLOW_NUMERIC_LEADING_ZEROS(false),
    ALLOW_NON_NUMERIC_NUMBERS(false),
    STRICT_DUPLICATE_DETECTION(false),
    IGNORE_UNDEFINED(false);

    private final boolean l;
    private final int m = 1 << ordinal();

    public static int a() {
        int iC = 0;
        for (l lVar : values()) {
            if (lVar.b()) {
                iC |= lVar.c();
            }
        }
        return iC;
    }

    l(boolean z) {
        this.l = z;
    }

    public boolean b() {
        return this.l;
    }

    public boolean a(int i) {
        return (this.m & i) != 0;
    }

    public int c() {
        return this.m;
    }
}
