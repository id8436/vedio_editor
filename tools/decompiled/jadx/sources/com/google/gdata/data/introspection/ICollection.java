package com.google.gdata.data.introspection;

import com.google.gdata.data.ITextConstruct;
import com.google.gdata.data.Reference;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ICollection extends Reference {
    List<String> getAcceptList();

    ITextConstruct getTitle();
}
