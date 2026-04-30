package com.facebook.imagepipeline.k;

import android.util.Pair;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: MultiplexProducer.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public abstract class br<K, T extends Closeable> implements cl<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    final Map<K, br<K, T>.bt> f2697a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cl<T> f2698b;

    protected abstract T a(T t);

    protected abstract K b(cm cmVar);

    protected br(cl<T> clVar) {
        this.f2698b = clVar;
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<T> oVar, cm cmVar) {
        boolean z;
        br<K, T>.bt btVarA;
        K kB = b(cmVar);
        do {
            z = false;
            synchronized (this) {
                btVarA = a(kB);
                if (btVarA == null) {
                    btVarA = b(kB);
                    z = true;
                }
            }
        } while (!btVarA.a(oVar, cmVar));
        if (!z) {
            return;
        }
        btVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized br<K, T>.bt a(K k) {
        return this.f2697a.get(k);
    }

    private synchronized br<K, T>.bt b(K k) {
        br<K, T>.bt btVar;
        btVar = new bt(k);
        this.f2697a.put(k, btVar);
        return btVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(K k, br<K, T>.bt btVar) {
        if (this.f2697a.get(k) == btVar) {
            this.f2697a.remove(k);
        }
    }

    /* JADX INFO: compiled from: MultiplexProducer.java */
    /* JADX INFO: loaded from: classes.dex */
    class bt {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final K f2700b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CopyOnWriteArraySet<Pair<o<T>, cm>> f2701c = com.facebook.d.d.l.b();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private T f2702d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        private float f2703e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private f f2704f;

        /* JADX INFO: Incorrect field signature: Lcom/facebook/imagepipeline/k/br<TK;TT;>.com/facebook/imagepipeline/k/bt.com/facebook/imagepipeline/k/bv; */
        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private bv f2705g;

        public bt(K k) {
            this.f2700b = k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean a(o<T> oVar, cm cmVar) {
            Pair<o<T>, cm> pairCreate = Pair.create(oVar, cmVar);
            synchronized (this) {
                if (br.this.a(this.f2700b) != this) {
                    return false;
                }
                this.f2701c.add(pairCreate);
                List<cn> listB = b();
                List<cn> listF = f();
                List<cn> listD = d();
                Closeable closeableA = this.f2702d;
                float f2 = this.f2703e;
                f.b(listB);
                f.d(listF);
                f.c(listD);
                synchronized (pairCreate) {
                    synchronized (this) {
                        if (closeableA != this.f2702d) {
                            closeableA = null;
                        } else if (closeableA != null) {
                            closeableA = br.this.a(closeableA);
                        }
                    }
                    if (closeableA != null) {
                        if (f2 > 0.0f) {
                            oVar.b(f2);
                        }
                        oVar.b(closeableA, false);
                        a(closeableA);
                    }
                }
                a(pairCreate, cmVar);
                return true;
            }
        }

        private void a(Pair<o<T>, cm> pair, cm cmVar) {
            cmVar.a(new bu(this, pair));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            synchronized (this) {
                com.facebook.d.d.k.a(this.f2704f == null);
                com.facebook.d.d.k.a(this.f2705g == null);
                if (this.f2701c.isEmpty()) {
                    br.this.a(this.f2700b, this);
                    return;
                }
                cm cmVar = (cm) this.f2701c.iterator().next().second;
                this.f2704f = new f(cmVar.a(), cmVar.b(), cmVar.c(), cmVar.d(), cmVar.e(), c(), e(), g());
                this.f2705g = new bv(this);
                br.this.f2698b.a(this.f2705g, this.f2704f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<cn> b() {
            return this.f2704f == null ? null : this.f2704f.a(c());
        }

        private synchronized boolean c() {
            boolean z;
            Iterator<Pair<o<T>, cm>> it = this.f2701c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                if (!((cm) it.next().second).f()) {
                    z = false;
                    break;
                }
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<cn> d() {
            List<cn> listB;
            if (this.f2704f == null) {
                listB = null;
            } else {
                listB = this.f2704f.b(e());
            }
            return listB;
        }

        private synchronized boolean e() {
            boolean z;
            Iterator<Pair<o<T>, cm>> it = this.f2701c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (((cm) it.next().second).h()) {
                    z = true;
                    break;
                }
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<cn> f() {
            return this.f2704f == null ? null : this.f2704f.a(g());
        }

        private synchronized com.facebook.imagepipeline.d.c g() {
            com.facebook.imagepipeline.d.c cVar;
            com.facebook.imagepipeline.d.c cVarA = com.facebook.imagepipeline.d.c.LOW;
            Iterator<Pair<o<T>, cm>> it = this.f2701c.iterator();
            while (true) {
                cVar = cVarA;
                if (it.hasNext()) {
                    cVarA = com.facebook.imagepipeline.d.c.a(cVar, ((cm) it.next().second).g());
                }
            }
            return cVar;
        }

        /* JADX WARN: Incorrect types in method signature: (Lcom/facebook/imagepipeline/k/br<TK;TT;>.com/facebook/imagepipeline/k/bt.com/facebook/imagepipeline/k/bv;Ljava/lang/Throwable;)V */
        public void a(bv bvVar, Throwable th) {
            synchronized (this) {
                if (this.f2705g == bvVar) {
                    this.f2701c.clear();
                    br.this.a(this.f2700b, this);
                    a(this.f2702d);
                    this.f2702d = null;
                    for (Pair<o<T>, cm> pair : this.f2701c) {
                        synchronized (pair) {
                            ((o) pair.first).b(th);
                        }
                    }
                }
            }
        }

        /* JADX WARN: Incorrect types in method signature: (Lcom/facebook/imagepipeline/k/br<TK;TT;>.com/facebook/imagepipeline/k/bt.com/facebook/imagepipeline/k/bv;TT;Z)V */
        public void a(bv bvVar, Closeable closeable, boolean z) {
            synchronized (this) {
                if (this.f2705g == bvVar) {
                    a(this.f2702d);
                    this.f2702d = null;
                    if (!z) {
                        this.f2702d = (T) br.this.a(closeable);
                    } else {
                        this.f2701c.clear();
                        br.this.a(this.f2700b, this);
                    }
                    for (Pair<o<T>, cm> pair : this.f2701c) {
                        synchronized (pair) {
                            ((o) pair.first).b(closeable, z);
                        }
                    }
                }
            }
        }

        /* JADX WARN: Incorrect types in method signature: (Lcom/facebook/imagepipeline/k/br<TK;TT;>.com/facebook/imagepipeline/k/bt.com/facebook/imagepipeline/k/bv;)V */
        public void a(bv bvVar) {
            synchronized (this) {
                if (this.f2705g == bvVar) {
                    this.f2705g = null;
                    this.f2704f = null;
                    a(this.f2702d);
                    this.f2702d = null;
                    a();
                }
            }
        }

        /* JADX WARN: Incorrect types in method signature: (Lcom/facebook/imagepipeline/k/br<TK;TT;>.com/facebook/imagepipeline/k/bt.com/facebook/imagepipeline/k/bv;F)V */
        public void a(bv bvVar, float f2) {
            synchronized (this) {
                if (this.f2705g == bvVar) {
                    this.f2703e = f2;
                    for (Pair<o<T>, cm> pair : this.f2701c) {
                        synchronized (pair) {
                            ((o) pair.first).b(f2);
                        }
                    }
                }
            }
        }

        private void a(Closeable closeable) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
    }
}
