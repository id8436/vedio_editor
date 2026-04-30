package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class BasicExpiresHandlerHC4 extends AbstractCookieAttributeHandlerHC4 {
    private final String[] datepatterns;

    public BasicExpiresHandlerHC4(String[] strArr) {
        Args.notNull(strArr, "Array of date patterns");
        this.datepatterns = strArr;
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, "Cookie");
        if (str == null) {
            throw new MalformedCookieException("Missing value for expires attribute");
        }
        Date date = org.apache.http.client.utils.DateUtils.parseDate(str, this.datepatterns);
        if (date == null) {
            throw new MalformedCookieException("Unable to parse expires attribute: " + str);
        }
        setCookie.setExpiryDate(date);
    }
}
