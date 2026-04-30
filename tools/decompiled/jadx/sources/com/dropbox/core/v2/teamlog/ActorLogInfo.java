package com.dropbox.core.v2.teamlog;

import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.teamlog.AppLogInfo;
import com.dropbox.core.v2.teamlog.ResellerLogInfo;
import com.dropbox.core.v2.teamlog.UserLogInfo;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ActorLogInfo {
    public static final ActorLogInfo DROPBOX = new ActorLogInfo().withTag(Tag.DROPBOX);
    public static final ActorLogInfo OTHER = new ActorLogInfo().withTag(Tag.OTHER);
    private Tag _tag;
    private UserLogInfo adminValue;
    private AppLogInfo appValue;
    private ResellerLogInfo resellerValue;
    private UserLogInfo userValue;

    public enum Tag {
        USER,
        ADMIN,
        APP,
        RESELLER,
        DROPBOX,
        OTHER
    }

    private ActorLogInfo() {
    }

    private ActorLogInfo withTag(Tag tag) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo._tag = tag;
        return actorLogInfo;
    }

    private ActorLogInfo withTagAndUser(Tag tag, UserLogInfo userLogInfo) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo._tag = tag;
        actorLogInfo.userValue = userLogInfo;
        return actorLogInfo;
    }

    private ActorLogInfo withTagAndAdmin(Tag tag, UserLogInfo userLogInfo) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo._tag = tag;
        actorLogInfo.adminValue = userLogInfo;
        return actorLogInfo;
    }

    private ActorLogInfo withTagAndApp(Tag tag, AppLogInfo appLogInfo) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo._tag = tag;
        actorLogInfo.appValue = appLogInfo;
        return actorLogInfo;
    }

    private ActorLogInfo withTagAndReseller(Tag tag, ResellerLogInfo resellerLogInfo) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo._tag = tag;
        actorLogInfo.resellerValue = resellerLogInfo;
        return actorLogInfo;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUser() {
        return this._tag == Tag.USER;
    }

    public static ActorLogInfo user(UserLogInfo userLogInfo) {
        if (userLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ActorLogInfo().withTagAndUser(Tag.USER, userLogInfo);
    }

    public UserLogInfo getUserValue() {
        if (this._tag != Tag.USER) {
            throw new IllegalStateException("Invalid tag: required Tag.USER, but was Tag." + this._tag.name());
        }
        return this.userValue;
    }

    public boolean isAdmin() {
        return this._tag == Tag.ADMIN;
    }

    public static ActorLogInfo admin(UserLogInfo userLogInfo) {
        if (userLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ActorLogInfo().withTagAndAdmin(Tag.ADMIN, userLogInfo);
    }

    public UserLogInfo getAdminValue() {
        if (this._tag != Tag.ADMIN) {
            throw new IllegalStateException("Invalid tag: required Tag.ADMIN, but was Tag." + this._tag.name());
        }
        return this.adminValue;
    }

    public boolean isApp() {
        return this._tag == Tag.APP;
    }

    public static ActorLogInfo app(AppLogInfo appLogInfo) {
        if (appLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ActorLogInfo().withTagAndApp(Tag.APP, appLogInfo);
    }

    public AppLogInfo getAppValue() {
        if (this._tag != Tag.APP) {
            throw new IllegalStateException("Invalid tag: required Tag.APP, but was Tag." + this._tag.name());
        }
        return this.appValue;
    }

    public boolean isReseller() {
        return this._tag == Tag.RESELLER;
    }

    public static ActorLogInfo reseller(ResellerLogInfo resellerLogInfo) {
        if (resellerLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ActorLogInfo().withTagAndReseller(Tag.RESELLER, resellerLogInfo);
    }

    public ResellerLogInfo getResellerValue() {
        if (this._tag != Tag.RESELLER) {
            throw new IllegalStateException("Invalid tag: required Tag.RESELLER, but was Tag." + this._tag.name());
        }
        return this.resellerValue;
    }

    public boolean isDropbox() {
        return this._tag == Tag.DROPBOX;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.userValue, this.adminValue, this.appValue, this.resellerValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ActorLogInfo)) {
            return false;
        }
        ActorLogInfo actorLogInfo = (ActorLogInfo) obj;
        if (this._tag != actorLogInfo._tag) {
            return false;
        }
        switch (this._tag) {
            case USER:
                return this.userValue == actorLogInfo.userValue || this.userValue.equals(actorLogInfo.userValue);
            case ADMIN:
                return this.adminValue == actorLogInfo.adminValue || this.adminValue.equals(actorLogInfo.adminValue);
            case APP:
                return this.appValue == actorLogInfo.appValue || this.appValue.equals(actorLogInfo.appValue);
            case RESELLER:
                return this.resellerValue == actorLogInfo.resellerValue || this.resellerValue.equals(actorLogInfo.resellerValue);
            case DROPBOX:
                return true;
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

    class Serializer extends UnionSerializer<ActorLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ActorLogInfo actorLogInfo, g gVar) throws IOException {
            switch (actorLogInfo.tag()) {
                case USER:
                    gVar.e();
                    writeTag("user", gVar);
                    gVar.a("user");
                    UserLogInfo.Serializer.INSTANCE.serialize(actorLogInfo.userValue, gVar);
                    gVar.f();
                    break;
                case ADMIN:
                    gVar.e();
                    writeTag(Login.ATTRIBUTE_ADMIN, gVar);
                    gVar.a(Login.ATTRIBUTE_ADMIN);
                    UserLogInfo.Serializer.INSTANCE.serialize(actorLogInfo.adminValue, gVar);
                    gVar.f();
                    break;
                case APP:
                    gVar.e();
                    writeTag("app", gVar);
                    gVar.a("app");
                    AppLogInfo.Serializer.INSTANCE.serialize(actorLogInfo.appValue, gVar);
                    gVar.f();
                    break;
                case RESELLER:
                    gVar.e();
                    writeTag("reseller", gVar);
                    ResellerLogInfo.Serializer.INSTANCE.serialize(actorLogInfo.resellerValue, gVar, true);
                    gVar.f();
                    break;
                case DROPBOX:
                    gVar.b(GalleryActivity.SOURCE_DROPBOX);
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ActorLogInfo deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ActorLogInfo actorLogInfoReseller;
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
            if ("user".equals(tag)) {
                expectField("user", kVar);
                actorLogInfoReseller = ActorLogInfo.user(UserLogInfo.Serializer.INSTANCE.deserialize(kVar));
            } else if (Login.ATTRIBUTE_ADMIN.equals(tag)) {
                expectField(Login.ATTRIBUTE_ADMIN, kVar);
                actorLogInfoReseller = ActorLogInfo.admin(UserLogInfo.Serializer.INSTANCE.deserialize(kVar));
            } else if ("app".equals(tag)) {
                expectField("app", kVar);
                actorLogInfoReseller = ActorLogInfo.app(AppLogInfo.Serializer.INSTANCE.deserialize(kVar));
            } else if ("reseller".equals(tag)) {
                actorLogInfoReseller = ActorLogInfo.reseller(ResellerLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if (GalleryActivity.SOURCE_DROPBOX.equals(tag)) {
                actorLogInfoReseller = ActorLogInfo.DROPBOX;
            } else {
                actorLogInfoReseller = ActorLogInfo.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return actorLogInfoReseller;
        }
    }
}
