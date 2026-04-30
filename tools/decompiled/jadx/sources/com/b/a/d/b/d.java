package com.b.a.d.b;

import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: DecodeJob.java */
/* JADX INFO: loaded from: classes2.dex */
class d<DataType> implements com.b.a.d.b.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f851a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.d.b<DataType> f852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DataType f853c;

    public d(a aVar, com.b.a.d.b<DataType> bVar, DataType datatype) {
        this.f851a = aVar;
        this.f852b = bVar;
        this.f853c = datatype;
    }

    @Override // com.b.a.d.b.b.c
    public boolean a(File file) {
        boolean zA = false;
        OutputStream outputStreamA = null;
        try {
            try {
                outputStreamA = this.f851a.l.a(file);
                zA = this.f852b.a(this.f853c, outputStreamA);
                if (outputStreamA != null) {
                    try {
                        outputStreamA.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (Throwable th) {
                if (outputStreamA != null) {
                    try {
                        outputStreamA.close();
                    } catch (IOException e3) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e4) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "Failed to find file to write to disk cache", e4);
            }
            if (outputStreamA != null) {
                try {
                    outputStreamA.close();
                } catch (IOException e5) {
                }
            }
        }
        return zA;
    }
}
