package com.behance.sdk.util;

import android.util.SparseArray;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSerializableSparseArray<E> extends SparseArray<E> implements Serializable {
    private static final long serialVersionUID = 824056059663678000L;

    public BehanceSDKSerializableSparseArray(int i) {
        super(i);
    }

    public BehanceSDKSerializableSparseArray() {
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        Object[] objArr = new Object[size()];
        for (int length = objArr.length - 1; length >= 0; length--) {
            objArr[length] = new Object[]{Integer.valueOf(keyAt(length)), valueAt(length)};
        }
        objectOutputStream.writeObject(objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Object[] objArr = (Object[]) objectInputStream.readObject();
        for (int length = objArr.length - 1; length >= 0; length--) {
            Object[] objArr2 = (Object[]) objArr[length];
            append(((Integer) objArr2[0]).intValue(), objArr2[1]);
        }
    }
}
