package com.google.gdata.data;

import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public interface ValidatingExtension extends Extension {
    void validate(ExtensionPoint extensionPoint) throws ParseException;
}
