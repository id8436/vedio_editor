package org.apache.commons.lang3.mutable;

/* JADX INFO: loaded from: classes3.dex */
public class MutableByte extends Number implements Comparable<MutableByte>, Mutable<Number> {
    private static final long serialVersionUID = -1585823265;
    private byte value;

    public MutableByte() {
    }

    public MutableByte(byte b2) {
        this.value = b2;
    }

    public MutableByte(Number number) {
        this.value = number.byteValue();
    }

    public MutableByte(String str) throws NumberFormatException {
        this.value = Byte.parseByte(str);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue, reason: merged with bridge method [inline-methods] */
    public Number getValue2() {
        return Byte.valueOf(this.value);
    }

    public void setValue(byte b2) {
        this.value = b2;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.byteValue();
    }

    public void increment() {
        this.value = (byte) (this.value + 1);
    }

    public void decrement() {
        this.value = (byte) (this.value - 1);
    }

    public void add(byte b2) {
        this.value = (byte) (this.value + b2);
    }

    public void add(Number number) {
        this.value = (byte) (this.value + number.byteValue());
    }

    public void subtract(byte b2) {
        this.value = (byte) (this.value - b2);
    }

    public void subtract(Number number) {
        this.value = (byte) (this.value - number.byteValue());
    }

    @Override // java.lang.Number
    public byte byteValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public Byte toByte() {
        return Byte.valueOf(byteValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableByte) && this.value == ((MutableByte) obj).byteValue();
    }

    public int hashCode() {
        return this.value;
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableByte mutableByte) {
        byte b2 = mutableByte.value;
        if (this.value < b2) {
            return -1;
        }
        return this.value == b2 ? 0 : 1;
    }

    public String toString() {
        return String.valueOf((int) this.value);
    }
}
