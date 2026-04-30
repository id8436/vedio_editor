package com.twitter;

import java.text.Normalizer;
import java.util.Iterator;

/* JADX INFO: compiled from: Validator.java */
/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f3813a = 23;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f3814b = 23;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f3815c = new a();

    public int a(String str) {
        String strNormalize = Normalizer.normalize(str, Normalizer.Form.NFC);
        int iCodePointCount = strNormalize.codePointCount(0, strNormalize.length());
        Iterator<b> it = this.f3815c.a(strNormalize).iterator();
        while (true) {
            int i = iCodePointCount;
            if (it.hasNext()) {
                b next = it.next();
                iCodePointCount = (next.f3794c.toLowerCase().startsWith("https://") ? this.f3814b : this.f3813a) + i + (next.f3792a - next.f3793b);
            } else {
                return i;
            }
        }
    }
}
