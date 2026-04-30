package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.LinkAudience;
import com.dropbox.core.v2.sharing.LinkExpiry;
import com.dropbox.core.v2.sharing.LinkPassword;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class LinkSettings {
    protected final AccessLevel accessLevel;
    protected final LinkAudience audience;
    protected final LinkExpiry expiry;
    protected final LinkPassword password;

    public LinkSettings(AccessLevel accessLevel, LinkAudience linkAudience, LinkExpiry linkExpiry, LinkPassword linkPassword) {
        this.accessLevel = accessLevel;
        this.audience = linkAudience;
        this.expiry = linkExpiry;
        this.password = linkPassword;
    }

    public LinkSettings() {
        this(null, null, null, null);
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public LinkAudience getAudience() {
        return this.audience;
    }

    public LinkExpiry getExpiry() {
        return this.expiry;
    }

    public LinkPassword getPassword() {
        return this.password;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected AccessLevel accessLevel = null;
        protected LinkAudience audience = null;
        protected LinkExpiry expiry = null;
        protected LinkPassword password = null;

        protected Builder() {
        }

        public Builder withAccessLevel(AccessLevel accessLevel) {
            this.accessLevel = accessLevel;
            return this;
        }

        public Builder withAudience(LinkAudience linkAudience) {
            this.audience = linkAudience;
            return this;
        }

        public Builder withExpiry(LinkExpiry linkExpiry) {
            this.expiry = linkExpiry;
            return this;
        }

        public Builder withPassword(LinkPassword linkPassword) {
            this.password = linkPassword;
            return this;
        }

        public LinkSettings build() {
            return new LinkSettings(this.accessLevel, this.audience, this.expiry, this.password);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessLevel, this.audience, this.expiry, this.password});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            LinkSettings linkSettings = (LinkSettings) obj;
            if ((this.accessLevel == linkSettings.accessLevel || (this.accessLevel != null && this.accessLevel.equals(linkSettings.accessLevel))) && ((this.audience == linkSettings.audience || (this.audience != null && this.audience.equals(linkSettings.audience))) && (this.expiry == linkSettings.expiry || (this.expiry != null && this.expiry.equals(linkSettings.expiry))))) {
                if (this.password == linkSettings.password) {
                    return true;
                }
                if (this.password != null && this.password.equals(linkSettings.password)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<LinkSettings> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(LinkSettings linkSettings, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (linkSettings.accessLevel != null) {
                gVar.a("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(linkSettings.accessLevel, gVar);
            }
            if (linkSettings.audience != null) {
                gVar.a("audience");
                StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).serialize(linkSettings.audience, gVar);
            }
            if (linkSettings.expiry != null) {
                gVar.a("expiry");
                StoneSerializers.nullable(LinkExpiry.Serializer.INSTANCE).serialize(linkSettings.expiry, gVar);
            }
            if (linkSettings.password != null) {
                gVar.a(Login.ATTRIBUTE_PASSWORD);
                StoneSerializers.nullable(LinkPassword.Serializer.INSTANCE).serialize(linkSettings.password, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public LinkSettings deserialize(k kVar, boolean z) throws IOException {
            String tag;
            LinkPassword linkPassword;
            LinkExpiry linkExpiry;
            LinkAudience linkAudience;
            AccessLevel accessLevel;
            LinkPassword linkPassword2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                LinkExpiry linkExpiry2 = null;
                LinkAudience linkAudience2 = null;
                AccessLevel accessLevel2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_level".equals(strD)) {
                        LinkPassword linkPassword3 = linkPassword2;
                        linkExpiry = linkExpiry2;
                        linkAudience = linkAudience2;
                        accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(kVar);
                        linkPassword = linkPassword3;
                    } else if ("audience".equals(strD)) {
                        accessLevel = accessLevel2;
                        LinkExpiry linkExpiry3 = linkExpiry2;
                        linkAudience = (LinkAudience) StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).deserialize(kVar);
                        linkPassword = linkPassword2;
                        linkExpiry = linkExpiry3;
                    } else if ("expiry".equals(strD)) {
                        linkAudience = linkAudience2;
                        accessLevel = accessLevel2;
                        LinkPassword linkPassword4 = linkPassword2;
                        linkExpiry = (LinkExpiry) StoneSerializers.nullable(LinkExpiry.Serializer.INSTANCE).deserialize(kVar);
                        linkPassword = linkPassword4;
                    } else if (Login.ATTRIBUTE_PASSWORD.equals(strD)) {
                        linkPassword = (LinkPassword) StoneSerializers.nullable(LinkPassword.Serializer.INSTANCE).deserialize(kVar);
                        linkExpiry = linkExpiry2;
                        linkAudience = linkAudience2;
                        accessLevel = accessLevel2;
                    } else {
                        skipValue(kVar);
                        linkPassword = linkPassword2;
                        linkExpiry = linkExpiry2;
                        linkAudience = linkAudience2;
                        accessLevel = accessLevel2;
                    }
                    accessLevel2 = accessLevel;
                    linkAudience2 = linkAudience;
                    linkExpiry2 = linkExpiry;
                    linkPassword2 = linkPassword;
                }
                LinkSettings linkSettings = new LinkSettings(accessLevel2, linkAudience2, linkExpiry2, linkPassword2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return linkSettings;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
