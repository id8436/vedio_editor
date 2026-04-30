package d;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: MultipartBody.java */
/* JADX INFO: loaded from: classes3.dex */
public final class ap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e.k f4547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private an f4548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<aq> f4549c;

    public ap() {
        this(UUID.randomUUID().toString());
    }

    public ap(String str) {
        this.f4548b = ao.f4540a;
        this.f4549c = new ArrayList();
        this.f4547a = e.k.a(str);
    }

    public ap a(an anVar) {
        if (anVar == null) {
            throw new NullPointerException("type == null");
        }
        if (!anVar.a().equals("multipart")) {
            throw new IllegalArgumentException("multipart != " + anVar);
        }
        this.f4548b = anVar;
        return this;
    }

    public ap a(@Nullable ag agVar, az azVar) {
        return a(aq.a(agVar, azVar));
    }

    public ap a(aq aqVar) {
        if (aqVar == null) {
            throw new NullPointerException("part == null");
        }
        this.f4549c.add(aqVar);
        return this;
    }

    public ao a() {
        if (this.f4549c.isEmpty()) {
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
        return new ao(this.f4547a, this.f4548b, this.f4549c);
    }
}
