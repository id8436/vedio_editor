package com.g.a;

import java.util.ArrayList;

/* JADX INFO: compiled from: Animator.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<b> f3057a = null;

    public void a() {
    }

    public void b() {
    }

    public void a(b bVar) {
        if (this.f3057a == null) {
            this.f3057a = new ArrayList<>();
        }
        this.f3057a.add(bVar);
    }

    @Override // 
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public a clone() {
        try {
            a aVar = (a) super.clone();
            if (this.f3057a != null) {
                ArrayList<b> arrayList = this.f3057a;
                aVar.f3057a = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    aVar.f3057a.add(arrayList.get(i));
                }
            }
            return aVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError();
        }
    }
}
