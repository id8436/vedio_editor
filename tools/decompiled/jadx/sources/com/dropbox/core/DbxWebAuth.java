package com.dropbox.core;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.util.StringUtil;
import com.dropbox.core.v2.DbxRawClientV2;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DbxWebAuth {
    private static final int CSRF_BYTES_SIZE = 16;
    public static final String ROLE_PERSONAL = "personal";
    public static final String ROLE_WORK = "work";
    private final DbxAppInfo appInfo;
    private final Request deprecatedRequest;
    private final DbxRequestConfig requestConfig;
    private static final SecureRandom RAND = new SecureRandom();
    private static final int CSRF_STRING_SIZE = StringUtil.urlSafeBase64Encode(new byte[16]).length();

    @Deprecated
    public DbxWebAuth(DbxRequestConfig dbxRequestConfig, DbxAppInfo dbxAppInfo, String str, DbxSessionStore dbxSessionStore) {
        if (dbxRequestConfig == null) {
            throw new NullPointerException("requestConfig");
        }
        if (dbxAppInfo == null) {
            throw new NullPointerException("appInfo");
        }
        this.requestConfig = dbxRequestConfig;
        this.appInfo = dbxAppInfo;
        this.deprecatedRequest = newRequestBuilder().withRedirectUri(str, dbxSessionStore).build();
    }

    public DbxWebAuth(DbxRequestConfig dbxRequestConfig, DbxAppInfo dbxAppInfo) {
        if (dbxRequestConfig == null) {
            throw new NullPointerException("requestConfig");
        }
        if (dbxAppInfo == null) {
            throw new NullPointerException("appInfo");
        }
        this.requestConfig = dbxRequestConfig;
        this.appInfo = dbxAppInfo;
        this.deprecatedRequest = null;
    }

    @Deprecated
    public String start(String str) {
        if (this.deprecatedRequest == null) {
            throw new IllegalStateException("Must use DbxWebAuth.authorize instead.");
        }
        return authorizeImpl(this.deprecatedRequest.copy().withState(str).build());
    }

    public String authorize(Request request) {
        if (this.deprecatedRequest != null) {
            throw new IllegalStateException("Must create this instance using DbxWebAuth(DbxRequestConfig,DbxAppInfo) to call this method.");
        }
        return authorizeImpl(request);
    }

    private String authorizeImpl(Request request) {
        HashMap map = new HashMap();
        map.put(BehanceSDKUrlUtil.PARAM_KEY_CLIENT_ID, this.appInfo.getKey());
        map.put("response_type", ProjectHostingService.PROJECTHOSTING_SERVICE);
        if (request.redirectUri != null) {
            map.put("redirect_uri", request.redirectUri);
            map.put("state", appendCsrfToken(request));
        }
        if (request.requireRole != null) {
            map.put("require_role", request.requireRole);
        }
        if (request.forceReapprove != null) {
            map.put("force_reapprove", Boolean.toString(request.forceReapprove.booleanValue()).toLowerCase());
        }
        if (request.disableSignup != null) {
            map.put("disable_signup", Boolean.toString(request.disableSignup.booleanValue()).toLowerCase());
        }
        return DbxRequestUtil.buildUrlWithParams(this.requestConfig.getUserLocale(), this.appInfo.getHost().getWeb(), "oauth2/authorize", DbxRequestUtil.toParamsArray(map));
    }

    public DbxAuthFinish finishFromCode(String str) throws DbxException {
        return finish(str);
    }

    public DbxAuthFinish finishFromCode(String str, String str2) throws DbxException {
        return finish(str, str2, null);
    }

    public DbxAuthFinish finishFromRedirect(String str, DbxSessionStore dbxSessionStore, Map<String, String[]> map) throws CsrfException, ProviderException, DbxException, BadStateException, NotApprovedException, BadRequestException {
        if (str == null) {
            throw new NullPointerException("redirectUri");
        }
        if (dbxSessionStore == null) {
            throw new NullPointerException("sessionStore");
        }
        if (map == null) {
            throw new NullPointerException("params");
        }
        String param = getParam(map, "state");
        if (param == null) {
            throw new BadRequestException("Missing required parameter: \"state\".");
        }
        String param2 = getParam(map, Adobe360Constants.kAdobe360SatusError);
        String param3 = getParam(map, ProjectHostingService.PROJECTHOSTING_SERVICE);
        String param4 = getParam(map, "error_description");
        if (param3 == null && param2 == null) {
            throw new BadRequestException("Missing both \"code\" and \"error\".");
        }
        if (param3 != null && param2 != null) {
            throw new BadRequestException("Both \"code\" and \"error\" are set.");
        }
        if (param3 != null && param4 != null) {
            throw new BadRequestException("Both \"code\" and \"error_description\" are set.");
        }
        String strVerifyAndStripCsrfToken = verifyAndStripCsrfToken(param, dbxSessionStore);
        if (param2 != null) {
            if (param2.equals("access_denied")) {
                throw new NotApprovedException(param4 == null ? "No additional description from Dropbox" : "Additional description from Dropbox: " + param4);
            }
            if (param4 != null) {
                param2 = String.format("%s: %s", param2, param4);
            }
            throw new ProviderException(param2);
        }
        return finish(param3, str, strVerifyAndStripCsrfToken);
    }

    private DbxAuthFinish finish(String str) throws DbxException {
        return finish(str, null, null);
    }

    private DbxAuthFinish finish(String str, String str2, final String str3) throws DbxException {
        if (str == null) {
            throw new NullPointerException(ProjectHostingService.PROJECTHOSTING_SERVICE);
        }
        HashMap map = new HashMap();
        map.put("grant_type", "authorization_code");
        map.put(ProjectHostingService.PROJECTHOSTING_SERVICE, str);
        map.put("locale", this.requestConfig.getUserLocale());
        if (str2 != null) {
            map.put("redirect_uri", str2);
        }
        ArrayList arrayList = new ArrayList();
        DbxRequestUtil.addBasicAuthHeader(arrayList, this.appInfo.getKey(), this.appInfo.getSecret());
        return (DbxAuthFinish) DbxRequestUtil.doPostNoAuth(this.requestConfig, DbxRawClientV2.USER_AGENT_ID, this.appInfo.getHost().getApi(), "oauth2/token", DbxRequestUtil.toParamsArray(map), arrayList, new DbxRequestUtil.ResponseHandler<DbxAuthFinish>() { // from class: com.dropbox.core.DbxWebAuth.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
            public DbxAuthFinish handle(HttpRequestor.Response response) throws DbxException {
                if (response.getStatusCode() != 200) {
                    throw DbxRequestUtil.unexpectedStatus(response);
                }
                return ((DbxAuthFinish) DbxRequestUtil.readJsonFromResponse(DbxAuthFinish.Reader, response)).withUrlState(str3);
            }
        });
    }

    @Deprecated
    public DbxAuthFinish finish(Map<String, String[]> map) throws CsrfException, ProviderException, DbxException, BadStateException, NotApprovedException, BadRequestException {
        if (this.deprecatedRequest == null) {
            throw new IllegalStateException("Must use DbxWebAuth.finishFromRedirect(..) instead.");
        }
        return finishFromRedirect(this.deprecatedRequest.redirectUri, this.deprecatedRequest.sessionStore, map);
    }

    private static String appendCsrfToken(Request request) {
        byte[] bArr = new byte[16];
        RAND.nextBytes(bArr);
        String strUrlSafeBase64Encode = StringUtil.urlSafeBase64Encode(bArr);
        if (strUrlSafeBase64Encode.length() != CSRF_STRING_SIZE) {
            throw new AssertionError("unexpected CSRF token length: " + strUrlSafeBase64Encode.length());
        }
        if (request.sessionStore != null) {
            request.sessionStore.set(strUrlSafeBase64Encode);
        }
        if (request.state != null) {
            strUrlSafeBase64Encode = strUrlSafeBase64Encode + request.state;
            if (strUrlSafeBase64Encode.length() > 500) {
                throw new AssertionError("unexpected combined state length: " + strUrlSafeBase64Encode.length());
            }
        }
        return strUrlSafeBase64Encode;
    }

    private static String verifyAndStripCsrfToken(String str, DbxSessionStore dbxSessionStore) throws CsrfException, BadStateException {
        String str2 = dbxSessionStore.get();
        if (str2 == null) {
            throw new BadStateException("No CSRF Token loaded from session store.");
        }
        if (str2.length() < CSRF_STRING_SIZE) {
            throw new BadStateException("Token retrieved from session store is too small: " + str2);
        }
        if (str.length() < CSRF_STRING_SIZE) {
            throw new CsrfException("Token too small: " + str);
        }
        String strSubstring = str.substring(0, CSRF_STRING_SIZE);
        if (!StringUtil.secureStringEquals(str2, strSubstring)) {
            throw new CsrfException("expecting " + StringUtil.jq(str2) + ", got " + StringUtil.jq(strSubstring));
        }
        String strSubstring2 = str.substring(CSRF_STRING_SIZE, str.length());
        dbxSessionStore.clear();
        if (strSubstring2.isEmpty()) {
            return null;
        }
        return strSubstring2;
    }

    private static String getParam(Map<String, String[]> map, String str) throws BadRequestException {
        String[] strArr = map.get(str);
        if (strArr == null) {
            return null;
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("Parameter \"" + str + "\" missing value.");
        }
        if (strArr.length == 1) {
            return strArr[0];
        }
        throw new BadRequestException("multiple occurrences of \"" + str + "\" parameter");
    }

    /* JADX INFO: loaded from: classes2.dex */
    public abstract class Exception extends java.lang.Exception {
        private static final long serialVersionUID = 0;

        public Exception(String str) {
            super(str);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class BadRequestException extends Exception {
        private static final long serialVersionUID = 0;

        public BadRequestException(String str) {
            super(str);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class BadStateException extends Exception {
        private static final long serialVersionUID = 0;

        public BadStateException(String str) {
            super(str);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class CsrfException extends Exception {
        private static final long serialVersionUID = 0;

        public CsrfException(String str) {
            super(str);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class NotApprovedException extends Exception {
        private static final long serialVersionUID = 0;

        public NotApprovedException(String str) {
            super(str);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class ProviderException extends Exception {
        private static final long serialVersionUID = 0;

        public ProviderException(String str) {
            super(str);
        }
    }

    public static Request.Builder newRequestBuilder() {
        return Request.newBuilder();
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class Request {
        private static final int MAX_STATE_SIZE = 500;
        private static final Charset UTF8 = Charset.forName("UTF-8");
        private final Boolean disableSignup;
        private final Boolean forceReapprove;
        private final String redirectUri;
        private final String requireRole;
        private final DbxSessionStore sessionStore;
        private final String state;

        private Request(String str, String str2, String str3, Boolean bool, Boolean bool2, DbxSessionStore dbxSessionStore) {
            this.redirectUri = str;
            this.state = str2;
            this.requireRole = str3;
            this.forceReapprove = bool;
            this.disableSignup = bool2;
            this.sessionStore = dbxSessionStore;
        }

        public Builder copy() {
            return new Builder(this.redirectUri, this.state, this.requireRole, this.forceReapprove, this.disableSignup, this.sessionStore);
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public final class Builder {
            private Boolean disableSignup;
            private Boolean forceReapprove;
            private String redirectUri;
            private String requireRole;
            private DbxSessionStore sessionStore;
            private String state;

            private Builder() {
                this(null, null, null, null, null, null);
            }

            private Builder(String str, String str2, String str3, Boolean bool, Boolean bool2, DbxSessionStore dbxSessionStore) {
                this.redirectUri = str;
                this.state = str2;
                this.requireRole = str3;
                this.forceReapprove = bool;
                this.disableSignup = bool2;
                this.sessionStore = dbxSessionStore;
            }

            public Builder withNoRedirect() {
                this.redirectUri = null;
                this.sessionStore = null;
                return this;
            }

            public Builder withRedirectUri(String str, DbxSessionStore dbxSessionStore) {
                if (str == null) {
                    throw new NullPointerException("redirectUri");
                }
                if (dbxSessionStore == null) {
                    throw new NullPointerException("sessionStore");
                }
                this.redirectUri = str;
                this.sessionStore = dbxSessionStore;
                return this;
            }

            public Builder withState(String str) {
                if (str != null && str.getBytes(Request.UTF8).length + DbxWebAuth.CSRF_STRING_SIZE > 500) {
                    throw new IllegalArgumentException("UTF-8 encoded state cannot be greater than " + (500 - DbxWebAuth.CSRF_STRING_SIZE) + " bytes.");
                }
                this.state = str;
                return this;
            }

            public Builder withRequireRole(String str) {
                this.requireRole = str;
                return this;
            }

            public Builder withForceReapprove(Boolean bool) {
                this.forceReapprove = bool;
                return this;
            }

            public Builder withDisableSignup(Boolean bool) {
                this.disableSignup = bool;
                return this;
            }

            public Request build() {
                if (this.redirectUri == null && this.state != null) {
                    throw new IllegalStateException("Cannot specify a state without a redirect URI.");
                }
                return new Request(this.redirectUri, this.state, this.requireRole, this.forceReapprove, this.disableSignup, this.sessionStore);
            }
        }
    }
}
