package com.b.a.d;

import com.b.a.d.b.z;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: MultiTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public class d<T> implements g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Collection<? extends g<T>> f958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f959b;

    @SafeVarargs
    public d(g<T>... gVarArr) {
        if (gVarArr.length < 1) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.f958a = Arrays.asList(gVarArr);
    }

    @Override // com.b.a.d.g
    public z<T> a(z<T> zVar, int i, int i2) {
        Iterator<? extends g<T>> it = this.f958a.iterator();
        z<T> zVar2 = zVar;
        while (it.hasNext()) {
            z<T> zVarA = it.next().a(zVar2, i, i2);
            if (zVar2 != null && !zVar2.equals(zVar) && !zVar2.equals(zVarA)) {
                zVar2.d();
            }
            zVar2 = zVarA;
        }
        return zVar2;
    }

    @Override // com.b.a.d.g
    public String a() {
        if (this.f959b == null) {
            StringBuilder sb = new StringBuilder();
            Iterator<? extends g<T>> it = this.f958a.iterator();
            while (it.hasNext()) {
                sb.append(it.next().a());
            }
            this.f959b = sb.toString();
        }
        return this.f959b;
    }
}
