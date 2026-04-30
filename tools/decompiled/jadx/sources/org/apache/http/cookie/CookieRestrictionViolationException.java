package org.apache.http.cookie;

import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class CookieRestrictionViolationException extends MalformedCookieException {
    private static final long serialVersionUID = 7371235577078589013L;

    public CookieRestrictionViolationException() {
    }

    public CookieRestrictionViolationException(String str) {
        super(str);
    }
}
