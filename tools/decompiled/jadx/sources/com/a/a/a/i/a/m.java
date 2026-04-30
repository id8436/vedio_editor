package com.a.a.a.i.a;

import android.support.v4.util.LruCache;
import com.a.a.a.ah;
import java.util.Iterator;

/* JADX INFO: compiled from: WhereQueryCache.java */
/* JADX INFO: loaded from: classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LruCache<Long, l> f575a = new n(this, 15);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f576b;

    public m(long j) {
        this.f576b = Long.toString(j);
    }

    public l a(com.a.a.a.j jVar, StringBuilder sb) {
        boolean zA = a(jVar);
        long jB = b(jVar);
        l lVarA = zA ? this.f575a.get(Long.valueOf(jB)) : null;
        if (lVarA == null) {
            lVarA = a(jB, jVar, sb);
            if (zA) {
                this.f575a.put(Long.valueOf(jB), lVarA);
            }
        }
        a(jVar, lVarA);
        return lVarA;
    }

    private void a(com.a.a.a.j jVar, l lVar) {
        int i;
        int i2;
        lVar.f572c[0] = Long.toString(jVar.h());
        lVar.f572c[1] = Integer.toString(jVar.a());
        if (jVar.f() != null) {
            i = 3;
            lVar.f572c[2] = Long.toString(jVar.f().longValue());
        } else {
            i = 2;
        }
        if (jVar.b() != null) {
            Iterator<String> it = jVar.c().iterator();
            i2 = i;
            while (it.hasNext()) {
                lVar.f572c[i2] = it.next();
                i2++;
            }
        } else {
            i2 = i;
        }
        Iterator<String> it2 = jVar.d().iterator();
        while (it2.hasNext()) {
            lVar.f572c[i2] = it2.next();
            i2++;
        }
        Iterator<String> it3 = jVar.g().iterator();
        while (it3.hasNext()) {
            lVar.f572c[i2] = it3.next();
            i2++;
        }
        if (jVar.e()) {
            lVar.f572c[i2] = this.f576b;
            i2++;
        }
        if (i2 != lVar.f572c.length) {
            throw new IllegalStateException("something is wrong with where query cache for " + lVar.f571b);
        }
    }

    private l a(long j, com.a.a.a.j jVar, StringBuilder sb) {
        sb.setLength(0);
        sb.append("( (").append(a.j.f556a).append(" != ").append(l.f569e).append(" AND ").append(a.j.f556a).append(" <= ?) OR ");
        sb.append(a.i.f556a).append(" <= ?)");
        sb.append(" AND (").append(a.l.f556a).append(" IS NULL OR ").append(a.l.f556a).append(" != 1)");
        int size = 2;
        if (jVar.f() != null) {
            sb.append(" AND ").append(a.f540g.f556a).append(" <= ?");
            size = 3;
        }
        if (jVar.b() != null) {
            if (jVar.c().isEmpty()) {
                sb.append(" AND 0 ");
            } else {
                sb.append(" AND ").append(a.f535b.f556a).append(" IN ( SELECT ").append(a.n.f556a).append(" FROM ").append("job_holder_tags").append(" WHERE ").append(a.o.f556a).append(" IN (");
                c.a(sb, jVar.c().size());
                sb.append(")");
                if (jVar.b() == ah.ANY) {
                    sb.append(")");
                } else if (jVar.b() == ah.ALL) {
                    sb.append(" GROUP BY (`").append(a.n.f556a).append("`)").append(" HAVING count(*) = ").append(jVar.c().size()).append(")");
                } else {
                    throw new IllegalArgumentException("unknown constraint " + jVar);
                }
                size += jVar.c().size();
            }
        }
        if (!jVar.d().isEmpty()) {
            sb.append(" AND (").append(a.f537d.f556a).append(" IS NULL OR ").append(a.f537d.f556a).append(" NOT IN(");
            c.a(sb, jVar.d().size());
            sb.append("))");
            size += jVar.d().size();
        }
        if (!jVar.g().isEmpty()) {
            sb.append(" AND ").append(a.f535b.f556a).append(" NOT IN(");
            c.a(sb, jVar.g().size());
            sb.append(")");
            size += jVar.g().size();
        }
        if (jVar.e()) {
            sb.append(" AND ").append(a.h.f556a).append(" != ?");
            size++;
        }
        return new l(j, sb.toString(), new String[size]);
    }

    private boolean a(com.a.a.a.j jVar) {
        return jVar.c().size() < 64 && jVar.d().size() < 64 && jVar.g().size() < 64;
    }

    private long b(com.a.a.a.j jVar) {
        return ((jVar.e() ? 1 : 0) << 20) | (jVar.g().size() << 14) | ((jVar.b() == null ? 2 : jVar.b().ordinal()) << 0) | (jVar.c().size() << 2) | (jVar.d().size() << 8) | ((jVar.f() != null ? 0 : 1) << 21);
    }
}
