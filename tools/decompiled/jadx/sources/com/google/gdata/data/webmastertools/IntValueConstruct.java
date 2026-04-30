package com.google.gdata.data.webmastertools;

import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public abstract class IntValueConstruct extends ValueConstruct {
    private int intValue;

    public IntValueConstruct(String str) {
        super(Namespaces.WT_NAMESPACE, str, null);
        setIntValue(0);
    }

    @Override // com.google.gdata.data.ValueConstruct
    public boolean equals(Object obj) {
        return super.equals(obj) && this.intValue == ((IntValueConstruct) obj).intValue;
    }

    @Override // com.google.gdata.data.ValueConstruct
    public int hashCode() {
        return this.intValue;
    }

    @Override // com.google.gdata.data.ValueConstruct
    public void setValue(String str) {
        if (str == null) {
            throw new NullPointerException("value can not be null");
        }
        try {
            setIntValue(Integer.valueOf(Integer.parseInt(str)).intValue());
        } catch (NumberFormatException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public void setIntValue(int i) {
        this.intValue = i;
        super.setValue(String.valueOf(i));
    }

    public int getIntValue() {
        return this.intValue;
    }
}
