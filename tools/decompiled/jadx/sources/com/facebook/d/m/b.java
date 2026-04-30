package com.facebook.d.m;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: HashCodeUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static int a(@Nullable Object obj, @Nullable Object obj2) {
        return a(obj == null ? 0 : obj.hashCode(), obj2 != null ? obj2.hashCode() : 0);
    }

    public static int a(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6) {
        return a(obj == null ? 0 : obj.hashCode(), obj2 == null ? 0 : obj2.hashCode(), obj3 == null ? 0 : obj3.hashCode(), obj4 == null ? 0 : obj4.hashCode(), obj5 == null ? 0 : obj5.hashCode(), obj6 != null ? obj6.hashCode() : 0);
    }

    public static int a(int i, int i2) {
        return ((i + 31) * 31) + i2;
    }

    public static int a(int i, int i2, int i3, int i4, int i5, int i6) {
        return ((((((((((i + 31) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6;
    }
}
