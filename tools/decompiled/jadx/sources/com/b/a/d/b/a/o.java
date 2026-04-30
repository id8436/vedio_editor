package com.b.a.d.b.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: SizeConfigStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
@TargetApi(19)
public class o implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Bitmap.Config[] f807a = {Bitmap.Config.ARGB_8888, null};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Bitmap.Config[] f808b = {Bitmap.Config.RGB_565};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Bitmap.Config[] f809c = {Bitmap.Config.ARGB_4444};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Bitmap.Config[] f810d = {Bitmap.Config.ALPHA_8};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final r f811e = new r();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g<q, Bitmap> f812f = new g<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f813g = new HashMap();

    @Override // com.b.a.d.b.a.m
    public void a(Bitmap bitmap) {
        q qVarA = this.f811e.a(com.b.a.j.h.a(bitmap), bitmap.getConfig());
        this.f812f.a(qVarA, bitmap);
        NavigableMap<Integer, Integer> navigableMapA = a(bitmap.getConfig());
        Integer num = (Integer) navigableMapA.get(Integer.valueOf(qVarA.f816b));
        navigableMapA.put(Integer.valueOf(qVarA.f816b), Integer.valueOf(num == null ? 1 : num.intValue() + 1));
    }

    @Override // com.b.a.d.b.a.m
    public Bitmap a(int i, int i2, Bitmap.Config config) {
        int iA = com.b.a.j.h.a(i, i2, config);
        Bitmap bitmapA = this.f812f.a(a(this.f811e.a(iA, config), iA, config));
        if (bitmapA != null) {
            a(Integer.valueOf(com.b.a.j.h.a(bitmapA)), bitmapA.getConfig());
            bitmapA.reconfigure(i, i2, bitmapA.getConfig() != null ? bitmapA.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return bitmapA;
    }

    private q a(q qVar, int i, Bitmap.Config config) {
        for (Bitmap.Config config2 : b(config)) {
            Integer numCeilingKey = a(config2).ceilingKey(Integer.valueOf(i));
            if (numCeilingKey != null && numCeilingKey.intValue() <= i * 8) {
                if (numCeilingKey.intValue() == i) {
                    if (config2 == null) {
                        if (config == null) {
                            return qVar;
                        }
                    } else if (config2.equals(config)) {
                        return qVar;
                    }
                }
                this.f811e.a(qVar);
                return this.f811e.a(numCeilingKey.intValue(), config2);
            }
        }
        return qVar;
    }

    @Override // com.b.a.d.b.a.m
    public Bitmap a() {
        Bitmap bitmapA = this.f812f.a();
        if (bitmapA != null) {
            a(Integer.valueOf(com.b.a.j.h.a(bitmapA)), bitmapA.getConfig());
        }
        return bitmapA;
    }

    private void a(Integer num, Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMapA = a(config);
        if (((Integer) navigableMapA.get(num)).intValue() == 1) {
            navigableMapA.remove(num);
        } else {
            navigableMapA.put(num, Integer.valueOf(r0.intValue() - 1));
        }
    }

    private NavigableMap<Integer, Integer> a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f813g.get(config);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f813g.put(config, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    @Override // com.b.a.d.b.a.m
    public String b(Bitmap bitmap) {
        return b(com.b.a.j.h.a(bitmap), bitmap.getConfig());
    }

    @Override // com.b.a.d.b.a.m
    public String b(int i, int i2, Bitmap.Config config) {
        return b(com.b.a.j.h.a(i, i2, config), config);
    }

    @Override // com.b.a.d.b.a.m
    public int c(Bitmap bitmap) {
        return com.b.a.j.h.a(bitmap);
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder().append("SizeConfigStrategy{groupedMap=").append(this.f812f).append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f813g.entrySet()) {
            sbAppend.append(entry.getKey()).append('[').append(entry.getValue()).append("], ");
        }
        if (!this.f813g.isEmpty()) {
            sbAppend.replace(sbAppend.length() - 2, sbAppend.length(), "");
        }
        return sbAppend.append(")}").toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    private static Bitmap.Config[] b(Bitmap.Config config) {
        switch (p.f814a[config.ordinal()]) {
            case 1:
                return f807a;
            case 2:
                return f808b;
            case 3:
                return f809c;
            case 4:
                return f810d;
            default:
                return new Bitmap.Config[]{config};
        }
    }
}
