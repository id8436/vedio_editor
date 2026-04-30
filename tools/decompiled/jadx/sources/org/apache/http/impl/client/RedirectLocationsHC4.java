package org.apache.http.impl.client;

import java.net.URI;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.http.annotation.NotThreadSafe;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class RedirectLocationsHC4 extends AbstractList<Object> {
    private final Set<URI> unique = new HashSet();
    private final List<URI> all = new ArrayList();

    public boolean contains(URI uri) {
        return this.unique.contains(uri);
    }

    public void add(URI uri) {
        this.unique.add(uri);
        this.all.add(uri);
    }

    public boolean remove(URI uri) {
        boolean zRemove = this.unique.remove(uri);
        if (zRemove) {
            Iterator<URI> it = this.all.iterator();
            while (it.hasNext()) {
                if (it.next().equals(uri)) {
                    it.remove();
                }
            }
        }
        return zRemove;
    }

    public List<URI> getAll() {
        return new ArrayList(this.all);
    }

    @Override // java.util.AbstractList, java.util.List
    public URI get(int i) {
        return this.all.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.all.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        URI uri = this.all.set(i, (URI) obj);
        this.unique.remove(uri);
        this.unique.add((URI) obj);
        if (this.all.size() != this.unique.size()) {
            this.unique.addAll(this.all);
        }
        return uri;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        this.all.add(i, (URI) obj);
        this.unique.add((URI) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public URI remove(int i) {
        URI uriRemove = this.all.remove(i);
        this.unique.remove(uriRemove);
        if (this.all.size() != this.unique.size()) {
            this.unique.addAll(this.all);
        }
        return uriRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.unique.contains(obj);
    }
}
