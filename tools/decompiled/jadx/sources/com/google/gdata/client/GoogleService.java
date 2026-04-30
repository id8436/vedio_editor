package com.google.gdata.client;

import com.google.api.client.auth.oauth2.Credential;
import com.google.common.annotations.Beta;
import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import com.google.gdata.client.authn.oauth.OAuthException;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.google.gdata.client.authn.oauth.OAuthSigner;
import com.google.gdata.client.http.GoogleGDataRequest;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.RedirectRequiredException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.PrivateKey;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleService extends Service implements AuthTokenFactory.TokenListener {
    private AuthTokenFactory authTokenFactory;
    private CookieManager cookieManager;

    public class InvalidCredentialsException extends AuthenticationException {
        public InvalidCredentialsException(String str) {
            super(str);
        }
    }

    public class AccountDeletedException extends AuthenticationException {
        public AccountDeletedException(String str) {
            super(str);
        }
    }

    public class AccountDisabledException extends AuthenticationException {
        public AccountDisabledException(String str) {
            super(str);
        }
    }

    public class NotVerifiedException extends AuthenticationException {
        public NotVerifiedException(String str) {
            super(str);
        }
    }

    public class TermsNotAgreedException extends AuthenticationException {
        public TermsNotAgreedException(String str) {
            super(str);
        }
    }

    public class ServiceUnavailableException extends AuthenticationException {
        public ServiceUnavailableException(String str) {
            super(str);
        }
    }

    public class CaptchaRequiredException extends AuthenticationException {
        private String captchaToken;
        private String captchaUrl;

        public CaptchaRequiredException(String str, String str2, String str3) {
            super(str);
            this.captchaToken = str3;
            this.captchaUrl = str2;
        }

        public String getCaptchaToken() {
            return this.captchaToken;
        }

        public String getCaptchaUrl() {
            return this.captchaUrl;
        }
    }

    public class SessionExpiredException extends AuthenticationException {
        public SessionExpiredException(String str) {
            super(str);
        }
    }

    public GoogleService(String str, String str2) {
        this(str, str2, "https", AppsForYourDomainService.DOMAIN_NAME);
    }

    public GoogleService(String str, String str2, String str3, String str4) {
        this.requestFactory = new GoogleGDataRequest.Factory();
        this.authTokenFactory = new GoogleAuthTokenFactory(str, str2, str3, str4, this);
        this.cookieManager = new SimpleCookieManager();
        initRequestFactory(str2);
    }

    public GoogleService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        this.requestFactory = gDataRequestFactory;
        this.authTokenFactory = authTokenFactory;
        this.cookieManager = new SimpleCookieManager();
        initRequestFactory(str);
    }

    private void initRequestFactory(String str) {
        if (str != null) {
            this.requestFactory.setHeader("User-Agent", str + " " + getServiceVersion());
        } else {
            this.requestFactory.setHeader("User-Agent", getServiceVersion());
        }
    }

    public AuthTokenFactory getAuthTokenFactory() {
        return this.authTokenFactory;
    }

    public void setAuthTokenFactory(AuthTokenFactory authTokenFactory) {
        this.authTokenFactory = authTokenFactory;
    }

    public CookieManager getCookieManager() {
        return this.cookieManager;
    }

    public void setCookieManager(CookieManager cookieManager) {
        this.cookieManager = cookieManager;
    }

    @Override // com.google.gdata.client.AuthTokenFactory.TokenListener
    public void tokenChanged(AuthTokenFactory.AuthToken authToken) {
        if (this.cookieManager != null) {
            this.cookieManager.clearCookies();
        }
        this.requestFactory.setAuthToken(authToken);
    }

    public void setUserCredentials(String str, String str2) throws AuthenticationException {
        setUserCredentials(str, str2, ClientLoginAccountType.HOSTED_OR_GOOGLE);
    }

    public void setUserCredentials(String str, String str2, ClientLoginAccountType clientLoginAccountType) throws AuthenticationException {
        setUserCredentials(str, str2, null, null, clientLoginAccountType);
    }

    public void setUserCredentials(String str, String str2, String str3, String str4) throws AuthenticationException {
        setUserCredentials(str, str2, str3, str4, ClientLoginAccountType.HOSTED_OR_GOOGLE);
    }

    public void setUserCredentials(String str, String str2, String str3, String str4, ClientLoginAccountType clientLoginAccountType) throws AuthenticationException {
        getGoogleAuthTokenFactory().setUserCredentials(str, str2, str3, str4, clientLoginAccountType);
        this.requestFactory.setAuthToken(this.authTokenFactory.getAuthToken());
    }

    public void setUserToken(String str) {
        getGoogleAuthTokenFactory().setUserToken(str);
        this.requestFactory.setAuthToken(this.authTokenFactory.getAuthToken());
    }

    public void setOAuthCredentials(OAuthParameters oAuthParameters, OAuthSigner oAuthSigner) throws OAuthException {
        getGoogleAuthTokenFactory().setOAuthCredentials(oAuthParameters, oAuthSigner);
        this.requestFactory.setAuthToken(this.authTokenFactory.getAuthToken());
    }

    @Beta
    public void setOAuth2Credentials(Credential credential) {
        getGoogleAuthTokenFactory().setOAuth2Credentials(credential);
        this.requestFactory.setAuthToken(this.authTokenFactory.getAuthToken());
    }

    public void setAuthSubToken(String str) {
        setAuthSubToken(str, null);
    }

    public void setAuthSubToken(String str, PrivateKey privateKey) {
        getGoogleAuthTokenFactory().setAuthSubToken(str, privateKey);
        this.requestFactory.setAuthToken(this.authTokenFactory.getAuthToken());
    }

    public String getAuthToken(String str, String str2, String str3, String str4, String str5, String str6) throws AuthenticationException {
        return getGoogleAuthTokenFactory().getAuthToken(str, str2, str3, str4, str5, str6);
    }

    public static String makePostRequest(URL url, Map<String, String> map) throws IOException {
        return GoogleAuthTokenFactory.makePostRequest(url, map);
    }

    public void setHandlesCookies(boolean z) {
        if (this.cookieManager == null) {
            if (z) {
                throw new IllegalArgumentException("No cookie manager defined");
            }
        } else {
            this.cookieManager.setCookiesEnabled(z);
        }
    }

    public boolean handlesCookies() {
        if (this.cookieManager == null) {
            return false;
        }
        return this.cookieManager.cookiesEnabled();
    }

    public void addCookie(GoogleGDataRequest.GoogleCookie googleCookie) {
        if (this.cookieManager != null) {
            this.cookieManager.addCookie(googleCookie);
        }
    }

    public Set<GoogleGDataRequest.GoogleCookie> getCookies() {
        if (this.cookieManager == null) {
            throw new IllegalArgumentException("No cookie manager defined");
        }
        return this.cookieManager.getCookies();
    }

    @Override // com.google.gdata.client.Service
    public Service.GDataRequest createRequest(Service.GDataRequest.RequestType requestType, URL url, ContentType contentType) throws IOException, ServiceException {
        Service.GDataRequest gDataRequestCreateRequest = super.createRequest(requestType, url, contentType);
        if (gDataRequestCreateRequest instanceof GoogleGDataRequest) {
            ((GoogleGDataRequest) gDataRequestCreateRequest).setService(this);
        }
        return gDataRequestCreateRequest;
    }

    @Override // com.google.gdata.client.Service
    protected Service.GDataRequest createRequest(Query query, ContentType contentType) throws IOException, ServiceException {
        Service.GDataRequest gDataRequestCreateRequest = super.createRequest(query, contentType);
        if (gDataRequestCreateRequest instanceof GoogleGDataRequest) {
            ((GoogleGDataRequest) gDataRequestCreateRequest).setService(this);
        }
        return gDataRequestCreateRequest;
    }

    @Override // com.google.gdata.client.Service
    public <E extends IEntry> E getEntry(URL url, Class<E> cls, DateTime dateTime) throws IOException, ServiceException {
        try {
            return (E) super.getEntry(url, cls, dateTime);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            return (E) super.getEntry(url, cls, dateTime);
        } catch (RedirectRequiredException e3) {
            url = handleRedirectException(e3);
            return (E) super.getEntry(url, cls, dateTime);
        }
    }

    @Override // com.google.gdata.client.Service
    public <E extends IEntry> E getEntry(URL url, Class<E> cls, String str) throws IOException, ServiceException {
        try {
            return (E) super.getEntry(url, cls, str);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            return (E) super.getEntry(url, cls, str);
        } catch (RedirectRequiredException e3) {
            url = handleRedirectException(e3);
            return (E) super.getEntry(url, cls, str);
        }
    }

    @Override // com.google.gdata.client.Service
    public <E extends IEntry> E update(URL url, E e2) throws IOException, ServiceException {
        try {
            return (E) super.update(url, e2);
        } catch (SessionExpiredException e3) {
            handleSessionExpiredException(e3);
            return (E) super.update(url, e2);
        } catch (RedirectRequiredException e4) {
            url = handleRedirectException(e4);
            return (E) super.update(url, e2);
        }
    }

    @Override // com.google.gdata.client.Service
    public <E extends IEntry> E insert(URL url, E e2) throws IOException, ServiceException {
        try {
            return (E) super.insert(url, e2);
        } catch (SessionExpiredException e3) {
            handleSessionExpiredException(e3);
            return (E) super.insert(url, e2);
        } catch (RedirectRequiredException e4) {
            url = handleRedirectException(e4);
            return (E) super.insert(url, e2);
        }
    }

    @Override // com.google.gdata.client.Service
    public <F extends IFeed> F getFeed(URL url, Class<F> cls, DateTime dateTime) throws IOException, ServiceException {
        try {
            return (F) super.getFeed(url, cls, dateTime);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            return (F) super.getFeed(url, cls, dateTime);
        } catch (RedirectRequiredException e3) {
            url = handleRedirectException(e3);
            return (F) super.getFeed(url, cls, dateTime);
        }
    }

    @Override // com.google.gdata.client.Service
    public <F extends IFeed> F getFeed(URL url, Class<F> cls, String str) throws IOException, ServiceException {
        try {
            return (F) super.getFeed(url, cls, str);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            return (F) super.getFeed(url, cls, str);
        } catch (RedirectRequiredException e3) {
            url = handleRedirectException(e3);
            return (F) super.getFeed(url, cls, str);
        }
    }

    @Override // com.google.gdata.client.Service
    public <F extends IFeed> F getFeed(Query query, Class<F> cls, DateTime dateTime) throws IOException, ServiceException {
        try {
            return (F) super.getFeed(query, cls, dateTime);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            return (F) super.getFeed(query, cls, dateTime);
        } catch (RedirectRequiredException e3) {
            query = new Query(handleRedirectException(e3));
            return (F) super.getFeed(query, cls, dateTime);
        }
    }

    @Override // com.google.gdata.client.Service
    public <F extends IFeed> F getFeed(Query query, Class<F> cls, String str) throws IOException, ServiceException {
        try {
            return (F) super.getFeed(query, cls, str);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            return (F) super.getFeed(query, cls, str);
        } catch (RedirectRequiredException e3) {
            query = new Query(handleRedirectException(e3));
            return (F) super.getFeed(query, cls, str);
        }
    }

    @Override // com.google.gdata.client.Service
    public void delete(URL url) throws IOException, ServiceException {
        try {
            super.delete(url);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            super.delete(url);
        } catch (RedirectRequiredException e3) {
            url = handleRedirectException(e3);
            super.delete(url);
        }
    }

    @Override // com.google.gdata.client.Service
    public void delete(URL url, String str) throws IOException, ServiceException {
        try {
            super.delete(url, str);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            super.delete(url, str);
        } catch (RedirectRequiredException e3) {
            url = handleRedirectException(e3);
            super.delete(url, str);
        }
    }

    protected URL handleRedirectException(RedirectRequiredException redirectRequiredException) throws ServiceException {
        try {
            return new URL(redirectRequiredException.getRedirectLocation());
        } catch (MalformedURLException e2) {
            ServiceException serviceException = new ServiceException(CoreErrorDomain.ERR.invalidRedirectedToUrl);
            serviceException.setInternalReason("Invalid redirected-to URL - " + redirectRequiredException.getRedirectLocation());
            throw serviceException;
        }
    }

    protected void handleSessionExpiredException(SessionExpiredException sessionExpiredException) throws ServiceException {
        this.authTokenFactory.handleSessionExpiredException(sessionExpiredException);
    }

    @Override // com.google.gdata.client.Service
    public <F extends IFeed> F batch(URL url, F f2) throws IOException, ServiceException {
        try {
            return (F) super.batch(url, f2);
        } catch (SessionExpiredException e2) {
            handleSessionExpiredException(e2);
            return (F) super.batch(url, f2);
        } catch (RedirectRequiredException e3) {
            url = handleRedirectException(e3);
            return (F) super.batch(url, f2);
        }
    }

    private GoogleAuthTokenFactory getGoogleAuthTokenFactory() {
        if (!(this.authTokenFactory instanceof GoogleAuthTokenFactory)) {
            throw new IllegalStateException("Invalid authentication token factory");
        }
        return (GoogleAuthTokenFactory) this.authTokenFactory;
    }
}
