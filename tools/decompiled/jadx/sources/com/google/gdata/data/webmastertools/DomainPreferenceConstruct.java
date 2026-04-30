package com.google.gdata.data.webmastertools;

import com.google.gdata.data.EnumConstruct;
import java.util.HashSet;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DomainPreferenceConstruct extends EnumConstruct {
    public DomainPreferenceConstruct(String str) {
        super(Namespaces.WT_NAMESPACE, str, null, getValues());
        setPreference(DomainPreference.getDefault());
    }

    private static HashSet<String> getValues() {
        HashSet<String> hashSet = new HashSet<>();
        for (DomainPreference domainPreference : DomainPreference.values()) {
            hashSet.add(domainPreference.toString());
        }
        return hashSet;
    }

    @Override // com.google.gdata.data.ValueConstruct
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return getValue().equals(((DomainPreferenceConstruct) obj).getValue());
        }
        return false;
    }

    @Override // com.google.gdata.data.ValueConstruct
    public int hashCode() {
        return getValue().hashCode();
    }

    @Override // com.google.gdata.data.EnumConstruct, com.google.gdata.data.ValueConstruct
    public void setValue(String str) throws IllegalArgumentException, NullPointerException {
        if (str == null) {
            throw new NullPointerException("value cannot be null");
        }
        if (!this.values.contains(str)) {
            throw new IllegalArgumentException("The argument is not a valid preference");
        }
        super.setValue(str);
    }

    public void setPreference(DomainPreference domainPreference) {
        super.setValue(domainPreference.toString());
    }

    public DomainPreference getPreference() {
        return DomainPreference.fromString(getValue());
    }
}
