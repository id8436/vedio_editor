package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.teamlog.ApiSessionLogInfo;
import com.dropbox.core.v2.teamlog.SessionLogInfo;
import com.dropbox.core.v2.teamlog.WebSessionLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessMethodLogInfo {
    public static final AccessMethodLogInfo OTHER = new AccessMethodLogInfo().withTag(Tag.OTHER);
    private Tag _tag;
    private WebSessionLogInfo adminConsoleValue;
    private ApiSessionLogInfo apiValue;
    private WebSessionLogInfo contentManagerValue;
    private SessionLogInfo endUserValue;
    private WebSessionLogInfo signInAsValue;

    public enum Tag {
        END_USER,
        SIGN_IN_AS,
        CONTENT_MANAGER,
        ADMIN_CONSOLE,
        API,
        OTHER
    }

    private AccessMethodLogInfo() {
    }

    private AccessMethodLogInfo withTag(Tag tag) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo._tag = tag;
        return accessMethodLogInfo;
    }

    private AccessMethodLogInfo withTagAndEndUser(Tag tag, SessionLogInfo sessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo._tag = tag;
        accessMethodLogInfo.endUserValue = sessionLogInfo;
        return accessMethodLogInfo;
    }

    private AccessMethodLogInfo withTagAndSignInAs(Tag tag, WebSessionLogInfo webSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo._tag = tag;
        accessMethodLogInfo.signInAsValue = webSessionLogInfo;
        return accessMethodLogInfo;
    }

    private AccessMethodLogInfo withTagAndContentManager(Tag tag, WebSessionLogInfo webSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo._tag = tag;
        accessMethodLogInfo.contentManagerValue = webSessionLogInfo;
        return accessMethodLogInfo;
    }

    private AccessMethodLogInfo withTagAndAdminConsole(Tag tag, WebSessionLogInfo webSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo._tag = tag;
        accessMethodLogInfo.adminConsoleValue = webSessionLogInfo;
        return accessMethodLogInfo;
    }

    private AccessMethodLogInfo withTagAndApi(Tag tag, ApiSessionLogInfo apiSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo._tag = tag;
        accessMethodLogInfo.apiValue = apiSessionLogInfo;
        return accessMethodLogInfo;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isEndUser() {
        return this._tag == Tag.END_USER;
    }

    public static AccessMethodLogInfo endUser(SessionLogInfo sessionLogInfo) {
        if (sessionLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AccessMethodLogInfo().withTagAndEndUser(Tag.END_USER, sessionLogInfo);
    }

    public SessionLogInfo getEndUserValue() {
        if (this._tag != Tag.END_USER) {
            throw new IllegalStateException("Invalid tag: required Tag.END_USER, but was Tag." + this._tag.name());
        }
        return this.endUserValue;
    }

    public boolean isSignInAs() {
        return this._tag == Tag.SIGN_IN_AS;
    }

    public static AccessMethodLogInfo signInAs(WebSessionLogInfo webSessionLogInfo) {
        if (webSessionLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AccessMethodLogInfo().withTagAndSignInAs(Tag.SIGN_IN_AS, webSessionLogInfo);
    }

    public WebSessionLogInfo getSignInAsValue() {
        if (this._tag != Tag.SIGN_IN_AS) {
            throw new IllegalStateException("Invalid tag: required Tag.SIGN_IN_AS, but was Tag." + this._tag.name());
        }
        return this.signInAsValue;
    }

    public boolean isContentManager() {
        return this._tag == Tag.CONTENT_MANAGER;
    }

    public static AccessMethodLogInfo contentManager(WebSessionLogInfo webSessionLogInfo) {
        if (webSessionLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AccessMethodLogInfo().withTagAndContentManager(Tag.CONTENT_MANAGER, webSessionLogInfo);
    }

    public WebSessionLogInfo getContentManagerValue() {
        if (this._tag != Tag.CONTENT_MANAGER) {
            throw new IllegalStateException("Invalid tag: required Tag.CONTENT_MANAGER, but was Tag." + this._tag.name());
        }
        return this.contentManagerValue;
    }

    public boolean isAdminConsole() {
        return this._tag == Tag.ADMIN_CONSOLE;
    }

    public static AccessMethodLogInfo adminConsole(WebSessionLogInfo webSessionLogInfo) {
        if (webSessionLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AccessMethodLogInfo().withTagAndAdminConsole(Tag.ADMIN_CONSOLE, webSessionLogInfo);
    }

    public WebSessionLogInfo getAdminConsoleValue() {
        if (this._tag != Tag.ADMIN_CONSOLE) {
            throw new IllegalStateException("Invalid tag: required Tag.ADMIN_CONSOLE, but was Tag." + this._tag.name());
        }
        return this.adminConsoleValue;
    }

    public boolean isApi() {
        return this._tag == Tag.API;
    }

    public static AccessMethodLogInfo api(ApiSessionLogInfo apiSessionLogInfo) {
        if (apiSessionLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AccessMethodLogInfo().withTagAndApi(Tag.API, apiSessionLogInfo);
    }

    public ApiSessionLogInfo getApiValue() {
        if (this._tag != Tag.API) {
            throw new IllegalStateException("Invalid tag: required Tag.API, but was Tag." + this._tag.name());
        }
        return this.apiValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.endUserValue, this.signInAsValue, this.contentManagerValue, this.adminConsoleValue, this.apiValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessMethodLogInfo)) {
            return false;
        }
        AccessMethodLogInfo accessMethodLogInfo = (AccessMethodLogInfo) obj;
        if (this._tag != accessMethodLogInfo._tag) {
            return false;
        }
        switch (this._tag) {
            case END_USER:
                return this.endUserValue == accessMethodLogInfo.endUserValue || this.endUserValue.equals(accessMethodLogInfo.endUserValue);
            case SIGN_IN_AS:
                return this.signInAsValue == accessMethodLogInfo.signInAsValue || this.signInAsValue.equals(accessMethodLogInfo.signInAsValue);
            case CONTENT_MANAGER:
                return this.contentManagerValue == accessMethodLogInfo.contentManagerValue || this.contentManagerValue.equals(accessMethodLogInfo.contentManagerValue);
            case ADMIN_CONSOLE:
                return this.adminConsoleValue == accessMethodLogInfo.adminConsoleValue || this.adminConsoleValue.equals(accessMethodLogInfo.adminConsoleValue);
            case API:
                return this.apiValue == accessMethodLogInfo.apiValue || this.apiValue.equals(accessMethodLogInfo.apiValue);
            case OTHER:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<AccessMethodLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccessMethodLogInfo accessMethodLogInfo, g gVar) throws IOException {
            switch (accessMethodLogInfo.tag()) {
                case END_USER:
                    gVar.e();
                    writeTag("end_user", gVar);
                    gVar.a("end_user");
                    SessionLogInfo.Serializer.INSTANCE.serialize(accessMethodLogInfo.endUserValue, gVar);
                    gVar.f();
                    break;
                case SIGN_IN_AS:
                    gVar.e();
                    writeTag("sign_in_as", gVar);
                    WebSessionLogInfo.Serializer.INSTANCE.serialize(accessMethodLogInfo.signInAsValue, gVar, true);
                    gVar.f();
                    break;
                case CONTENT_MANAGER:
                    gVar.e();
                    writeTag("content_manager", gVar);
                    WebSessionLogInfo.Serializer.INSTANCE.serialize(accessMethodLogInfo.contentManagerValue, gVar, true);
                    gVar.f();
                    break;
                case ADMIN_CONSOLE:
                    gVar.e();
                    writeTag("admin_console", gVar);
                    WebSessionLogInfo.Serializer.INSTANCE.serialize(accessMethodLogInfo.adminConsoleValue, gVar, true);
                    gVar.f();
                    break;
                case API:
                    gVar.e();
                    writeTag("api", gVar);
                    ApiSessionLogInfo.Serializer.INSTANCE.serialize(accessMethodLogInfo.apiValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccessMethodLogInfo deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AccessMethodLogInfo accessMethodLogInfoApi;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("end_user".equals(tag)) {
                expectField("end_user", kVar);
                accessMethodLogInfoApi = AccessMethodLogInfo.endUser(SessionLogInfo.Serializer.INSTANCE.deserialize(kVar));
            } else if ("sign_in_as".equals(tag)) {
                accessMethodLogInfoApi = AccessMethodLogInfo.signInAs(WebSessionLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("content_manager".equals(tag)) {
                accessMethodLogInfoApi = AccessMethodLogInfo.contentManager(WebSessionLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("admin_console".equals(tag)) {
                accessMethodLogInfoApi = AccessMethodLogInfo.adminConsole(WebSessionLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("api".equals(tag)) {
                accessMethodLogInfoApi = AccessMethodLogInfo.api(ApiSessionLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                accessMethodLogInfoApi = AccessMethodLogInfo.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return accessMethodLogInfoApi;
        }
    }
}
