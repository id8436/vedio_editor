package com.google.gdata.data.webmastertools;

import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BoolValueConstruct extends ValueConstruct {
    private boolean boolValue;

    public BoolValueConstruct(String str) {
        super(Namespaces.WT_NAMESPACE, str, null);
        setBooleanValue(false);
    }

    @Override // com.google.gdata.data.ValueConstruct
    public boolean equals(Object obj) {
        return super.equals(obj) && this.boolValue == ((BoolValueConstruct) obj).boolValue;
    }

    @Override // com.google.gdata.data.ValueConstruct
    public int hashCode() {
        return getValue().hashCode();
    }

    @Override // com.google.gdata.data.ValueConstruct
    public void setValue(String str) {
        if (str == null) {
            throw new NullPointerException("value can not be null");
        }
        if ("true".equals(str) || "1".equals(str)) {
            setBooleanValue(true);
        } else {
            if ("false".equals(str) || "0".equals(str)) {
                setBooleanValue(false);
                return;
            }
            throw new IllegalArgumentException("Invalid boolean value: " + str);
        }
    }

    public void setBooleanValue(boolean z) {
        this.boolValue = z;
        super.setValue(String.valueOf(z));
    }

    public boolean getBooleanValue() {
        return this.boolValue;
    }
}
