package com.google.common.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* JADX INFO: loaded from: classes3.dex */
public class AtomicDouble extends Number implements Serializable {
    private static final long serialVersionUID = 0;
    private static final AtomicLongFieldUpdater<AtomicDouble> updater = AtomicLongFieldUpdater.newUpdater(AtomicDouble.class, "value");
    private volatile transient long value;

    public AtomicDouble(double d2) {
        this.value = Double.doubleToRawLongBits(d2);
    }

    public AtomicDouble() {
    }

    public final double get() {
        return Double.longBitsToDouble(this.value);
    }

    public final void set(double d2) {
        this.value = Double.doubleToRawLongBits(d2);
    }

    public final void lazySet(double d2) {
        set(d2);
    }

    public final double getAndSet(double d2) {
        return Double.longBitsToDouble(updater.getAndSet(this, Double.doubleToRawLongBits(d2)));
    }

    public final boolean compareAndSet(double d2, double d3) {
        return updater.compareAndSet(this, Double.doubleToRawLongBits(d2), Double.doubleToRawLongBits(d3));
    }

    public final boolean weakCompareAndSet(double d2, double d3) {
        return updater.weakCompareAndSet(this, Double.doubleToRawLongBits(d2), Double.doubleToRawLongBits(d3));
    }

    public final double getAndAdd(double d2) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.value;
            dLongBitsToDouble = Double.longBitsToDouble(j);
        } while (!updater.compareAndSet(this, j, Double.doubleToRawLongBits(dLongBitsToDouble + d2)));
        return dLongBitsToDouble;
    }

    public final double addAndGet(double d2) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.value;
            dLongBitsToDouble = Double.longBitsToDouble(j) + d2;
        } while (!updater.compareAndSet(this, j, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public String toString() {
        return Double.toString(get());
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        set(objectInputStream.readDouble());
    }
}
