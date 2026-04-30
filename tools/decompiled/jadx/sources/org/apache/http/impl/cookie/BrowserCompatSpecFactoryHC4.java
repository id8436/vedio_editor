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
public class BrowserCompatSpecFactoryHC4 implements CookieSpecFactory, CookieSpecProvider {
    private final String[] datepatterns;
    private final SecurityLevel securityLevel;

    public enum SecurityLevel {
        SECURITYLEVEL_DEFAULT,
        SECURITYLEVEL_IE_MEDIUM
    }

    public BrowserCompatSpecFactoryHC4(String[] strArr, SecurityLevel securityLevel) {
        this.datepatterns = strArr;
        this.securityLevel = securityLevel;
    }

    public BrowserCompatSpecFactoryHC4(String[] strArr) {
        this(null, SecurityLevel.SECURITYLEVEL_DEFAULT);
    }

    public BrowserCompatSpecFactoryHC4() {
        this(null, SecurityLevel.SECURITYLEVEL_DEFAULT);
    }

    @Override // org.apache.http.cookie.CookieSpecFactory
    public CookieSpec newInstance(HttpParams httpParams) {
        if (httpParams == null) {
            return new BrowserCompatSpecHC4(null, this.securityLevel);
        }
        Collection collection = (Collection) httpParams.getParameter("http.protocol.cookie-datepatterns");
        return new BrowserCompatSpecHC4(collection != null ? (String[]) collection.toArray(new String[collection.size()]) : null, this.securityLevel);
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        return new BrowserCompatSpecHC4(this.datepatterns);
    }
}
