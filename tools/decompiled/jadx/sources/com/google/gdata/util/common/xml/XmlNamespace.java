package com.google.gdata.util.common.xml;

import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public class XmlNamespace {
    final String alias;
    final String uri;

    public XmlNamespace(String str) {
        this(null, str);
    }

    public XmlNamespace(String str, String str2) {
        Preconditions.checkNotNull(str2, "Null namespace URI");
        this.alias = str;
        this.uri = str2;
    }

    public final String getAlias() {
        return this.alias;
    }

    public final String getUri() {
        return this.uri;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof XmlNamespace)) {
            return false;
        }
        XmlNamespace xmlNamespace = (XmlNamespace) obj;
        return this.alias == null ? xmlNamespace.alias == null && this.uri.equals(xmlNamespace.uri) : this.alias.equals(xmlNamespace.alias) && this.uri.equals(xmlNamespace.uri);
    }

    public int hashCode() {
        return this.alias == null ? this.uri.hashCode() : this.alias.hashCode() & this.uri.hashCode();
    }
}
