package com.facebook.drawee.e;

import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ScalingUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class r {
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static q a(Drawable drawable) {
        if (drawable == 0) {
            return null;
        }
        if (drawable instanceof q) {
            return (q) drawable;
        }
        if (drawable instanceof d) {
            return a(((d) drawable).a());
        }
        if (drawable instanceof a) {
            a aVar = (a) drawable;
            int iA = aVar.a();
            for (int i = 0; i < iA; i++) {
                q qVarA = a(aVar.a(i));
                if (qVarA != null) {
                    return qVarA;
                }
            }
        }
        return null;
    }
}
