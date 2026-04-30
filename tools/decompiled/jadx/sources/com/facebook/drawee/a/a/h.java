package com.facebook.drawee.a.a;

import android.content.Context;
import com.facebook.d.d.m;
import com.facebook.imagepipeline.e.o;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: PipelineDraweeControllerBuilderSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
public class h implements m<f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.e.g f2019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f2020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<com.facebook.drawee.c.i> f2021d;

    public h(Context context, @Nullable b bVar) {
        this(context, o.a(), bVar);
    }

    public h(Context context, o oVar, @Nullable b bVar) {
        this(context, oVar, null, bVar);
    }

    public h(Context context, o oVar, Set<com.facebook.drawee.c.i> set, @Nullable b bVar) {
        this.f2018a = context;
        this.f2019b = oVar.h();
        com.facebook.imagepipeline.a.a.b bVarB = oVar.b();
        com.facebook.imagepipeline.a.a.a aVarA = bVarB != null ? bVarB.a(context) : null;
        if (bVar != null && bVar.b() != null) {
            this.f2020c = bVar.b();
        } else {
            this.f2020c = new i();
        }
        this.f2020c.a(context.getResources(), com.facebook.drawee.b.a.a(), aVarA, com.facebook.d.b.f.b(), this.f2019b.a(), bVar != null ? bVar.a() : null, bVar != null ? bVar.c() : null);
        this.f2021d = set;
    }

    @Override // com.facebook.d.d.m
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f b() {
        return new f(this.f2018a, this.f2020c, this.f2019b, this.f2021d);
    }
}
