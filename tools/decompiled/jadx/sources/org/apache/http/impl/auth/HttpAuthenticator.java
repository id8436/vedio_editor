package org.apache.http.impl.auth;

import android.util.Log;
import java.io.IOException;
import java.util.Queue;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthOption;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Asserts;

/* JADX INFO: loaded from: classes3.dex */
public class HttpAuthenticator {
    private static final String TAG = "HttpClient";

    public HttpAuthenticator(Log log) {
    }

    public HttpAuthenticator() {
        this(null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean isAuthenticationRequested(HttpHost httpHost, HttpResponse httpResponse, AuthenticationStrategy authenticationStrategy, AuthStateHC4 authStateHC4, HttpContext httpContext) {
        if (authenticationStrategy.isAuthenticationRequested(httpHost, httpResponse, httpContext)) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Authentication required");
            }
            if (authStateHC4.getState() == AuthProtocolState.SUCCESS) {
                authenticationStrategy.authFailed(httpHost, authStateHC4.getAuthScheme(), httpContext);
            }
            return true;
        }
        switch (authStateHC4.getState()) {
            case CHALLENGED:
            case HANDSHAKE:
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Authentication succeeded");
                }
                authStateHC4.setState(AuthProtocolState.SUCCESS);
                authenticationStrategy.authSucceeded(httpHost, authStateHC4.getAuthScheme(), httpContext);
                return false;
            case SUCCESS:
                return false;
            default:
                authStateHC4.setState(AuthProtocolState.UNCHALLENGED);
                return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0062 A[Catch: MalformedChallengeException -> 0x009c, TryCatch #0 {MalformedChallengeException -> 0x009c, blocks: (B:3:0x0002, B:5:0x000c, B:6:0x002a, B:8:0x0034, B:10:0x003e, B:13:0x0049, B:14:0x0059, B:15:0x005c, B:17:0x0062, B:19:0x0068, B:21:0x0072, B:22:0x008c, B:24:0x0098, B:32:0x00cd, B:34:0x00d7, B:35:0x00e0, B:37:0x00f1, B:39:0x0103, B:41:0x010d, B:42:0x0116, B:44:0x011f, B:46:0x0129, B:47:0x0132, B:48:0x0144, B:49:0x014c), top: B:52:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f1 A[Catch: MalformedChallengeException -> 0x009c, TryCatch #0 {MalformedChallengeException -> 0x009c, blocks: (B:3:0x0002, B:5:0x000c, B:6:0x002a, B:8:0x0034, B:10:0x003e, B:13:0x0049, B:14:0x0059, B:15:0x005c, B:17:0x0062, B:19:0x0068, B:21:0x0072, B:22:0x008c, B:24:0x0098, B:32:0x00cd, B:34:0x00d7, B:35:0x00e0, B:37:0x00f1, B:39:0x0103, B:41:0x010d, B:42:0x0116, B:44:0x011f, B:46:0x0129, B:47:0x0132, B:48:0x0144, B:49:0x014c), top: B:52:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleAuthChallenge(org.apache.http.HttpHost r7, org.apache.http.HttpResponse r8, org.apache.http.client.AuthenticationStrategy r9, org.apache.http.auth.AuthStateHC4 r10, org.apache.http.protocol.HttpContext r11) {
        /*
            Method dump skipped, instruction units count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.auth.HttpAuthenticator.handleAuthChallenge(org.apache.http.HttpHost, org.apache.http.HttpResponse, org.apache.http.client.AuthenticationStrategy, org.apache.http.auth.AuthStateHC4, org.apache.http.protocol.HttpContext):boolean");
    }

    public void generateAuthResponse(HttpRequest httpRequest, AuthStateHC4 authStateHC4, HttpContext httpContext) throws HttpException, IOException {
        AuthScheme authScheme = authStateHC4.getAuthScheme();
        Credentials credentials = authStateHC4.getCredentials();
        switch (authStateHC4.getState()) {
            case CHALLENGED:
                Queue<AuthOption> authOptions = authStateHC4.getAuthOptions();
                if (authOptions != null) {
                    while (!authOptions.isEmpty()) {
                        AuthOption authOptionRemove = authOptions.remove();
                        AuthScheme authScheme2 = authOptionRemove.getAuthScheme();
                        Credentials credentials2 = authOptionRemove.getCredentials();
                        authStateHC4.update(authScheme2, credentials2);
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Generating response to an authentication challenge using " + authScheme2.getSchemeName() + " scheme");
                        }
                        try {
                            httpRequest.addHeader(doAuth(authScheme2, credentials2, httpRequest, httpContext));
                            return;
                        } catch (AuthenticationException e2) {
                            if (Log.isLoggable(TAG, 5)) {
                                Log.w(TAG, authScheme2 + " authentication error: " + e2.getMessage());
                            }
                        }
                    }
                    return;
                }
                ensureAuthScheme(authScheme);
                break;
                break;
            case SUCCESS:
                ensureAuthScheme(authScheme);
                if (authScheme.isConnectionBased()) {
                    return;
                }
                break;
            case FAILURE:
                return;
        }
        if (authScheme != null) {
            try {
                httpRequest.addHeader(doAuth(authScheme, credentials, httpRequest, httpContext));
            } catch (AuthenticationException e3) {
                if (Log.isLoggable(TAG, 6)) {
                    Log.e(TAG, authScheme + " authentication error: " + e3.getMessage());
                }
            }
        }
    }

    private void ensureAuthScheme(AuthScheme authScheme) {
        Asserts.notNull(authScheme, "Auth scheme");
    }

    private Header doAuth(AuthScheme authScheme, Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        return authScheme instanceof ContextAwareAuthScheme ? ((ContextAwareAuthScheme) authScheme).authenticate(credentials, httpRequest, httpContext) : authScheme.authenticate(credentials, httpRequest);
    }
}
