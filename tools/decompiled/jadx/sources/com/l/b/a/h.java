package com.l.b.a;

import android.support.v7.widget.ActivityChooserView;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: QEncoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class h extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f3612b = "=_?\"#$%&'(),.:;<>@[\\]^`{|}~";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f3613c = "=_?";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3614a;

    public h(OutputStream outputStream, boolean z) {
        super(outputStream, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        this.f3614a = z ? f3612b : f3613c;
    }

    @Override // com.l.b.a.j, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        int i2 = i & 255;
        if (i2 == 32) {
            a(95, false);
        } else if (i2 < 32 || i2 >= 127 || this.f3614a.indexOf(i2) >= 0) {
            a(i2, true);
        } else {
            a(i2, false);
        }
    }

    public static int a(byte[] bArr, boolean z) {
        String str = z ? f3612b : f3613c;
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = b2 & UnsignedBytes.MAX_VALUE;
            if (i2 < 32 || i2 >= 127 || str.indexOf(i2) >= 0) {
                i += 3;
            } else {
                i++;
            }
        }
        return i;
    }
}
