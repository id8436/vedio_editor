package com.crashlytics.android.answers;

import c.a.a.a.a.b.a;
import c.a.a.a.a.b.ai;
import c.a.a.a.a.d.l;
import c.a.a.a.a.e.d;
import c.a.a.a.a.e.e;
import c.a.a.a.a.e.m;
import c.a.a.a.f;
import c.a.a.a.q;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class SessionAnalyticsFilesSender extends a implements l {
    static final String FILE_CONTENT_TYPE = "application/vnd.crashlytics.android.events";
    static final String FILE_PARAM_NAME = "session_analytics_file_";
    private final String apiKey;

    public SessionAnalyticsFilesSender(q qVar, String str, String str2, m mVar, String str3) {
        super(qVar, str, str2, mVar, d.POST);
        this.apiKey = str3;
    }

    @Override // c.a.a.a.a.d.l
    public boolean send(List<File> list) throws Throwable {
        e eVarA = getHttpRequest().a(a.HEADER_CLIENT_TYPE, a.ANDROID_CLIENT_TYPE).a(a.HEADER_CLIENT_VERSION, this.kit.getVersion()).a(a.HEADER_API_KEY, this.apiKey);
        int i = 0;
        for (File file : list) {
            eVarA.a(FILE_PARAM_NAME + i, file.getName(), FILE_CONTENT_TYPE, file);
            i++;
        }
        f.h().a(Answers.TAG, "Sending " + list.size() + " analytics files to " + getUrl());
        int iB = eVarA.b();
        f.h().a(Answers.TAG, "Response code for analytics file send is " + iB);
        return ai.a(iB) == 0;
    }
}
