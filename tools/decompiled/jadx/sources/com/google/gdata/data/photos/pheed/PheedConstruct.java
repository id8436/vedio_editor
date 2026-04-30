package com.google.gdata.data.photos.pheed;

import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class PheedConstruct extends ValueConstruct {
    public PheedConstruct(String str) {
        this(str, null);
    }

    public PheedConstruct(String str, String str2) {
        super(Namespaces.PHEED_NAMESPACE, str, null, str2);
        setRequired(false);
        if (str2 == null) {
            setValue("");
        }
    }
}
