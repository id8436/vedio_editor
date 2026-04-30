package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import d.ar;
import d.at;
import d.bf;
import f.av;
import f.ay;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
class ScribeFilesSender implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f3986a = {91};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f3987b = {ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f3988c = {93};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f3989d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final aa f3990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f3991f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TwitterAuthConfig f3992g;
    private final com.twitter.sdk.android.core.u<? extends com.twitter.sdk.android.core.t<TwitterAuthToken>> h;
    private final com.twitter.sdk.android.core.g i;
    private final AtomicReference<ScribeService> j = new AtomicReference<>();
    private final ExecutorService k;
    private final com.twitter.sdk.android.core.internal.s l;

    /* JADX INFO: loaded from: classes.dex */
    interface ScribeService {
        @f.b.k(a = {"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @f.b.o(a = "/{version}/jot/{type}")
        @f.b.e
        f.g<bf> upload(@f.b.s(a = AdobeCommunityConstants.AdobeCommunityResourceVersionKey) String str, @f.b.s(a = "type") String str2, @f.b.c(a = "log[]") String str3);

        @f.b.k(a = {"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @f.b.o(a = "/scribe/{sequence}")
        @f.b.e
        f.g<bf> uploadSequence(@f.b.s(a = "sequence") String str, @f.b.c(a = "log[]") String str2);
    }

    public ScribeFilesSender(Context context, aa aaVar, long j, TwitterAuthConfig twitterAuthConfig, com.twitter.sdk.android.core.u<? extends com.twitter.sdk.android.core.t<TwitterAuthToken>> uVar, com.twitter.sdk.android.core.g gVar, ExecutorService executorService, com.twitter.sdk.android.core.internal.s sVar) {
        this.f3989d = context;
        this.f3990e = aaVar;
        this.f3991f = j;
        this.f3992g = twitterAuthConfig;
        this.h = uVar;
        this.i = gVar;
        this.k = executorService;
        this.l = sVar;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.s
    public boolean a(List<File> list) throws Throwable {
        if (c()) {
            try {
                String strB = b(list);
                com.twitter.sdk.android.core.internal.n.a(this.f3989d, strB);
                av<bf> avVarA = a(strB);
                if (avVarA.a() == 200) {
                    return true;
                }
                com.twitter.sdk.android.core.internal.n.a(this.f3989d, "Failed sending files", (Throwable) null);
                if (avVarA.a() == 500) {
                    return true;
                }
                if (avVarA.a() == 400) {
                    return true;
                }
            } catch (Exception e2) {
                com.twitter.sdk.android.core.internal.n.a(this.f3989d, "Failed sending files", e2);
            }
        } else {
            com.twitter.sdk.android.core.internal.n.a(this.f3989d, "Cannot attempt upload at this time");
        }
        return false;
    }

    String b(List<File> list) throws Throwable {
        t tVar;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        boolean[] zArr = new boolean[1];
        byteArrayOutputStream.write(f3986a);
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            try {
                tVar = new t(it.next());
            } catch (Throwable th) {
                th = th;
                tVar = null;
            }
            try {
                tVar.a(new af(this, zArr, byteArrayOutputStream));
                com.twitter.sdk.android.core.internal.n.a(tVar);
            } catch (Throwable th2) {
                th = th2;
                com.twitter.sdk.android.core.internal.n.a(tVar);
                throw th;
            }
        }
        byteArrayOutputStream.write(f3988c);
        return byteArrayOutputStream.toString("UTF-8");
    }

    private boolean c() {
        return a() != null;
    }

    synchronized ScribeService a() {
        ar arVarA;
        if (this.j.get() == null) {
            com.twitter.sdk.android.core.t tVarA = a(this.f3991f);
            if (a(tVarA)) {
                arVarA = new at().a(com.twitter.sdk.android.core.internal.a.e.a()).a(new ag(this.f3990e, this.l)).a(new com.twitter.sdk.android.core.internal.a.d(tVarA, this.f3992g)).a();
            } else {
                arVarA = new at().a(com.twitter.sdk.android.core.internal.a.e.a()).a(new ag(this.f3990e, this.l)).a(new com.twitter.sdk.android.core.internal.a.a(this.i)).a();
            }
            this.j.compareAndSet(null, (ScribeService) new ay().a(this.f3990e.f3998b).a(arVarA).a().a(ScribeService.class));
        }
        return this.j.get();
    }

    private com.twitter.sdk.android.core.t a(long j) {
        return this.h.a(j);
    }

    private boolean a(com.twitter.sdk.android.core.t tVar) {
        return (tVar == null || tVar.a() == null) ? false : true;
    }

    av<bf> a(String str) throws IOException {
        ScribeService scribeServiceA = a();
        if (!TextUtils.isEmpty(this.f3990e.f4001e)) {
            return scribeServiceA.uploadSequence(this.f3990e.f4001e, str).a();
        }
        return scribeServiceA.upload(this.f3990e.f3999c, this.f3990e.f4000d, str).a();
    }
}
