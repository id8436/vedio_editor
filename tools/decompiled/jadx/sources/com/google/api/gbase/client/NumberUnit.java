package com.google.api.gbase.client;

import java.lang.Number;

/* JADX INFO: loaded from: classes3.dex */
public class NumberUnit<T extends Number> {
    private final String unit;
    private final T value;

    public NumberUnit(T t, String str) {
        this.value = t;
        this.unit = str;
    }

    public T getValue() {
        return this.value;
    }

    public String getUnit() {
        return this.unit;
    }

    public String toString() {
        return this.value + " " + this.unit;
    }

    public int hashCode() {
        return (this.value.hashCode() * 47) + this.unit.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NumberUnit)) {
            return false;
        }
        NumberUnit numberUnit = (NumberUnit) obj;
        return this.value.equals(numberUnit.value) && this.unit.equals(numberUnit.unit);
    }
}
