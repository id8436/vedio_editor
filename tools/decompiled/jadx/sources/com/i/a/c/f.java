package com.i.a.c;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: MemoryCacheUtils.java */
/* JADX INFO: loaded from: classes3.dex */
public final class f {
    public static String a(String str, com.i.a.b.a.f fVar) {
        return str + c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR + fVar.a() + "x" + fVar.b();
    }

    public static Comparator<String> a() {
        return new g();
    }

    public static List<Bitmap> a(String str, com.i.a.a.b.a aVar) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : aVar.a()) {
            if (str2.startsWith(str)) {
                arrayList.add(aVar.a(str2));
            }
        }
        return arrayList;
    }
}
