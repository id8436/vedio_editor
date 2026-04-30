package android.support.v4.util;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class AtomicFile {
    private final File mBackupName;
    private final File mBaseName;

    public AtomicFile(File file) {
        this.mBaseName = file;
        this.mBackupName = new File(file.getPath() + ".bak");
    }

    public File getBaseFile() {
        return this.mBaseName;
    }

    public void delete() {
        this.mBaseName.delete();
        this.mBackupName.delete();
    }

    public FileOutputStream startWrite() throws IOException {
        if (this.mBaseName.exists()) {
            if (!this.mBackupName.exists()) {
                if (!this.mBaseName.renameTo(this.mBackupName)) {
                    Log.w("AtomicFile", "Couldn't rename file " + this.mBaseName + " to backup file " + this.mBackupName);
                }
            } else {
                this.mBaseName.delete();
            }
        }
        try {
            return new FileOutputStream(this.mBaseName);
        } catch (FileNotFoundException e2) {
            if (!this.mBaseName.getParentFile().mkdirs()) {
                throw new IOException("Couldn't create directory " + this.mBaseName);
            }
            try {
                return new FileOutputStream(this.mBaseName);
            } catch (FileNotFoundException e3) {
                throw new IOException("Couldn't create " + this.mBaseName);
            }
        }
    }

    public void finishWrite(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            sync(fileOutputStream);
            try {
                fileOutputStream.close();
                this.mBackupName.delete();
            } catch (IOException e2) {
                Log.w("AtomicFile", "finishWrite: Got exception:", e2);
            }
        }
    }

    public void failWrite(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            sync(fileOutputStream);
            try {
                fileOutputStream.close();
                this.mBaseName.delete();
                this.mBackupName.renameTo(this.mBaseName);
            } catch (IOException e2) {
                Log.w("AtomicFile", "failWrite: Got exception:", e2);
            }
        }
    }

    public FileInputStream openRead() throws FileNotFoundException {
        if (this.mBackupName.exists()) {
            this.mBaseName.delete();
            this.mBackupName.renameTo(this.mBaseName);
        }
        return new FileInputStream(this.mBaseName);
    }

    public byte[] readFully() throws IOException {
        byte[] bArr;
        int i = 0;
        FileInputStream fileInputStreamOpenRead = openRead();
        try {
            byte[] bArr2 = new byte[fileInputStreamOpenRead.available()];
            while (true) {
                int i2 = fileInputStreamOpenRead.read(bArr2, i, bArr2.length - i);
                if (i2 <= 0) {
                    return bArr2;
                }
                int i3 = i2 + i;
                int iAvailable = fileInputStreamOpenRead.available();
                if (iAvailable > bArr2.length - i3) {
                    bArr = new byte[iAvailable + i3];
                    System.arraycopy(bArr2, 0, bArr, 0, i3);
                } else {
                    bArr = bArr2;
                }
                bArr2 = bArr;
                i = i3;
            }
        } finally {
            fileInputStreamOpenRead.close();
        }
    }

    static boolean sync(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException e2) {
                return false;
            }
        }
        return true;
    }
}
