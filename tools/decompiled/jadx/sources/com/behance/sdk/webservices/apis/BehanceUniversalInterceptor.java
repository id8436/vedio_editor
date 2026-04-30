package com.behance.sdk.webservices.apis;

import android.support.annotation.NonNull;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.network.BehanceNameValuePair;
import d.al;
import d.am;
import d.ax;
import d.ay;
import d.bd;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceUniversalInterceptor implements al {
    @Override // d.al
    public bd intercept(@NonNull am amVar) throws IOException {
        ax axVarA = amVar.a();
        BehanceNameValuePair universalHeader = BehanceSDK.getInstance().getUniversalHeader();
        if (universalHeader == null) {
            return amVar.a(axVarA);
        }
        ay ayVarE = axVarA.e();
        ayVarE.b(universalHeader.getName(), universalHeader.getValue());
        return amVar.a(ayVarE.b());
    }
}
