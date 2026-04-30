package com.adobe.creativesdk.foundation.internal.storage.model.util;

import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeListSectionsIndexSet {
    private HashSet<Integer> _sectionIndexSet = new HashSet<>();

    public void add(int i) {
        this._sectionIndexSet.add(Integer.valueOf(i));
    }

    boolean contains(int i) {
        return this._sectionIndexSet.contains(Integer.valueOf(i));
    }
}
