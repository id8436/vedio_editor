package com.b.a.d.b.b;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: SafeKeyGenerator.java */
/* JADX INFO: loaded from: classes2.dex */
class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.b.a.j.e<com.b.a.d.c, String> f840a = new com.b.a.j.e<>(1000);

    t() {
    }

    public String a(com.b.a.d.c cVar) {
        String strB;
        synchronized (this.f840a) {
            strB = this.f840a.b(cVar);
        }
        if (strB == null) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                cVar.a(messageDigest);
                strB = com.b.a.j.h.a(messageDigest.digest());
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            } catch (NoSuchAlgorithmException e3) {
                e3.printStackTrace();
            }
            synchronized (this.f840a) {
                this.f840a.b(cVar, strB);
            }
        }
        return strB;
    }
}
