package com.google.gdata.util;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class AuthenticationException extends ServiceException {
    private String authHeader;
    private Map<String, String> parameters;
    private String scheme;
    private static final Pattern SCHEME_PATTERN = Pattern.compile("([^\\s$]*)\\s*(.*)?");
    private static String TOKEN = "[\\p{ASCII}&&[^\\p{Cntrl} \t;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+";
    private static final Pattern PARAM_PATTERN = Pattern.compile("(" + TOKEN + ")\\s*=\\s*(?:\"([^\"]*)\"" + BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR + "(" + TOKEN + ")?)");

    public AuthenticationException(String str, String str2) {
        super(str);
        this.parameters = new HashMap();
        initFromAuthHeader(str2);
    }

    public AuthenticationException(String str) {
        super(str);
        this.parameters = new HashMap();
    }

    public AuthenticationException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        this.parameters = new HashMap();
        initFromAuthHeader(httpURLConnection.getHeaderField("WWW-Authenticate"));
    }

    private void initFromAuthHeader(String str) {
        this.authHeader = str;
        if (str == null) {
            throw new NullPointerException("No authentication header information");
        }
        Matcher matcher = SCHEME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw new IllegalStateException("Unable to parse auth header: " + str);
        }
        this.scheme = matcher.group(1);
        if (matcher.groupCount() > 1) {
            Matcher matcher2 = PARAM_PATTERN.matcher(matcher.group(2));
            while (matcher2.find()) {
                String strGroup = matcher2.group(2);
                if (strGroup == null) {
                    strGroup = matcher2.group(3);
                }
                this.parameters.put(matcher2.group(1), strGroup);
            }
        }
    }

    public String getScheme() {
        return this.scheme;
    }

    public String getRealm() {
        return this.parameters.get(OAuthParameters.REALM_KEY);
    }

    public Map<String, String> getParameters() {
        return Collections.unmodifiableMap(this.parameters);
    }

    public String getAuthHeader() {
        return this.authHeader;
    }
}
