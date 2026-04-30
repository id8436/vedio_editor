package d.a.e;

import android.support.v4.view.PointerIconCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: Huffman.java */
/* JADX INFO: loaded from: classes3.dex */
class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f4338a = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, 4090, 8185, 21, 248, 2042, PointerIconCompat.TYPE_ZOOM_IN, PointerIconCompat.TYPE_ZOOM_OUT, 249, 2043, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, PointerIconCompat.TYPE_GRAB, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f4339b = {13, 23, 28, 28, 28, 28, 28, 28, 28, Ascii.CAN, Ascii.RS, 28, 28, Ascii.RS, 28, 28, 28, 28, 28, 28, 28, 28, Ascii.RS, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, Ascii.FF, 13, 6, 8, Ascii.VT, 10, 10, 8, Ascii.VT, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, Ascii.SI, 6, Ascii.FF, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, Ascii.SO, 6, Ascii.SI, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, Ascii.SI, Ascii.VT, Ascii.SO, 13, 28, 20, Ascii.SYN, 20, 20, Ascii.SYN, Ascii.SYN, Ascii.SYN, 23, Ascii.SYN, 23, 23, 23, 23, 23, Ascii.CAN, 23, Ascii.CAN, Ascii.CAN, Ascii.SYN, 23, Ascii.CAN, 23, 23, 23, 23, Ascii.NAK, Ascii.SYN, 23, Ascii.SYN, 23, 23, Ascii.CAN, Ascii.SYN, Ascii.NAK, 20, Ascii.SYN, Ascii.SYN, 23, 23, Ascii.NAK, 23, Ascii.SYN, Ascii.SYN, Ascii.CAN, Ascii.NAK, Ascii.SYN, 23, 23, Ascii.NAK, Ascii.NAK, Ascii.SYN, Ascii.NAK, 23, Ascii.SYN, 23, 23, 20, Ascii.SYN, Ascii.SYN, Ascii.SYN, 23, Ascii.SYN, Ascii.SYN, 23, Ascii.SUB, Ascii.SUB, 20, 19, Ascii.SYN, 23, Ascii.SYN, 25, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, Ascii.CAN, 25, 19, Ascii.NAK, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, Ascii.ESC, Ascii.CAN, Ascii.NAK, Ascii.NAK, Ascii.SUB, Ascii.SUB, 28, Ascii.ESC, Ascii.ESC, Ascii.ESC, 20, Ascii.CAN, 20, Ascii.NAK, Ascii.SYN, Ascii.NAK, Ascii.NAK, 23, Ascii.SYN, Ascii.SYN, 25, 25, Ascii.CAN, Ascii.CAN, Ascii.SUB, 23, Ascii.SUB, Ascii.ESC, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, 28, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.SUB};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ag f4340c = new ag();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ah f4341d = new ah();

    public static ag a() {
        return f4340c;
    }

    private ag() {
        b();
    }

    void a(e.k kVar, e.i iVar) throws IOException {
        long j = 0;
        int i = 0;
        for (int i2 = 0; i2 < kVar.g(); i2++) {
            int iA = kVar.a(i2) & UnsignedBytes.MAX_VALUE;
            int i3 = f4338a[iA];
            byte b2 = f4339b[iA];
            j = (j << b2) | ((long) i3);
            i += b2;
            while (i >= 8) {
                i -= 8;
                iVar.i((int) (j >> i));
            }
        }
        if (i > 0) {
            iVar.i((int) (((long) (255 >>> i)) | (j << (8 - i))));
        }
    }

    int a(e.k kVar) {
        long j = 0;
        for (int i = 0; i < kVar.g(); i++) {
            j += (long) f4339b[kVar.a(i) & UnsignedBytes.MAX_VALUE];
        }
        return (int) ((7 + j) >> 3);
    }

    byte[] a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        ah ahVar = this.f4341d;
        int i2 = 0;
        for (byte b2 : bArr) {
            i = (i << 8) | (b2 & UnsignedBytes.MAX_VALUE);
            i2 += 8;
            while (i2 >= 8) {
                ahVar = ahVar.f4342a[(i >>> (i2 - 8)) & 255];
                if (ahVar.f4342a == null) {
                    byteArrayOutputStream.write(ahVar.f4343b);
                    i2 -= ahVar.f4344c;
                    ahVar = this.f4341d;
                } else {
                    i2 -= 8;
                }
            }
        }
        while (i2 > 0) {
            ah ahVar2 = ahVar.f4342a[(i << (8 - i2)) & 255];
            if (ahVar2.f4342a != null || ahVar2.f4344c > i2) {
                break;
            }
            byteArrayOutputStream.write(ahVar2.f4343b);
            i2 -= ahVar2.f4344c;
            ahVar = this.f4341d;
        }
        return byteArrayOutputStream.toByteArray();
    }

    private void b() {
        for (int i = 0; i < f4339b.length; i++) {
            a(i, f4338a[i], f4339b[i]);
        }
    }

    private void a(int i, int i2, byte b2) {
        ah ahVar = new ah(i, b2);
        ah ahVar2 = this.f4341d;
        while (true) {
            ah ahVar3 = ahVar2;
            if (b2 > 8) {
                b2 = (byte) (b2 - 8);
                int i3 = (i2 >>> b2) & 255;
                if (ahVar3.f4342a == null) {
                    throw new IllegalStateException("invalid dictionary: prefix not unique");
                }
                if (ahVar3.f4342a[i3] == null) {
                    ahVar3.f4342a[i3] = new ah();
                }
                ahVar2 = ahVar3.f4342a[i3];
            } else {
                int i4 = 8 - b2;
                int i5 = (i2 << i4) & 255;
                int i6 = 1 << i4;
                for (int i7 = i5; i7 < i5 + i6; i7++) {
                    ahVar3.f4342a[i7] = ahVar;
                }
                return;
            }
        }
    }
}
