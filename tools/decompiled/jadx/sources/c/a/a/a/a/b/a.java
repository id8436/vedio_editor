package c.a.a.a.a.b;

import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: AbstractSpiCall.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final String ACCEPT_JSON_VALUE = "application/json";
    public static final String ANDROID_CLIENT_TYPE = "android";
    public static final String CLS_ANDROID_SDK_DEVELOPER_TOKEN = "470fa2b4ae81cd56ecbcda9735803434cec591fa";
    public static final String CRASHLYTICS_USER_AGENT = "Crashlytics Android SDK/";
    public static final int DEFAULT_TIMEOUT = 10000;
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_API_KEY = "X-CRASHLYTICS-API-KEY";
    public static final String HEADER_CLIENT_TYPE = "X-CRASHLYTICS-API-CLIENT-TYPE";
    public static final String HEADER_CLIENT_VERSION = "X-CRASHLYTICS-API-CLIENT-VERSION";
    public static final String HEADER_D = "X-CRASHLYTICS-D";
    public static final String HEADER_DEVELOPER_TOKEN = "X-CRASHLYTICS-DEVELOPER-TOKEN";
    public static final String HEADER_DEVICE_STATE = "X-CRASHLYTICS-DEVICE-STATE";
    public static final String HEADER_REQUEST_ID = "X-REQUEST-ID";
    public static final String HEADER_USER_AGENT = "User-Agent";
    private static final Pattern PROTOCOL_AND_HOST_PATTERN = Pattern.compile("http(s?)://[^\\/]+", 2);
    protected final c.a.a.a.q kit;
    private final c.a.a.a.a.e.d method;
    private final String protocolAndHostOverride;
    private final c.a.a.a.a.e.m requestFactory;
    private final String url;

    public a(c.a.a.a.q qVar, String str, String str2, c.a.a.a.a.e.m mVar, c.a.a.a.a.e.d dVar) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        if (mVar == null) {
            throw new IllegalArgumentException("requestFactory must not be null.");
        }
        this.kit = qVar;
        this.protocolAndHostOverride = str;
        this.url = overrideProtocolAndHost(str2);
        this.requestFactory = mVar;
        this.method = dVar;
    }

    protected String getUrl() {
        return this.url;
    }

    protected c.a.a.a.a.e.e getHttpRequest() {
        return getHttpRequest(Collections.emptyMap());
    }

    protected c.a.a.a.a.e.e getHttpRequest(Map<String, String> map) {
        return this.requestFactory.a(this.method, getUrl(), map).a(false).a(10000).a("User-Agent", CRASHLYTICS_USER_AGENT + this.kit.getVersion()).a(HEADER_DEVELOPER_TOKEN, CLS_ANDROID_SDK_DEVELOPER_TOKEN);
    }

    private String overrideProtocolAndHost(String str) {
        if (!m.c(this.protocolAndHostOverride)) {
            return PROTOCOL_AND_HOST_PATTERN.matcher(str).replaceFirst(this.protocolAndHostOverride);
        }
        return str;
    }
}
