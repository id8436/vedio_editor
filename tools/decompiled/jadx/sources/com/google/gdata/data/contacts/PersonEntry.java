package com.google.gdata.data.contacts;

import com.google.gdata.data.BaseEntry;

/* JADX INFO: loaded from: classes3.dex */
public class PersonEntry extends BasePersonEntry<PersonEntry> {
    public PersonEntry() {
    }

    public PersonEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.contacts.BasePersonEntry
    public String toString() {
        return "{PersonEntry " + super.toString() + "}";
    }
}
