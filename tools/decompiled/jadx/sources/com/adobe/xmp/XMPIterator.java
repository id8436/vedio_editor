package com.adobe.xmp;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public interface XMPIterator extends Iterator {
    void skipSiblings();

    void skipSubtree();
}
