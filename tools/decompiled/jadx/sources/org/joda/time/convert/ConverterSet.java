package org.joda.time.convert;

/* JADX INFO: loaded from: classes3.dex */
class ConverterSet {
    private final Converter[] iConverters;
    private Entry[] iSelectEntries = new Entry[16];

    ConverterSet(Converter[] converterArr) {
        this.iConverters = converterArr;
    }

    Converter select(Class<?> cls) throws IllegalStateException {
        Entry[] entryArr = this.iSelectEntries;
        int length = entryArr.length;
        int iHashCode = cls == null ? 0 : cls.hashCode() & (length - 1);
        while (true) {
            Entry entry = entryArr[iHashCode];
            if (entry != null) {
                if (entry.iType == cls) {
                    return entry.iConverter;
                }
                int i = iHashCode + 1;
                iHashCode = i >= length ? 0 : i;
            } else {
                Converter converterSelectSlow = selectSlow(this, cls);
                Entry entry2 = new Entry(cls, converterSelectSlow);
                Entry[] entryArr2 = (Entry[]) entryArr.clone();
                entryArr2[iHashCode] = entry2;
                for (int i2 = 0; i2 < length; i2++) {
                    if (entryArr2[i2] == null) {
                        this.iSelectEntries = entryArr2;
                        return converterSelectSlow;
                    }
                }
                int i3 = length << 1;
                Entry[] entryArr3 = new Entry[i3];
                for (int i4 = 0; i4 < length; i4++) {
                    Entry entry3 = entryArr2[i4];
                    Class<?> cls2 = entry3.iType;
                    int iHashCode2 = cls2 == null ? 0 : cls2.hashCode() & (i3 - 1);
                    while (entryArr3[iHashCode2] != null) {
                        iHashCode2++;
                        if (iHashCode2 >= i3) {
                            iHashCode2 = 0;
                        }
                    }
                    entryArr3[iHashCode2] = entry3;
                }
                this.iSelectEntries = entryArr3;
                return converterSelectSlow;
            }
        }
    }

    int size() {
        return this.iConverters.length;
    }

    void copyInto(Converter[] converterArr) {
        System.arraycopy(this.iConverters, 0, converterArr, 0, this.iConverters.length);
    }

    ConverterSet add(Converter converter, Converter[] converterArr) {
        Converter[] converterArr2 = this.iConverters;
        int length = converterArr2.length;
        for (int i = 0; i < length; i++) {
            Converter converter2 = converterArr2[i];
            if (converter.equals(converter2)) {
                if (converterArr != null) {
                    converterArr[0] = null;
                    return this;
                }
                return this;
            }
            if (converter.getSupportedType() == converter2.getSupportedType()) {
                Converter[] converterArr3 = new Converter[length];
                for (int i2 = 0; i2 < length; i2++) {
                    if (i2 != i) {
                        converterArr3[i2] = converterArr2[i2];
                    } else {
                        converterArr3[i2] = converter;
                    }
                }
                if (converterArr != null) {
                    converterArr[0] = converter2;
                }
                return new ConverterSet(converterArr3);
            }
        }
        Converter[] converterArr4 = new Converter[length + 1];
        System.arraycopy(converterArr2, 0, converterArr4, 0, length);
        converterArr4[length] = converter;
        if (converterArr != null) {
            converterArr[0] = null;
        }
        return new ConverterSet(converterArr4);
    }

    ConverterSet remove(Converter converter, Converter[] converterArr) {
        Converter[] converterArr2 = this.iConverters;
        int length = converterArr2.length;
        for (int i = 0; i < length; i++) {
            if (converter.equals(converterArr2[i])) {
                return remove(i, converterArr);
            }
        }
        if (converterArr != null) {
            converterArr[0] = null;
            return this;
        }
        return this;
    }

    ConverterSet remove(int i, Converter[] converterArr) {
        int i2;
        Converter[] converterArr2 = this.iConverters;
        int length = converterArr2.length;
        if (i >= length) {
            throw new IndexOutOfBoundsException();
        }
        if (converterArr != null) {
            converterArr[0] = converterArr2[i];
        }
        Converter[] converterArr3 = new Converter[length - 1];
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            if (i3 != i) {
                i2 = i4 + 1;
                converterArr3[i4] = converterArr2[i3];
            } else {
                i2 = i4;
            }
            i3++;
            i4 = i2;
        }
        return new ConverterSet(converterArr3);
    }

    private static Converter selectSlow(ConverterSet converterSet, Class<?> cls) {
        Converter[] converterArr = converterSet.iConverters;
        int length = converterArr.length;
        int i = length;
        ConverterSet converterSetRemove = converterSet;
        while (true) {
            int i2 = i - 1;
            if (i2 >= 0) {
                Converter converter = converterArr[i2];
                Class<?> supportedType = converter.getSupportedType();
                if (supportedType == cls) {
                    return converter;
                }
                if (supportedType == null || (cls != null && !supportedType.isAssignableFrom(cls))) {
                    converterSetRemove = converterSetRemove.remove(i2, (Converter[]) null);
                    converterArr = converterSetRemove.iConverters;
                    length = converterArr.length;
                }
                i = i2;
            } else {
                if (cls == null || length == 0) {
                    return null;
                }
                if (length == 1) {
                    return converterArr[0];
                }
                Converter[] converterArr2 = converterArr;
                ConverterSet converterSet2 = converterSetRemove;
                int length2 = length;
                while (true) {
                    int i3 = length - 1;
                    if (i3 < 0) {
                        break;
                    }
                    Class<?> supportedType2 = converterArr2[i3].getSupportedType();
                    ConverterSet converterSetRemove2 = converterSet2;
                    int i4 = i3;
                    int i5 = length2;
                    while (true) {
                        i5--;
                        if (i5 >= 0) {
                            if (i5 != i4 && converterArr2[i5].getSupportedType().isAssignableFrom(supportedType2)) {
                                converterSetRemove2 = converterSetRemove2.remove(i5, (Converter[]) null);
                                converterArr2 = converterSetRemove2.iConverters;
                                length2 = converterArr2.length;
                                i4 = length2 - 1;
                            }
                        }
                    }
                    length = i4;
                    converterSet2 = converterSetRemove2;
                }
                if (length2 == 1) {
                    return converterArr2[0];
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to find best converter for type \"");
                sb.append(cls.getName());
                sb.append("\" from remaining set: ");
                for (int i6 = 0; i6 < length2; i6++) {
                    Converter converter2 = converterArr2[i6];
                    Class<?> supportedType3 = converter2.getSupportedType();
                    sb.append(converter2.getClass().getName());
                    sb.append('[');
                    sb.append(supportedType3 == null ? null : supportedType3.getName());
                    sb.append("], ");
                }
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    class Entry {
        final Converter iConverter;
        final Class<?> iType;

        Entry(Class<?> cls, Converter converter) {
            this.iType = cls;
            this.iConverter = converter;
        }
    }
}
