package com.facebook.imagepipeline.k;

import android.net.Uri;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;

/* JADX INFO: compiled from: DataFetchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class p extends ay {
    public p(com.facebook.imagepipeline.memory.aj ajVar) {
        super(com.facebook.d.b.a.a(), ajVar);
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.l.a aVar) throws IOException {
        byte[] bArrA = a(aVar.b().toString());
        return a(new ByteArrayInputStream(bArrA), bArrA.length);
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected String a() {
        return "DataFetchProducer";
    }

    static byte[] a(String str) {
        com.facebook.d.d.k.a(str.substring(0, 5).equals("data:"));
        int iIndexOf = str.indexOf(44);
        String strSubstring = str.substring(iIndexOf + 1, str.length());
        if (b(str.substring(0, iIndexOf))) {
            return Base64.decode(strSubstring, 0);
        }
        return Uri.decode(strSubstring).getBytes();
    }

    static boolean b(String str) {
        if (!str.contains(";")) {
            return false;
        }
        return str.split(";")[r0.length - 1].equals("base64");
    }
}
