package com.b.a.d.d.d;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.UUID;

/* JADX INFO: compiled from: GifFrameLoader.java */
/* JADX INFO: loaded from: classes2.dex */
class l implements com.b.a.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final UUID f1066a;

    public l() {
        this(UUID.randomUUID());
    }

    l(UUID uuid) {
        this.f1066a = uuid;
    }

    @Override // com.b.a.d.c
    public boolean equals(Object obj) {
        if (obj instanceof l) {
            return ((l) obj).f1066a.equals(this.f1066a);
        }
        return false;
    }

    @Override // com.b.a.d.c
    public int hashCode() {
        return this.f1066a.hashCode();
    }

    @Override // com.b.a.d.c
    public void a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        throw new UnsupportedOperationException("Not implemented");
    }
}
