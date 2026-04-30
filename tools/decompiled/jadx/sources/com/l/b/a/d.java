package com.l.b.a;

import android.support.v7.widget.ActivityChooserView;
import java.io.OutputStream;

/* JADX INFO: compiled from: BEncoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class d extends c {
    public d(OutputStream outputStream) {
        super(outputStream, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public static int a(byte[] bArr) {
        return ((bArr.length + 2) / 3) * 4;
    }
}
