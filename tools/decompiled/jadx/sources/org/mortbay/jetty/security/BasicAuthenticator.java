package org.mortbay.jetty.security;

import java.io.IOException;
import java.security.Principal;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;

/* JADX INFO: loaded from: classes3.dex */
public class BasicAuthenticator implements Authenticator {
    @Override // org.mortbay.jetty.security.Authenticator
    public Principal authenticate(UserRealm userRealm, String str, Request request, Response response) throws IOException {
        Principal principalAuthenticate = null;
        String header = request.getHeader("Authorization");
        if (header != null) {
            try {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("Credentials: ").append(header).toString());
                }
                String strDecode = B64Code.decode(header.substring(header.indexOf(32) + 1), StringUtil.__ISO_8859_1);
                int iIndexOf = strDecode.indexOf(58);
                String strSubstring = strDecode.substring(0, iIndexOf);
                principalAuthenticate = userRealm.authenticate(strSubstring, strDecode.substring(iIndexOf + 1), request);
                if (principalAuthenticate == null) {
                    Log.warn("AUTH FAILURE: user {}", StringUtil.printable(strSubstring));
                } else {
                    request.setAuthType("BASIC");
                    request.setUserPrincipal(principalAuthenticate);
                }
            } catch (Exception e2) {
                Log.warn(new StringBuffer().append("AUTH FAILURE: ").append(e2.toString()).toString());
                Log.ignore(e2);
            }
        }
        if (principalAuthenticate == null && response != null) {
            sendChallenge(userRealm, response);
        }
        return principalAuthenticate;
    }

    @Override // org.mortbay.jetty.security.Authenticator
    public String getAuthMethod() {
        return "BASIC";
    }

    public void sendChallenge(UserRealm userRealm, Response response) throws IOException {
        response.setHeader("WWW-Authenticate", new StringBuffer().append("Basic realm=\"").append(userRealm.getName()).append('\"').toString());
        response.sendError(401);
    }
}
