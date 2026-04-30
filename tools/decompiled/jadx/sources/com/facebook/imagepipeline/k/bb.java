package com.facebook.imagepipeline.k;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: LocalFileFetchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class bb extends ay {
    public bb(Executor executor, com.facebook.imagepipeline.memory.aj ajVar) {
        super(executor, ajVar);
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected com.facebook.imagepipeline.h.d a(com.facebook.imagepipeline.l.a aVar) throws IOException {
        return b(new FileInputStream(aVar.n().toString()), (int) aVar.n().length());
    }

    @Override // com.facebook.imagepipeline.k.ay
    protected String a() {
        return "LocalFileFetchProducer";
    }
}
