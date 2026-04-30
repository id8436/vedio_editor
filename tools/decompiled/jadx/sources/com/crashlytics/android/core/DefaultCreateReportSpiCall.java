package com.crashlytics.android.core;

import c.a.a.a.a.b.a;
import c.a.a.a.a.b.ai;
import c.a.a.a.a.e.d;
import c.a.a.a.a.e.e;
import c.a.a.a.a.e.m;
import c.a.a.a.f;
import c.a.a.a.q;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class DefaultCreateReportSpiCall extends a implements CreateReportSpiCall {
    static final String FILE_CONTENT_TYPE = "application/octet-stream";
    static final String FILE_PARAM = "report[file]";
    static final String IDENTIFIER_PARAM = "report[identifier]";

    public DefaultCreateReportSpiCall(q qVar, String str, String str2, m mVar) {
        super(qVar, str, str2, mVar, d.POST);
    }

    DefaultCreateReportSpiCall(q qVar, String str, String str2, m mVar, d dVar) {
        super(qVar, str, str2, mVar, dVar);
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest createReportRequest) {
        e eVarApplyMultipartDataTo = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), createReportRequest), createReportRequest);
        f.h().a(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int iB = eVarApplyMultipartDataTo.b();
        f.h().a(CrashlyticsCore.TAG, "Create report request ID: " + eVarApplyMultipartDataTo.b(a.HEADER_REQUEST_ID));
        f.h().a(CrashlyticsCore.TAG, "Result was: " + iB);
        return ai.a(iB) == 0;
    }

    private e applyHeadersTo(e eVar, CreateReportRequest createReportRequest) {
        e eVarA = eVar.a(a.HEADER_API_KEY, createReportRequest.apiKey).a(a.HEADER_CLIENT_TYPE, a.ANDROID_CLIENT_TYPE).a(a.HEADER_CLIENT_VERSION, CrashlyticsCore.getInstance().getVersion());
        Iterator<Map.Entry<String, String>> it = createReportRequest.report.getCustomHeaders().entrySet().iterator();
        while (true) {
            e eVar2 = eVarA;
            if (it.hasNext()) {
                eVarA = eVar2.a(it.next());
            } else {
                return eVar2;
            }
        }
    }

    private e applyMultipartDataTo(e eVar, CreateReportRequest createReportRequest) {
        Report report = createReportRequest.report;
        return eVar.a(FILE_PARAM, report.getFileName(), "application/octet-stream", report.getFile()).e(IDENTIFIER_PARAM, report.getIdentifier());
    }
}
