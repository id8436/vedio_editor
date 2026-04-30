package com.adobe.premiereclip.sharing;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.twitter.sdk.android.core.a.q;
import f.b.f;
import f.b.t;
import f.g;

/* JADX INFO: compiled from: CustomTwitterApiClient.java */
/* JADX INFO: loaded from: classes.dex */
interface GetUsersShowAPICustomService {
    @f(a = "/1.1/users/show.json")
    g<q> show(@t(a = BehanceSDKUrlUtil.KEY_USER_ID) long j);
}
