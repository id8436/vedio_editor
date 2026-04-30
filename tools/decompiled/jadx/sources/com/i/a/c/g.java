package com.i.a.c;

import java.util.Comparator;

/* JADX INFO: compiled from: MemoryCacheUtils.java */
/* JADX INFO: loaded from: classes3.dex */
final class g implements Comparator<String> {
    g() {
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(String str, String str2) {
        return str.substring(0, str.lastIndexOf(c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR)).compareTo(str2.substring(0, str2.lastIndexOf(c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR)));
    }
}
