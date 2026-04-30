package org.apache.http.impl.auth;

import android.util.Base64;
import com.google.gdata.util.ContentType;
import java.nio.charset.Charset;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.BasicHttpContextHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EncodingUtils;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class BasicSchemeHC4 extends RFC2617SchemeHC4 {
    private boolean complete;

    public BasicSchemeHC4(Charset charset) {
        super(charset);
        this.complete = false;
    }

    @Deprecated
    public BasicSchemeHC4(ChallengeState challengeState) {
        super(challengeState);
    }

    public BasicSchemeHC4() {
        this(Consts.ASCII);
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "basic";
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4, org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        super.processChallenge(header);
        this.complete = true;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        return this.complete;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return false;
    }

    @Override // org.apache.http.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, new BasicHttpContextHC4());
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        Args.notNull(credentials, "Credentials");
        Args.notNull(httpRequest, "HTTP request");
        StringBuilder sb = new StringBuilder();
        sb.append(credentials.getUserPrincipal().getName());
        sb.append(":");
        sb.append(credentials.getPassword() == null ? "null" : credentials.getPassword());
        byte[] bArrEncode = Base64.encode(EncodingUtils.getBytes(sb.toString(), getCredentialsCharset(httpRequest)), 0);
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
        if (isProxy()) {
            charArrayBuffer.append("Proxy-Authorization");
        } else {
            charArrayBuffer.append("Authorization");
        }
        charArrayBuffer.append(": Basic ");
        charArrayBuffer.append(bArrEncode, 0, bArrEncode.length);
        return new BufferedHeader(charArrayBuffer);
    }

    @Deprecated
    public static Header authenticate(Credentials credentials, String str, boolean z) {
        Args.notNull(credentials, "Credentials");
        Args.notNull(str, ContentType.ATTR_CHARSET);
        StringBuilder sb = new StringBuilder();
        sb.append(credentials.getUserPrincipal().getName());
        sb.append(":");
        sb.append(credentials.getPassword() == null ? "null" : credentials.getPassword());
        byte[] bArrEncode = Base64.encode(EncodingUtils.getBytes(sb.toString(), str), 0);
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
        if (z) {
            charArrayBuffer.append("Proxy-Authorization");
        } else {
            charArrayBuffer.append("Authorization");
        }
        charArrayBuffer.append(": Basic ");
        charArrayBuffer.append(bArrEncode, 0, bArrEncode.length);
        return new BufferedHeader(charArrayBuffer);
    }
}
