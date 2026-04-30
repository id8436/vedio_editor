package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Comparator;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes3.dex */
public final class UnsignedBytes {
    public static final byte MAX_POWER_OF_TWO = -128;
    public static final byte MAX_VALUE = -1;
    private static final int UNSIGNED_MASK = 255;

    private UnsignedBytes() {
    }

    public static int toInt(byte b2) {
        return b2 & MAX_VALUE;
    }

    public static byte checkedCast(long j) {
        if ((j >> 8) != 0) {
            throw new IllegalArgumentException("Out of range: " + j);
        }
        return (byte) j;
    }

    public static byte saturatedCast(long j) {
        if (j > toInt((byte) -1)) {
            return (byte) -1;
        }
        if (j < 0) {
            return (byte) 0;
        }
        return (byte) j;
    }

    public static int compare(byte b2, byte b3) {
        return toInt(b2) - toInt(b3);
    }

    public static byte min(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        int i = toInt(bArr[0]);
        for (int i2 = 1; i2 < bArr.length; i2++) {
            int i3 = toInt(bArr[i2]);
            if (i3 < i) {
                i = i3;
            }
        }
        return (byte) i;
    }

    public static byte max(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        int i = toInt(bArr[0]);
        for (int i2 = 1; i2 < bArr.length; i2++) {
            int i3 = toInt(bArr[i2]);
            if (i3 > i) {
                i = i3;
            }
        }
        return (byte) i;
    }

    @Beta
    public static String toString(byte b2) {
        return toString(b2, 10);
    }

    @Beta
    public static String toString(byte b2, int i) {
        Preconditions.checkArgument(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", Integer.valueOf(i));
        return Integer.toString(toInt(b2), i);
    }

    @Beta
    public static byte parseUnsignedByte(String str) {
        return parseUnsignedByte(str, 10);
    }

    @Beta
    public static byte parseUnsignedByte(String str, int i) {
        int i2 = Integer.parseInt((String) Preconditions.checkNotNull(str), i);
        if ((i2 >> 8) == 0) {
            return (byte) i2;
        }
        throw new NumberFormatException("out of range: " + i2);
    }

    public static String join(String str, byte... bArr) {
        Preconditions.checkNotNull(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * (str.length() + 3));
        sb.append(toInt(bArr[0]));
        for (int i = 1; i < bArr.length; i++) {
            sb.append(str).append(toString(bArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<byte[]> lexicographicalComparator() {
        return LexicographicalComparatorHolder.BEST_COMPARATOR;
    }

    @VisibleForTesting
    static Comparator<byte[]> lexicographicalComparatorJavaImpl() {
        return LexicographicalComparatorHolder.PureJavaComparator.INSTANCE;
    }

    @VisibleForTesting
    class LexicographicalComparatorHolder {
        static final String UNSAFE_COMPARATOR_NAME = LexicographicalComparatorHolder.class.getName() + "$UnsafeComparator";
        static final Comparator<byte[]> BEST_COMPARATOR = getBestComparator();

        LexicographicalComparatorHolder() {
        }

        @VisibleForTesting
        enum UnsafeComparator implements Comparator<byte[]> {
            INSTANCE;

            static final boolean BIG_ENDIAN = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);
            static final Unsafe theUnsafe = getUnsafe();
            static final int BYTE_ARRAY_BASE_OFFSET = theUnsafe.arrayBaseOffset(byte[].class);

            static {
                if (theUnsafe.arrayIndexScale(byte[].class) != 1) {
                    throw new AssertionError();
                }
            }

            private static Unsafe getUnsafe() {
                try {
                    return Unsafe.getUnsafe();
                } catch (SecurityException e2) {
                    try {
                        return (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.common.primitives.UnsignedBytes.LexicographicalComparatorHolder.UnsafeComparator.1
                            @Override // java.security.PrivilegedExceptionAction
                            public Unsafe run() throws Exception {
                                for (Field field : Unsafe.class.getDeclaredFields()) {
                                    field.setAccessible(true);
                                    Object obj = field.get(null);
                                    if (Unsafe.class.isInstance(obj)) {
                                        return (Unsafe) Unsafe.class.cast(obj);
                                    }
                                }
                                throw new NoSuchFieldError("the Unsafe");
                            }
                        });
                    } catch (PrivilegedActionException e3) {
                        throw new RuntimeException("Could not initialize intrinsics", e3.getCause());
                    }
                }
            }

            @Override // java.util.Comparator
            public int compare(byte[] bArr, byte[] bArr2) {
                int iMin = Math.min(bArr.length, bArr2.length);
                int i = iMin / 8;
                for (int i2 = 0; i2 < i * 8; i2 += 8) {
                    long j = theUnsafe.getLong(bArr, ((long) BYTE_ARRAY_BASE_OFFSET) + ((long) i2));
                    long j2 = theUnsafe.getLong(bArr2, ((long) BYTE_ARRAY_BASE_OFFSET) + ((long) i2));
                    if (j != j2) {
                        if (BIG_ENDIAN) {
                            return UnsignedLongs.compare(j, j2);
                        }
                        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j ^ j2) & (-8);
                        return (int) (((j >>> iNumberOfTrailingZeros) & 255) - ((j2 >>> iNumberOfTrailingZeros) & 255));
                    }
                }
                for (int i3 = i * 8; i3 < iMin; i3++) {
                    int iCompare = UnsignedBytes.compare(bArr[i3], bArr2[i3]);
                    if (iCompare != 0) {
                        return iCompare;
                    }
                }
                return bArr.length - bArr2.length;
            }
        }

        enum PureJavaComparator implements Comparator<byte[]> {
            INSTANCE;

            @Override // java.util.Comparator
            public int compare(byte[] bArr, byte[] bArr2) {
                int iMin = Math.min(bArr.length, bArr2.length);
                for (int i = 0; i < iMin; i++) {
                    int iCompare = UnsignedBytes.compare(bArr[i], bArr2[i]);
                    if (iCompare != 0) {
                        return iCompare;
                    }
                }
                return bArr.length - bArr2.length;
            }
        }

        static Comparator<byte[]> getBestComparator() {
            try {
                return (Comparator) Class.forName(UNSAFE_COMPARATOR_NAME).getEnumConstants()[0];
            } catch (Throwable th) {
                return UnsignedBytes.lexicographicalComparatorJavaImpl();
            }
        }
    }
}
