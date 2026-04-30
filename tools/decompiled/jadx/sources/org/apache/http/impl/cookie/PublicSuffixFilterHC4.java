package org.apache.http.impl.cookie;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.client.utils.Punycode;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

/* JADX INFO: loaded from: classes3.dex */
public class PublicSuffixFilterHC4 implements CookieAttributeHandler {
    private Set<String> exceptions;
    private Set<String> suffixes;
    private final CookieAttributeHandler wrapped;

    public PublicSuffixFilterHC4(CookieAttributeHandler cookieAttributeHandler) {
        this.wrapped = cookieAttributeHandler;
    }

    public void setPublicSuffixes(Collection<String> collection) {
        this.suffixes = new HashSet(collection);
    }

    public void setExceptions(Collection<String> collection) {
        this.exceptions = new HashSet(collection);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (isForPublicSuffix(cookie)) {
            return false;
        }
        return this.wrapped.match(cookie, cookieOrigin);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        this.wrapped.parse(setCookie, str);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        this.wrapped.validate(cookie, cookieOrigin);
    }

    private boolean isForPublicSuffix(Cookie cookie) {
        String domain = cookie.getDomain();
        if (domain.startsWith(".")) {
            domain = domain.substring(1);
        }
        String unicode = Punycode.toUnicode(domain);
        if ((this.exceptions == null || !this.exceptions.contains(unicode)) && this.suffixes != null) {
            while (!this.suffixes.contains(unicode)) {
                if (unicode.startsWith("*.")) {
                    unicode = unicode.substring(2);
                }
                int iIndexOf = unicode.indexOf(46);
                if (iIndexOf != -1) {
                    unicode = "*" + unicode.substring(iIndexOf);
                    if (unicode.length() <= 0) {
                    }
                }
                return false;
            }
            return true;
        }
        return false;
    }
}
