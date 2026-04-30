package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class BasicCommentHandlerHC4 extends AbstractCookieAttributeHandlerHC4 {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, "Cookie");
        setCookie.setComment(str);
    }
}
