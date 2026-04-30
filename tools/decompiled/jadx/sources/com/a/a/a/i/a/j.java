package com.a.a.a.i.a;

import com.a.a.a.r;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/* JADX INFO: compiled from: SqliteJobQueue.java */
/* JADX INFO: loaded from: classes.dex */
public class j implements k {
    @Override // com.a.a.a.i.a.k
    public byte[] a(Object obj) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        byte[] byteArray = null;
        if (obj != null) {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    new ObjectOutputStream(byteArrayOutputStream).writeObject(obj);
                    byteArray = byteArrayOutputStream.toByteArray();
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                byteArrayOutputStream = null;
                th = th3;
            }
        }
        return byteArray;
    }

    @Override // com.a.a.a.i.a.k
    public <T extends r> T a(byte[] bArr) throws Throwable {
        ObjectInputStream objectInputStream;
        Throwable th;
        T t = null;
        if (bArr != null && bArr.length != 0) {
            try {
                objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
                try {
                    t = (T) objectInputStream.readObject();
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                objectInputStream = null;
                th = th3;
            }
        }
        return t;
    }
}
