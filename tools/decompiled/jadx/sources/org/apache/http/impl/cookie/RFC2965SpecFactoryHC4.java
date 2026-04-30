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
public class RFC2965SpecFactoryHC4 implements CookieSpecFactory, CookieSpecProvider {
    private final String[] datepatterns;
    private final boolean oneHeader;

    public RFC2965SpecFactoryHC4(String[] strArr, boolean z) {
        this.datepatterns = strArr;
        this.oneHeader = z;
    }

    public RFC2965SpecFactoryHC4() {
        this(null, false);
    }

    @Override // org.apache.http.cookie.CookieSpecFactory
    public CookieSpec newInstance(HttpParams httpParams) {
        String[] strArr;
        if (httpParams == null) {
            return new RFC2965SpecHC4();
        }
        Collection collection = (Collection) httpParams.getParameter("http.protocol.cookie-datepatterns");
        if (collection == null) {
            strArr = null;
        } else {
            strArr = (String[]) collection.toArray(new String[collection.size()]);
        }
        return new RFC2965SpecHC4(strArr, httpParams.getBooleanParameter("http.protocol.single-cookie-header", false));
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        return new RFC2965SpecHC4(this.datepatterns, this.oneHeader);
    }
}
