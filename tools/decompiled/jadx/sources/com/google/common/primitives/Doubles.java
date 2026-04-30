package com.google.common.primitives;

import com.behance.sdk.util.BehanceSDKConstants;
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
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Doubles {
    public static final int BYTES = 8;

    @GwtIncompatible("regular expressions")
    static final Pattern FLOATING_POINT_PATTERN = fpPattern();

    private Doubles() {
    }

    public static int hashCode(double d2) {
        return Double.valueOf(d2).hashCode();
    }

    public static int compare(double d2, double d3) {
        return Double.compare(d2, d3);
    }

    public static boolean isFinite(double d2) {
        return (d2 < Double.POSITIVE_INFINITY) & (Double.NEGATIVE_INFINITY < d2);
    }

    public static boolean contains(double[] dArr, double d2) {
        for (double d3 : dArr) {
            if (d3 == d2) {
                return true;
            }
        }
        return false;
    }

    public static int indexOf(double[] dArr, double d2) {
        return indexOf(dArr, d2, 0, dArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(double[] dArr, double d2, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (dArr[i3] == d2) {
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
    public static int indexOf(double[] r8, double[] r9) {
        /*
            r1 = 0
            java.lang.String r0 = "array"
            com.google.common.base.Preconditions.checkNotNull(r8, r0)
            java.lang.String r0 = "target"
            com.google.common.base.Preconditions.checkNotNull(r9, r0)
            int r0 = r9.length
            if (r0 != 0) goto L11
        L10:
            return r1
        L11:
            r0 = r1
        L12:
            int r2 = r8.length
            int r3 = r9.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2f
            r2 = r1
        L1a:
            int r3 = r9.length
            if (r2 >= r3) goto L2d
            int r3 = r0 + r2
            r4 = r8[r3]
            r6 = r9[r2]
            int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.Doubles.indexOf(double[], double[]):int");
    }

    public static int lastIndexOf(double[] dArr, double d2) {
        return lastIndexOf(dArr, d2, 0, dArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(double[] dArr, double d2, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (dArr[i3] == d2) {
                return i3;
            }
        }
        return -1;
    }

    public static double min(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double dMin = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMin = Math.min(dMin, dArr[i]);
        }
        return dMin;
    }

    public static double max(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double dMax = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMax = Math.max(dMax, dArr[i]);
        }
        return dMax;
    }

    public static double[] concat(double[]... dArr) {
        int length = 0;
        for (double[] dArr2 : dArr) {
            length += dArr2.length;
        }
        double[] dArr3 = new double[length];
        int length2 = 0;
        for (double[] dArr4 : dArr) {
            System.arraycopy(dArr4, 0, dArr3, length2, dArr4.length);
            length2 += dArr4.length;
        }
        return dArr3;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class DoubleConverter extends Converter<String, Double> implements Serializable {
        static final DoubleConverter INSTANCE = new DoubleConverter();
        private static final long serialVersionUID = 1;

        private DoubleConverter() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public Double doForward(String str) {
            return Double.valueOf(str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public String doBackward(Double d2) {
            return d2.toString();
        }

        public String toString() {
            return "Doubles.stringConverter()";
        }

        private Object readResolve() {
            return INSTANCE;
        }
    }

    @Beta
    public static Converter<String, Double> stringConverter() {
        return DoubleConverter.INSTANCE;
    }

    public static double[] ensureCapacity(double[] dArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Invalid minLength: %s", Integer.valueOf(i));
        Preconditions.checkArgument(i2 >= 0, "Invalid padding: %s", Integer.valueOf(i2));
        return dArr.length < i ? copyOf(dArr, i + i2) : dArr;
    }

    private static double[] copyOf(double[] dArr, int i) {
        double[] dArr2 = new double[i];
        System.arraycopy(dArr, 0, dArr2, 0, Math.min(dArr.length, i));
        return dArr2;
    }

    public static String join(String str, double... dArr) {
        Preconditions.checkNotNull(str);
        if (dArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(dArr.length * 12);
        sb.append(dArr[0]);
        for (int i = 1; i < dArr.length; i++) {
            sb.append(str).append(dArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<double[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    /* JADX INFO: loaded from: classes3.dex */
    enum LexicographicalComparator implements Comparator<double[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(double[] dArr, double[] dArr2) {
            int iMin = Math.min(dArr.length, dArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Doubles.compare(dArr[i], dArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return dArr.length - dArr2.length;
        }
    }

    public static double[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof DoubleArrayAsList) {
            return ((DoubleArrayAsList) collection).toDoubleArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = ((Number) Preconditions.checkNotNull(array[i])).doubleValue();
        }
        return dArr;
    }

    public static List<Double> asList(double... dArr) {
        return dArr.length == 0 ? Collections.emptyList() : new DoubleArrayAsList(dArr);
    }

    /* JADX INFO: loaded from: classes3.dex */
    @GwtCompatible
    class DoubleArrayAsList extends AbstractList<Double> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;
        final double[] array;
        final int end;
        final int start;

        DoubleArrayAsList(double[] dArr) {
            this(dArr, 0, dArr.length);
        }

        DoubleArrayAsList(double[] dArr, int i, int i2) {
            this.array = dArr;
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
        public Double get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Double.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Double) && Doubles.indexOf(this.array, ((Double) obj).doubleValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            if (!(obj instanceof Double) || (iIndexOf = Doubles.indexOf(this.array, ((Double) obj).doubleValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iIndexOf - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iLastIndexOf;
            if (!(obj instanceof Double) || (iLastIndexOf = Doubles.lastIndexOf(this.array, ((Double) obj).doubleValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iLastIndexOf - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double set(int i, Double d2) {
            Preconditions.checkElementIndex(i, size());
            double d3 = this.array[this.start + i];
            this.array[this.start + i] = ((Double) Preconditions.checkNotNull(d2)).doubleValue();
            return Double.valueOf(d3);
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            return i == i2 ? Collections.emptyList() : new DoubleArrayAsList(this.array, this.start + i, this.start + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof DoubleArrayAsList) {
                DoubleArrayAsList doubleArrayAsList = (DoubleArrayAsList) obj;
                int size = size();
                if (doubleArrayAsList.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.array[this.start + i] != doubleArrayAsList.array[doubleArrayAsList.start + i]) {
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
                iHashCode = (iHashCode * 31) + Doubles.hashCode(this.array[i]);
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

        double[] toDoubleArray() {
            int size = size();
            double[] dArr = new double[size];
            System.arraycopy(this.array, this.start, dArr, 0, size);
            return dArr;
        }
    }

    @GwtIncompatible("regular expressions")
    private static Pattern fpPattern() {
        return Pattern.compile("[+-]?(?:NaN|Infinity|" + ("(?:\\d++(?:\\.\\d*+)?|\\.\\d++)(?:[eE][+-]?\\d++)?[fFdD]?") + BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR + ("0[xX](?:\\p{XDigit}++(?:\\.\\p{XDigit}*+)?|\\.\\p{XDigit}++)[pP][+-]?\\d++[fFdD]?") + ")");
    }

    @Beta
    @GwtIncompatible("regular expressions")
    @Nullable
    public static Double tryParse(String str) {
        if (FLOATING_POINT_PATTERN.matcher(str).matches()) {
            try {
                return Double.valueOf(Double.parseDouble(str));
            } catch (NumberFormatException e2) {
            }
        }
        return null;
    }
}
