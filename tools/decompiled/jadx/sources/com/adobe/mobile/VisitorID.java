package com.adobe.mobile;

/* JADX INFO: loaded from: classes2.dex */
public class VisitorID {
    public VisitorIDAuthenticationState authenticationState;
    public final String id;
    public final String idOrigin;
    public final String idType;

    public enum VisitorIDAuthenticationState {
        VISITOR_ID_AUTHENTICATION_STATE_UNKNOWN(0),
        VISITOR_ID_AUTHENTICATION_STATE_AUTHENTICATED(1),
        VISITOR_ID_AUTHENTICATION_STATE_LOGGED_OUT(2);

        private final int value;

        VisitorIDAuthenticationState(int i) {
            this.value = i;
        }

        protected int getValue() {
            return this.value;
        }
    }

    protected VisitorID(String str, String str2, String str3, VisitorIDAuthenticationState visitorIDAuthenticationState) throws IllegalStateException {
        this.authenticationState = VisitorIDAuthenticationState.VISITOR_ID_AUTHENTICATION_STATE_UNKNOWN;
        String strCleanContextDataKey = StaticMethods.cleanContextDataKey(str2);
        if (strCleanContextDataKey == null || strCleanContextDataKey.length() == 0) {
            throw new IllegalStateException("idType must not be null/empty");
        }
        this.idOrigin = str;
        this.idType = strCleanContextDataKey;
        this.id = str3;
        this.authenticationState = visitorIDAuthenticationState;
    }

    protected boolean isVisitorID(String str, String str2) {
        if (!this.idType.equals(str)) {
            return false;
        }
        if (this.id == null) {
            return str2 == null;
        }
        return this.id.equals(str2);
    }

    protected String serializeIdentifierKeyForAnalyticsID() {
        return this.idType + ".id";
    }

    protected String serializeAuthenticationKeyForAnalyticsID() {
        return this.idType + ".as";
    }
}
