package com.l.b.a;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import javax.mail.MessagingException;

/* JADX INFO: compiled from: LineOutputStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class f extends FilterOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static byte[] f3611a = new byte[2];

    static {
        f3611a[0] = 13;
        f3611a[1] = 10;
    }

    public f(OutputStream outputStream) {
        super(outputStream);
    }

    public void a(String str) throws MessagingException {
        try {
            this.out.write(a.a(str));
            this.out.write(f3611a);
        } catch (Exception e2) {
            throw new MessagingException("IOException", e2);
        }
    }

    public void a() throws MessagingException {
        try {
            this.out.write(f3611a);
        } catch (Exception e2) {
            throw new MessagingException("IOException", e2);
        }
    }
}
