package com.google.android.gms.common.internal;

import com.google.gdata.data.Category;
import com.google.gdata.data.analytics.Engagement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class zzu {

    public final class zza {
        private final Object zzCG;
        private final List<String> zzTZ;

        private zza(Object obj) {
            this.zzCG = zzv.zzr(obj);
            this.zzTZ = new ArrayList();
        }

        public String toString() {
            StringBuilder sbAppend = new StringBuilder(100).append(this.zzCG.getClass().getSimpleName()).append(Category.SCHEME_PREFIX);
            int size = this.zzTZ.size();
            for (int i = 0; i < size; i++) {
                sbAppend.append(this.zzTZ.get(i));
                if (i < size - 1) {
                    sbAppend.append(", ");
                }
            }
            return sbAppend.append(Category.SCHEME_SUFFIX).toString();
        }

        public zza zzg(String str, Object obj) {
            this.zzTZ.add(((String) zzv.zzr(str)) + Engagement.Comparison.EQ + String.valueOf(obj));
            return this;
        }
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static zza zzq(Object obj) {
        return new zza(obj);
    }
}
