package com.b.a.d.c;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: StreamEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class v implements com.b.a.d.b<InputStream> {
    @Override // com.b.a.d.b
    public boolean a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArrB = com.b.a.j.a.a().b();
        while (true) {
            try {
                int i = inputStream.read(bArrB);
                if (i != -1) {
                    outputStream.write(bArrB, 0, i);
                } else {
                    return true;
                }
            } catch (IOException e2) {
                if (Log.isLoggable("StreamEncoder", 3)) {
                    Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e2);
                }
                return false;
            } finally {
                com.b.a.j.a.a().a(bArrB);
            }
        }
    }

    @Override // com.b.a.d.b
    public String a() {
        return "";
    }
}
