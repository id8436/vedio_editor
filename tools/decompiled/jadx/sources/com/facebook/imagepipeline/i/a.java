package com.facebook.imagepipeline.i;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ForwardingRequestListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<b> f2589a;

    public a(Set<b> set) {
        this.f2589a = new ArrayList(set.size());
        Iterator<b> it = set.iterator();
        while (it.hasNext()) {
            this.f2589a.add(it.next());
        }
    }

    public a(b... bVarArr) {
        this.f2589a = Arrays.asList(bVarArr);
    }

    @Override // com.facebook.imagepipeline.i.b
    public void a(com.facebook.imagepipeline.l.a aVar, Object obj, String str, boolean z) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).a(aVar, obj, str, z);
            } catch (Exception e2) {
                a("InternalListener exception in onRequestStart", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.co
    public void a(String str, String str2) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).a(str, str2);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerStart", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.co
    public void a(String str, String str2, @Nullable Map<String, String> map) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).a(str, str2, map);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerFinishWithSuccess", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.co
    public void a(String str, String str2, Throwable th, @Nullable Map<String, String> map) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).a(str, str2, th, map);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerFinishWithFailure", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.co
    public void b(String str, String str2, @Nullable Map<String, String> map) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).b(str, str2, map);
            } catch (Exception e2) {
                a("InternalListener exception in onProducerFinishWithCancellation", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.co
    public void a(String str, String str2, String str3) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).a(str, str2, str3);
            } catch (Exception e2) {
                a("InternalListener exception in onIntermediateChunkStart", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.i.b
    public void a(com.facebook.imagepipeline.l.a aVar, String str, boolean z) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).a(aVar, str, z);
            } catch (Exception e2) {
                a("InternalListener exception in onRequestSuccess", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.i.b
    public void a(com.facebook.imagepipeline.l.a aVar, String str, Throwable th, boolean z) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).a(aVar, str, th, z);
            } catch (Exception e2) {
                a("InternalListener exception in onRequestFailure", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.i.b
    public void a(String str) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            try {
                this.f2589a.get(i).a(str);
            } catch (Exception e2) {
                a("InternalListener exception in onRequestCancellation", e2);
            }
        }
    }

    @Override // com.facebook.imagepipeline.k.co
    public boolean b(String str) {
        int size = this.f2589a.size();
        for (int i = 0; i < size; i++) {
            if (this.f2589a.get(i).b(str)) {
                return true;
            }
        }
        return false;
    }

    private void a(String str, Throwable th) {
        com.facebook.d.e.a.a("ForwardingRequestListener", str, th);
    }
}
