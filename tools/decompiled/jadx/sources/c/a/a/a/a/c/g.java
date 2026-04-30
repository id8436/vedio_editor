package c.a.a.a.a.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: AsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
class g extends Handler {
    public g() {
        super(Looper.getMainLooper());
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        f fVar = (f) message.obj;
        switch (message.what) {
            case 1:
                fVar.f211a.e(fVar.f212b[0]);
                break;
            case 2:
                fVar.f211a.b((Object[]) fVar.f212b);
                break;
        }
    }
}
