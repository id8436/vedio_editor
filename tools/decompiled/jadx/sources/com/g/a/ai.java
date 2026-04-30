package com.g.a;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: ValueAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
class ai extends Handler {
    private ai() {
    }

    /* synthetic */ ai(ad adVar) {
        this();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z;
        int i;
        ArrayList arrayList = (ArrayList) ac.i.get();
        ArrayList arrayList2 = (ArrayList) ac.k.get();
        switch (message.what) {
            case 0:
                ArrayList arrayList3 = (ArrayList) ac.j.get();
                if (arrayList.size() <= 0 && arrayList2.size() <= 0) {
                    z = true;
                } else {
                    z = false;
                }
                while (arrayList3.size() > 0) {
                    ArrayList arrayList4 = (ArrayList) arrayList3.clone();
                    arrayList3.clear();
                    int size = arrayList4.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ac acVar = (ac) arrayList4.get(i2);
                        if (acVar.y == 0) {
                            acVar.n();
                        } else {
                            arrayList2.add(acVar);
                        }
                    }
                }
                break;
            case 1:
                z = true;
                break;
            default:
                return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        ArrayList arrayList5 = (ArrayList) ac.m.get();
        ArrayList arrayList6 = (ArrayList) ac.l.get();
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ac acVar2 = (ac) arrayList2.get(i3);
            if (acVar2.a(jCurrentAnimationTimeMillis)) {
                arrayList5.add(acVar2);
            }
        }
        int size3 = arrayList5.size();
        if (size3 > 0) {
            for (int i4 = 0; i4 < size3; i4++) {
                ac acVar3 = (ac) arrayList5.get(i4);
                acVar3.n();
                acVar3.v = true;
                arrayList2.remove(acVar3);
            }
            arrayList5.clear();
        }
        int size4 = arrayList.size();
        int i5 = 0;
        while (i5 < size4) {
            ac acVar4 = (ac) arrayList.get(i5);
            if (acVar4.d(jCurrentAnimationTimeMillis)) {
                arrayList6.add(acVar4);
            }
            if (arrayList.size() == size4) {
                i = i5 + 1;
            } else {
                size4--;
                arrayList6.remove(acVar4);
                i = i5;
            }
            size4 = size4;
            i5 = i;
        }
        if (arrayList6.size() > 0) {
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (i7 < arrayList6.size()) {
                    ((ac) arrayList6.get(i7)).e();
                    i6 = i7 + 1;
                } else {
                    arrayList6.clear();
                }
            }
        }
        if (z) {
            if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
                sendEmptyMessageDelayed(1, Math.max(0L, ac.z - (AnimationUtils.currentAnimationTimeMillis() - jCurrentAnimationTimeMillis)));
            }
        }
    }
}
