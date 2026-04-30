package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: GraphRequestBatch.java */
/* JADX INFO: loaded from: classes2.dex */
public class ap extends AbstractList<GraphRequest> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicInteger f1771a = new AtomicInteger();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f1772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<GraphRequest> f1773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1774d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1775e = Integer.valueOf(f1771a.incrementAndGet()).toString();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<aq> f1776f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1777g;

    public ap() {
        this.f1773c = new ArrayList();
        this.f1773c = new ArrayList();
    }

    public ap(Collection<GraphRequest> collection) {
        this.f1773c = new ArrayList();
        this.f1773c = new ArrayList(collection);
    }

    public ap(GraphRequest... graphRequestArr) {
        this.f1773c = new ArrayList();
        this.f1773c = Arrays.asList(graphRequestArr);
    }

    public int a() {
        return this.f1774d;
    }

    public void a(aq aqVar) {
        if (!this.f1776f.contains(aqVar)) {
            this.f1776f.add(aqVar);
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final boolean add(GraphRequest graphRequest) {
        return this.f1773c.add(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void add(int i, GraphRequest graphRequest) {
        this.f1773c.add(i, graphRequest);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f1773c.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final GraphRequest get(int i) {
        return this.f1773c.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final GraphRequest remove(int i) {
        return this.f1773c.remove(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final GraphRequest set(int i, GraphRequest graphRequest) {
        return this.f1773c.set(i, graphRequest);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1773c.size();
    }

    final String b() {
        return this.f1775e;
    }

    final Handler c() {
        return this.f1772b;
    }

    final void a(Handler handler) {
        this.f1772b = handler;
    }

    final List<GraphRequest> d() {
        return this.f1773c;
    }

    final List<aq> e() {
        return this.f1776f;
    }

    public final String f() {
        return this.f1777g;
    }

    public final List<as> g() {
        return i();
    }

    public final ao h() {
        return j();
    }

    List<as> i() {
        return GraphRequest.b(this);
    }

    ao j() {
        return GraphRequest.c(this);
    }
}
