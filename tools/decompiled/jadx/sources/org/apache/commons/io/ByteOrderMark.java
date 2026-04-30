package org.apache.commons.io;

import com.behance.sdk.util.BehanceSDKConstants;
import java.io.Serializable;
import org.apache.commons.lang3.CharEncoding;

/* JADX INFO: loaded from: classes3.dex */
public class ByteOrderMark implements Serializable {
    private static final long serialVersionUID = 1;
    private final int[] bytes;
    private final String charsetName;
    public static final ByteOrderMark UTF_8 = new ByteOrderMark("UTF-8", 239, 187, 191);
    public static final ByteOrderMark UTF_16BE = new ByteOrderMark(CharEncoding.UTF_16BE, 254, 255);
    public static final ByteOrderMark UTF_16LE = new ByteOrderMark(CharEncoding.UTF_16LE, 255, 254);
    public static final ByteOrderMark UTF_32BE = new ByteOrderMark("UTF-32BE", 0, 0, 254, 255);
    public static final ByteOrderMark UTF_32LE = new ByteOrderMark("UTF-32LE", 255, 254, 0, 0);

    public ByteOrderMark(String str, int... iArr) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("No charsetName specified");
        }
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("No bytes specified");
        }
        this.charsetName = str;
        this.bytes = new int[iArr.length];
        System.arraycopy(iArr, 0, this.bytes, 0, iArr.length);
    }

    public String getCharsetName() {
        return this.charsetName;
    }

    public int length() {
        return this.bytes.length;
    }

    public int get(int i) {
        return this.bytes[i];
    }

    public byte[] getBytes() {
        byte[] bArr = new byte[this.bytes.length];
        for (int i = 0; i < this.bytes.length; i++) {
            bArr[i] = (byte) this.bytes[i];
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ByteOrderMark)) {
            return false;
        }
        ByteOrderMark byteOrderMark = (ByteOrderMark) obj;
        if (this.bytes.length != byteOrderMark.length()) {
            return false;
        }
        for (int i = 0; i < this.bytes.length; i++) {
            if (this.bytes[i] != byteOrderMark.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        for (int i : this.bytes) {
            iHashCode += i;
        }
        return iHashCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append(this.charsetName);
        sb.append(": ");
        for (int i = 0; i < this.bytes.length; i++) {
            if (i > 0) {
                sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            }
            sb.append("0x");
            sb.append(Integer.toHexString(this.bytes[i] & 255).toUpperCase());
        }
        sb.append(']');
        return sb.toString();
    }
}
