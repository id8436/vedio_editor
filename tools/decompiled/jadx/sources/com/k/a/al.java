package com.k.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;

/* JADX INFO: compiled from: Picasso.java */
/* JADX INFO: loaded from: classes3.dex */
final class al extends Handler {
    al(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 3:
                a aVar = (a) message.obj;
                if (aVar.j().l) {
                    bm.a("Main", "canceled", aVar.f3414b.a(), "target got garbage collected");
                }
                aVar.f3413a.a(aVar.d());
                return;
            case 8:
                List list = (List) message.obj;
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    d dVar = (d) list.get(i);
                    dVar.f3539b.a(dVar);
                }
                return;
            case 13:
                List list2 = (List) message.obj;
                int size2 = list2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    a aVar2 = (a) list2.get(i2);
                    aVar2.f3413a.c(aVar2);
                }
                return;
            default:
                throw new AssertionError("Unknown handler message received: " + message.what);
        }
    }
}
