package com.google.gdata.data.introspection;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface IWorkspace {
    ICollection addCollection(String str, String str2, String... strArr);

    List<? extends ICollection> getCollections();
}
