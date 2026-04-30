package com.google.gdata.data;

import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class EnumConstruct extends ValueConstruct {
    protected Set<String> values;

    protected EnumConstruct(XmlNamespace xmlNamespace, String str, String str2, Set<String> set) {
        this(xmlNamespace, str, str2, set, null);
    }

    protected EnumConstruct(XmlNamespace xmlNamespace, String str, String str2, Set<String> set, String str3) {
        super(xmlNamespace, str, str2);
        if (set == null) {
            throw new NullPointerException("Null values set");
        }
        this.values = set;
        if (str3 != null) {
            setValue(str3);
            setImmutable(true);
        }
    }

    @Override // com.google.gdata.data.ValueConstruct
    public void setValue(String str) throws IllegalArgumentException {
        if (!this.values.contains(str)) {
            throw new IllegalArgumentException("Invalid " + this.localName + " value:" + str);
        }
        super.setValue(str);
    }
}
