package com.facebook.drawee.c;

import android.graphics.drawable.Animatable;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: ForwardingControllerListener.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class k<INFO> implements i<INFO> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<i<? super INFO>> f2073a = new ArrayList(2);

    public synchronized void a(i<? super INFO> iVar) {
        this.f2073a.add(iVar);
    }

    public synchronized void a() {
        this.f2073a.clear();
    }

    private synchronized void c(String str, Throwable th) {
        Log.e("FdingControllerListener", str, th);
    }

    @Override // com.facebook.drawee.c.i
    public synchronized void a(String str, Object obj) {
        int size = this.f2073a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2073a.get(i).a(str, obj);
            } catch (Exception e2) {
                c("InternalListener exception in onSubmit", e2);
            }
        }
    }

    @Override // com.facebook.drawee.c.i
    public synchronized void a(String str, @Nullable INFO info, @Nullable Animatable animatable) {
        int size = this.f2073a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2073a.get(i).a(str, info, animatable);
            } catch (Exception e2) {
                c("InternalListener exception in onFinalImageSet", e2);
            }
        }
    }

    @Override // com.facebook.drawee.c.i
    public void b(String str, @Nullable INFO info) {
        int size = this.f2073a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2073a.get(i).b(str, info);
            } catch (Exception e2) {
                c("InternalListener exception in onIntermediateImageSet", e2);
            }
        }
    }

    @Override // com.facebook.drawee.c.i
    public void a(String str, Throwable th) {
        int size = this.f2073a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2073a.get(i).a(str, th);
            } catch (Exception e2) {
                c("InternalListener exception in onIntermediateImageFailed", e2);
            }
        }
    }

    @Override // com.facebook.drawee.c.i
    public synchronized void b(String str, Throwable th) {
        int size = this.f2073a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2073a.get(i).b(str, th);
            } catch (Exception e2) {
                c("InternalListener exception in onFailure", e2);
            }
        }
    }

    @Override // com.facebook.drawee.c.i
    public synchronized void a(String str) {
        int size = this.f2073a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2073a.get(i).a(str);
            } catch (Exception e2) {
                c("InternalListener exception in onRelease", e2);
            }
        }
    }
}
