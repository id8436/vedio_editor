package com.facebook.c.a;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: CacheKeyUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public static List<String> a(f fVar) {
        try {
            if (fVar instanceof h) {
                List<f> listB = ((h) fVar).b();
                ArrayList arrayList = new ArrayList(listB.size());
                for (int i = 0; i < listB.size(); i++) {
                    arrayList.add(c(listB.get(i)));
                }
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList(1);
            arrayList2.add(c(fVar));
            return arrayList2;
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String b(f fVar) {
        try {
            return fVar instanceof h ? c(((h) fVar).b().get(0)) : c(fVar);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static String c(f fVar) throws UnsupportedEncodingException {
        return com.facebook.d.m.c.a(fVar.a().getBytes("UTF-8"));
    }
}
