package com.google.gdata.data.webmastertools;

import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RegionCodeValueConstruct extends ValueConstruct {
    public static final String DEFAULT_REGION_CODE = "ZZ";

    public RegionCodeValueConstruct(String str) {
        super(Namespaces.WT_NAMESPACE, str, null);
        setValue(DEFAULT_REGION_CODE);
    }

    @Override // com.google.gdata.data.ValueConstruct
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return getValue().equals(((RegionCodeValueConstruct) obj).getValue());
        }
        return false;
    }

    @Override // com.google.gdata.data.ValueConstruct
    public int hashCode() {
        return getValue().hashCode();
    }

    @Override // com.google.gdata.data.ValueConstruct
    public void setValue(String str) throws IllegalArgumentException, NullPointerException {
        if (str == null) {
            throw new NullPointerException("value cannot be null");
        }
        super.setValue(str);
    }
}
