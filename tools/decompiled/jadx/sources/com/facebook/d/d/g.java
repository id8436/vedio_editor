package com.facebook.d.d;

import java.util.Arrays;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Objects.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {
    @CheckReturnValue
    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int a(@Nullable Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static i a(Object obj) {
        return new i(a(obj.getClass()));
    }

    private static String a(Class<?> cls) {
        String strReplaceAll = cls.getName().replaceAll("\\$[0-9]+", "\\$");
        int iLastIndexOf = strReplaceAll.lastIndexOf(36);
        if (iLastIndexOf == -1) {
            iLastIndexOf = strReplaceAll.lastIndexOf(46);
        }
        return strReplaceAll.substring(iLastIndexOf + 1);
    }
}
