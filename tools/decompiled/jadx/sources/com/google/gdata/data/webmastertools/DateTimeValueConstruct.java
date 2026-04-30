package com.google.gdata.data.webmastertools;

import com.google.gdata.data.DateTime;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DateTimeValueConstruct extends ValueConstruct {
    private DateTime dateTimeValue;

    public DateTimeValueConstruct(String str) {
        super(Namespaces.WT_NAMESPACE, str, null);
        this.dateTimeValue = null;
    }

    @Override // com.google.gdata.data.ValueConstruct
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        DateTimeValueConstruct dateTimeValueConstruct = (DateTimeValueConstruct) obj;
        if (this.dateTimeValue == null) {
            return dateTimeValueConstruct.dateTimeValue == null;
        }
        return this.dateTimeValue.equals(dateTimeValueConstruct.dateTimeValue);
    }

    @Override // com.google.gdata.data.ValueConstruct
    public int hashCode() {
        if (this.dateTimeValue == null) {
            return 0;
        }
        return this.dateTimeValue.hashCode();
    }

    @Override // com.google.gdata.data.ValueConstruct
    public void setValue(String str) {
        if (str == null) {
            throw new NullPointerException("value must not be null");
        }
        try {
            setDateTime(DateTime.parseDateTime(str));
        } catch (NumberFormatException e2) {
            throw new IllegalArgumentException("Invalid date", e2);
        }
    }

    public void setDateTime(DateTime dateTime) {
        if (dateTime == null) {
            throw new NullPointerException("value must not be null");
        }
        this.dateTimeValue = dateTime;
        super.setValue(dateTime.toString());
    }

    public DateTime getDateTime() {
        return this.dateTimeValue;
    }
}
