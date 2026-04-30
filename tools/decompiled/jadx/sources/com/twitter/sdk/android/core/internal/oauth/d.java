package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.ah;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.z;
import d.bf;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: compiled from: OAuth1aService.java */
/* JADX INFO: loaded from: classes3.dex */
class d extends com.twitter.sdk.android.core.c<bf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.twitter.sdk.android.core.c f3959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ OAuth1aService f3960b;

    d(OAuth1aService oAuth1aService, com.twitter.sdk.android.core.c cVar) {
        this.f3960b = oAuth1aService;
        this.f3959a = cVar;
    }

    @Override // com.twitter.sdk.android.core.c
    public void success(s<bf> sVar) throws Throwable {
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(sVar.f4108a.c()));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            sb.append(line);
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                String string = sb.toString();
                OAuthResponse oAuthResponseA = OAuth1aService.a(string);
                if (oAuthResponseA == null) {
                    this.f3959a.failure(new z("Failed to parse auth response: " + string));
                } else {
                    this.f3959a.success(new s(oAuthResponseA, null));
                }
            } catch (IOException e2) {
                this.f3959a.failure(new z(e2.getMessage(), e2));
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }

    @Override // com.twitter.sdk.android.core.c
    public void failure(ah ahVar) {
        this.f3959a.failure(ahVar);
    }
}
