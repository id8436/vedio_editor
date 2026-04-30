package com.b.a.d.c;

import com.google.gdata.data.Category;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: LazyHeaders.java */
/* JADX INFO: loaded from: classes2.dex */
public final class m implements f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, List<l>> f937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Map<String, String> f938d;

    m(Map<String, List<l>> map) {
        this.f937c = Collections.unmodifiableMap(map);
    }

    @Override // com.b.a.d.c.f
    public Map<String, String> a() {
        if (this.f938d == null) {
            synchronized (this) {
                if (this.f938d == null) {
                    this.f938d = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f938d;
    }

    private Map<String, String> b() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<l>> entry : this.f937c.entrySet()) {
            StringBuilder sb = new StringBuilder();
            List<l> value = entry.getValue();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < value.size()) {
                    sb.append(value.get(i2).a());
                    if (i2 != value.size() - 1) {
                        sb.append(',');
                    }
                    i = i2 + 1;
                }
            }
            map.put(entry.getKey(), sb.toString());
        }
        return map;
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f937c + Category.SCHEME_SUFFIX;
    }

    public boolean equals(Object obj) {
        if (obj instanceof m) {
            return this.f937c.equals(((m) obj).f937c);
        }
        return false;
    }

    public int hashCode() {
        return this.f937c.hashCode();
    }
}
