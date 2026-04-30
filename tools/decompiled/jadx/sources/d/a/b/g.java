package d.a.b;

import d.bi;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: RouteSelector.java */
/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<bi> f4243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4244b = 0;

    g(List<bi> list) {
        this.f4243a = list;
    }

    public boolean a() {
        return this.f4244b < this.f4243a.size();
    }

    public bi b() {
        if (!a()) {
            throw new NoSuchElementException();
        }
        List<bi> list = this.f4243a;
        int i = this.f4244b;
        this.f4244b = i + 1;
        return list.get(i);
    }

    public List<bi> c() {
        return new ArrayList(this.f4243a);
    }
}
