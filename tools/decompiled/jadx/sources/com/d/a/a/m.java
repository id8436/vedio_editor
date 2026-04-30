package com.d.a.a;

import java.io.IOException;

/* JADX INFO: compiled from: JsonProcessingException.java */
/* JADX INFO: loaded from: classes2.dex */
public class m extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected i f1511b;

    protected m(String str, i iVar, Throwable th) {
        super(str);
        if (th != null) {
            initCause(th);
        }
        this.f1511b = iVar;
    }

    protected m(String str, i iVar) {
        this(str, iVar, null);
    }

    public i a() {
        return this.f1511b;
    }

    protected String b() {
        return null;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "N/A";
        }
        i iVarA = a();
        String strB = b();
        if (iVarA != null || strB != null) {
            StringBuilder sb = new StringBuilder(100);
            sb.append(message);
            if (strB != null) {
                sb.append(strB);
            }
            if (iVarA != null) {
                sb.append('\n');
                sb.append(" at ");
                sb.append(iVarA.toString());
            }
            return sb.toString();
        }
        return message;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
