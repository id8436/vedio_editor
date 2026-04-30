package org.mortbay.util;

import java.util.Enumeration;

/* JADX INFO: loaded from: classes3.dex */
public interface Attributes {
    void clearAttributes();

    Object getAttribute(String str);

    Enumeration getAttributeNames();

    void removeAttribute(String str);

    void setAttribute(String str, Object obj);
}
