package org.apache.http.impl.cookie;

import java.util.Collection;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecFactory;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class NetscapeDraftSpecFactoryHC4 implements CookieSpecFactory, CookieSpecProvider {
    private final String[] datepatterns;

    public NetscapeDraftSpecFactoryHC4(String[] strArr) {
        this.datepatterns = strArr;
    }

    public NetscapeDraftSpecFactoryHC4() {
        this(null);
    }

    @Override // org.apache.http.cookie.CookieSpecFactory
    public CookieSpec newInstance(HttpParams httpParams) {
        String[] strArr;
        if (httpParams == null) {
            return new NetscapeDraftSpecHC4();
        }
        Collection collection = (Collection) httpParams.getParameter("http.protocol.cookie-datepatterns");
        if (collection == null) {
            strArr = null;
        } else {
            strArr = (String[]) collection.toArray(new String[collection.size()]);
        }
        return new NetscapeDraftSpecHC4(strArr);
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        return new NetscapeDraftSpecHC4(this.datepatterns);
    }
}
