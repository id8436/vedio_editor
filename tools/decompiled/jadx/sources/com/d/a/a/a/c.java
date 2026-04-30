package com.d.a.a.a;

import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.l;
import com.d.a.a.m;
import com.d.a.a.o;
import java.io.IOException;

/* JADX INFO: compiled from: ParserMinimalBase.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends k {
    protected o K;

    protected abstract void C() throws j;

    @Override // com.d.a.a.k
    public abstract o a() throws IOException;

    @Override // com.d.a.a.k
    public abstract String g() throws IOException;

    protected c(int i) {
        super(i);
    }

    @Override // com.d.a.a.k
    public o c() {
        return this.K;
    }

    @Override // com.d.a.a.k
    public k b() throws IOException {
        if (this.K == o.START_OBJECT || this.K == o.START_ARRAY) {
            int i = 1;
            while (true) {
                o oVarA = a();
                if (oVarA == null) {
                    C();
                    break;
                }
                if (oVarA.d()) {
                    i++;
                } else if (oVarA.e() && i - 1 == 0) {
                    break;
                }
            }
        }
        return this;
    }

    protected void a(String str, com.d.a.a.e.b bVar, com.d.a.a.a aVar) throws IOException {
        try {
            aVar.a(str, bVar);
        } catch (IllegalArgumentException e2) {
            d(e2.getMessage());
        }
    }

    protected void b(int i, String str) throws j {
        if (i < 0) {
            O();
        }
        String str2 = "Unexpected character (" + d(i) + ")";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        d(str2);
    }

    protected void O() throws j {
        c(" in " + this.K);
    }

    protected void c(String str) throws j {
        d("Unexpected end-of-input" + str);
    }

    protected void P() throws j {
        c(" in a value");
    }

    protected void b(int i) throws j {
        b(i, "Expected space separating root-level values");
    }

    protected void c(int i) throws j {
        d("Illegal character (" + d((char) i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    protected void c(int i, String str) throws j {
        if (!a(l.ALLOW_UNQUOTED_CONTROL_CHARS) || i > 32) {
            d("Illegal unquoted character (" + d((char) i) + "): has to be escaped using backslash to be included in " + str);
        }
    }

    protected char a(char c2) throws m {
        if (!a(l.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER) && (c2 != '\'' || !a(l.ALLOW_SINGLE_QUOTES))) {
            d("Unrecognized character escape " + d(c2));
        }
        return c2;
    }

    protected static final String d(int i) {
        char c2 = (char) i;
        if (Character.isISOControl(c2)) {
            return "(CTRL-CHAR, code " + i + ")";
        }
        if (i > 255) {
            return "'" + c2 + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")";
        }
        return "'" + c2 + "' (code " + i + ")";
    }

    protected final void d(String str) throws j {
        throw a(str);
    }

    protected final void a(String str, Throwable th) throws j {
        throw b(str, th);
    }

    protected final void Q() {
        com.d.a.a.e.j.a();
    }

    protected final j b(String str, Throwable th) {
        return new j(this, str, th);
    }
}
