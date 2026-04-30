package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class BitmapTeleporter implements SafeParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zza();
    final int zzMG;
    private Bitmap zzRq;
    private boolean zzRr;
    private File zzRs;
    final int zzzH;
    ParcelFileDescriptor zzzI;

    BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.zzzH = i;
        this.zzzI = parcelFileDescriptor;
        this.zzMG = i2;
        this.zzRq = null;
        this.zzRr = false;
    }

    public BitmapTeleporter(Bitmap bitmap) {
        this.zzzH = 1;
        this.zzzI = null;
        this.zzMG = 0;
        this.zzRq = bitmap;
        this.zzRr = true;
    }

    private void zza(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
            Log.w("BitmapTeleporter", "Could not close stream", e2);
        }
    }

    private FileOutputStream zzlo() {
        if (this.zzRs == null) {
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
        try {
            File fileCreateTempFile = File.createTempFile("teleporter", ".tmp", this.zzRs);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                this.zzzI = ParcelFileDescriptor.open(fileCreateTempFile, 268435456);
                fileCreateTempFile.delete();
                return fileOutputStream;
            } catch (FileNotFoundException e2) {
                throw new IllegalStateException("Temporary file is somehow already deleted");
            }
        } catch (IOException e3) {
            throw new IllegalStateException("Could not create temporary file", e3);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void release() {
        if (this.zzRr) {
            return;
        }
        try {
            this.zzzI.close();
        } catch (IOException e2) {
            Log.w("BitmapTeleporter", "Could not close PFD", e2);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.zzzI == null) {
            Bitmap bitmap = this.zzRq;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(byteBufferAllocate);
            byte[] bArrArray = byteBufferAllocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(zzlo());
            try {
                try {
                    dataOutputStream.writeInt(bArrArray.length);
                    dataOutputStream.writeInt(bitmap.getWidth());
                    dataOutputStream.writeInt(bitmap.getHeight());
                    dataOutputStream.writeUTF(bitmap.getConfig().toString());
                    dataOutputStream.write(bArrArray);
                } catch (IOException e2) {
                    throw new IllegalStateException("Could not write into unlinked file", e2);
                }
            } finally {
                zza(dataOutputStream);
            }
        }
        zza.zza(this, parcel, i | 1);
        this.zzzI = null;
    }

    public void zzc(File file) {
        if (file == null) {
            throw new NullPointerException("Cannot set null temp directory");
        }
        this.zzRs = file;
    }

    public Bitmap zzln() {
        if (!this.zzRr) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzzI));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int i = dataInputStream.readInt();
                    int i2 = dataInputStream.readInt();
                    Bitmap.Config configValueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    zza(dataInputStream);
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, configValueOf);
                    bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferWrap);
                    this.zzRq = bitmapCreateBitmap;
                    this.zzRr = true;
                } catch (IOException e2) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e2);
                }
            } catch (Throwable th) {
                zza(dataInputStream);
                throw th;
            }
        }
        return this.zzRq;
    }
}
