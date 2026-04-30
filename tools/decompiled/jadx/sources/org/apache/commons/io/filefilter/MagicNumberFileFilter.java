package org.apache.commons.io.filefilter;

import com.behance.sdk.util.BehanceSDKConstants;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class MagicNumberFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -547733176983104172L;
    private final long byteOffset;
    private final byte[] magicNumbers;

    public MagicNumberFileFilter(byte[] bArr) {
        this(bArr, 0L);
    }

    public MagicNumberFileFilter(String str) {
        this(str, 0L);
    }

    public MagicNumberFileFilter(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("The magic number cannot be null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("The magic number must contain at least one byte");
        }
        if (j < 0) {
            throw new IllegalArgumentException("The offset cannot be negative");
        }
        this.magicNumbers = str.getBytes();
        this.byteOffset = j;
    }

    public MagicNumberFileFilter(byte[] bArr, long j) {
        if (bArr == null) {
            throw new IllegalArgumentException("The magic number cannot be null");
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("The magic number must contain at least one byte");
        }
        if (j < 0) {
            throw new IllegalArgumentException("The offset cannot be negative");
        }
        this.magicNumbers = new byte[bArr.length];
        System.arraycopy(bArr, 0, this.magicNumbers, 0, bArr.length);
        this.byteOffset = j;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        byte[] bArr;
        boolean zEquals = false;
        if (file != null && file.isFile() && file.canRead()) {
            try {
                bArr = new byte[this.magicNumbers.length];
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (IOException e2) {
                randomAccessFile = null;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = null;
            }
            try {
                randomAccessFile.seek(this.byteOffset);
                if (randomAccessFile.read(bArr) == this.magicNumbers.length) {
                    zEquals = Arrays.equals(this.magicNumbers, bArr);
                    IOUtils.closeQuietly(randomAccessFile);
                } else {
                    IOUtils.closeQuietly(randomAccessFile);
                }
            } catch (IOException e3) {
                IOUtils.closeQuietly(randomAccessFile);
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly(randomAccessFile);
                throw th;
            }
        }
        return zEquals;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        return super.toString() + "(" + new String(this.magicNumbers) + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR + this.byteOffset + ")";
    }
}
