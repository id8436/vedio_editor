package com.facebook.imagepipeline.d;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: Priority.java */
/* JADX INFO: loaded from: classes2.dex */
public enum c {
    LOW,
    MEDIUM,
    HIGH;

    public static c a(@Nullable c cVar, @Nullable c cVar2) {
        if (cVar == null) {
            return cVar2;
        }
        return (cVar2 != null && cVar.ordinal() <= cVar2.ordinal()) ? cVar2 : cVar;
    }
}
