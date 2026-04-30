package com.google.gdata.data.extensions;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "deleted", nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class Deleted extends AbstractExtension {
    public Deleted() {
        super(Namespaces.gNs, "deleted");
    }
}
