package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Floats {
    public static final int BYTES = 4;

    private Floats() {
    }

    public static int hashCode(float f2) {
        return Float.valueOf(f2).hashCode();
    }

    public static int compare(float f2, float f3) {
        return Float.compare(f2, f3);
    }

    public static boolean isFinite(float f2) {
        return (f2 < Float.POSITIVE_INFINITY) & (Float.NEGATIVE_INFINITY < f2);
    }

    public static boolean contains(float[] fArr, float f2) {
        for (float f3 : fArr) {
            if (f3 == f2) {
                return true;
            }
        }
        return false;
    }

    public static int indexOf(float[] fArr, float f2) {
        return indexOf(fArr, f2, 0, fArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(float[] fArr, float f2, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (fArr[i3] == f2) {
                return i3;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOf(float[] r5, float[] r6) {
        /*
            r1 = 0
            java.lang.String r0 = "array"
            com.google.common.base.Preconditions.checkNotNull(r5, r0)
            java.lang.String r0 = "target"
            com.google.common.base.Preconditions.checkNotNull(r6, r0)
            int r0 = r6.length
            if (r0 != 0) goto L11
        L10:
            return r1
        L11:
            r0 = r1
        L12:
            int r2 = r5.length
            int r3 = r6.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2f
            r2 = r1
        L1a:
            int r3 = r6.length
            if (r2 >= r3) goto L2d
            int r3 = r0 + r2
            r3 = r5[r3]
            r4 = r6[r2]
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 == 0) goto L2a
            int r0 = r0 + 1
            goto L12
        L2a:
            int r2 = r2 + 1
            goto L1a
        L2d:
            r1 = r0
            goto L10
        L2f:
            r1 = -1
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.Floats.indexOf(float[], float[]):int");
    }

    public static int lastIndexOf(float[] fArr, float f2) {
        return lastIndexOf(fArr, f2, 0, fArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(float[] fArr, float f2, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (fArr[i3] == f2) {
                return i3;
            }
        }
        return -1;
    }

    public static float min(float... fArr) {
        Preconditions.checkArgument(fArr.length > 0);
        float fMin = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            fMin = Math.min(fMin, fArr[i]);
        }
        return fMin;
    }

    public static float max(float... fArr) {
        Preconditions.checkArgument(fArr.length > 0);
        float fMax = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            fMax = Math.max(fMax, fArr[i]);
        }
        return fMax;
    }

    public static float[] concat(float[]... fArr) {
        int length = 0;
        for (float[] fArr2 : fArr) {
            length += fArr2.length;
        }
        float[] fArr3 = new float[length];
        int length2 = 0;
        for (float[] fArr4 : fArr) {
            System.arraycopy(fArr4, 0, fArr3, length2, fArr4.length);
            length2 += fArr4.length;
        }
        return fArr3;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class FloatConverter extends Converter<String, Float> implements Serializable {
        static final FloatConverter INSTANCE = new FloatConverter();
        private static final long serialVersionUID = 1;

        private FloatConverter() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public Float doForward(String str) {
            return Float.valueOf(str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public String doBackward(Float f2) {
            return f2.toString();
        }

        public String toString() {
            return "Floats.stringConverter()";
        }

        private Object readResolve() {
            return INSTANCE;
        }
    }

    @Beta
    public static Converter<String, Float> stringConverter() {
        return FloatConverter.INSTANCE;
    }

    public static float[] ensureCapacity(float[] fArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Invalid minLength: %s", Integer.valueOf(i));
        Preconditions.checkArgument(i2 >= 0, "Invalid padding: %s", Integer.valueOf(i2));
        return fArr.length < i ? copyOf(fArr, i + i2) : fArr;
    }

    private static float[] copyOf(float[] fArr, int i) {
        float[] fArr2 = new float[i];
        System.arraycopy(fArr, 0, fArr2, 0, Math.min(fArr.length, i));
        return fArr2;
    }

    public static String join(String str, float... fArr) {
        Preconditions.checkNotNull(str);
        if (fArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(fArr.length * 12);
        sb.append(fArr[0]);
        for (int i = 1; i < fArr.length; i++) {
            sb.append(str).append(fArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<float[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    /* JADX INFO: loaded from: classes3.dex */
    enum LexicographicalComparator implements Comparator<float[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(float[] fArr, float[] fArr2) {
            int iMin = Math.min(fArr.length, fArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Floats.compare(fArr[i], fArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return fArr.length - fArr2.length;
        }
    }

    public static float[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof FloatArrayAsList) {
            return ((FloatArrayAsList) collection).toFloatArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        float[] fArr = new float[length];
        for (int i = 0; i < length; i++) {
            fArr[i] = ((Number) Preconditions.checkNotNull(array[i])).floatValue();
        }
        return fArr;
    }

    public static List<Float> asList(float... fArr) {
        return fArr.length == 0 ? Collections.emptyList() : new FloatArrayAsList(fArr);
    }

    /* JADX INFO: loaded from: classes3.dex */
    @GwtCompatible
    class FloatArrayAsList extends AbstractList<Float> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;
        final float[] array;
        final int end;
        final int start;

        FloatArrayAsList(float[] fArr) {
            this(fArr, 0, fArr.length);
        }

        FloatArrayAsList(float[] fArr, int i, int i2) {
            this.array = fArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public Float get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Float.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Float) && Floats.indexOf(this.array, ((Float) obj).floatValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            if (!(obj instanceof Float) || (iIndexOf = Floats.indexOf(this.array, ((Float) obj).floatValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iIndexOf - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iLastIndexOf;
            if (!(obj instanceof Float) || (iLastIndexOf = Floats.lastIndexOf(this.array, ((Float) obj).floatValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iLastIndexOf - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public Float set(int i, Float f2) {
            Preconditions.checkElementIndex(i, size());
            float f3 = this.array[this.start + i];
            this.array[this.start + i] = ((Float) Preconditions.checkNotNull(f2)).floatValue();
            return Float.valueOf(f3);
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Float> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            return i == i2 ? Collections.emptyList() : new FloatArrayAsList(this.array, this.start + i, this.start + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof FloatArrayAsList) {
                FloatArrayAsList floatArrayAsList = (FloatArrayAsList) obj;
                int size = size();
                if (floatArrayAsList.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.array[this.start + i] != floatArrayAsList.array[floatArrayAsList.start + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode = 1;
            for (int i = this.start; i < this.end; i++) {
                iHashCode = (iHashCode * 31) + Floats.hashCode(this.array[i]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 12);
            sb.append('[').append(this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i < this.end) {
                    sb.append(", ").append(this.array[i]);
                } else {
                    return sb.append(']').toString();
                }
            }
        }

        float[] toFloatArray() {
            int size = size();
            float[] fArr = new float[size];
            System.arraycopy(this.array, this.start, fArr, 0, size);
            return fArr;
        }
    }

    @Beta
    @GwtIncompatible("regular expressions")
    @Nullable
    public static Float tryParse(String str) {
        if (Doubles.FLOATING_POINT_PATTERN.matcher(str).matches()) {
            try {
                return Float.valueOf(Float.parseFloat(str));
            } catch (NumberFormatException e2) {
            }
        }
        return null;
    }
}
