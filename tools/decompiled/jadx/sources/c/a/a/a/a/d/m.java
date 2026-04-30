package c.a.a.a.a.d;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: compiled from: GZIPQueueFileEventStorage.java */
/* JADX INFO: loaded from: classes.dex */
public class m extends n {
    public m(Context context, File file, String str, String str2) throws IOException {
        super(context, file, str, str2);
    }

    @Override // c.a.a.a.a.d.n
    public OutputStream a(File file) throws IOException {
        return new GZIPOutputStream(new FileOutputStream(file));
    }
}
