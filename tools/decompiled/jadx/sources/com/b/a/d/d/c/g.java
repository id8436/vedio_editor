package com.b.a.d.d.c;

import com.b.a.d.b.z;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamFileDataLoadProvider.java */
/* JADX INFO: loaded from: classes2.dex */
class g implements com.b.a.d.e<InputStream, File> {
    private g() {
    }

    @Override // com.b.a.d.e
    public z<File> a(InputStream inputStream, int i, int i2) {
        throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
    }

    @Override // com.b.a.d.e
    public String a() {
        return "";
    }
}
