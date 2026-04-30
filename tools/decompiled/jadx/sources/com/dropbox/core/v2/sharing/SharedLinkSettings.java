package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.sharing.RequestedVisibility;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class SharedLinkSettings {
    protected final Date expires;
    protected final String linkPassword;
    protected final RequestedVisibility requestedVisibility;

    public SharedLinkSettings(RequestedVisibility requestedVisibility, String str, Date date) {
        this.requestedVisibility = requestedVisibility;
        this.linkPassword = str;
        this.expires = LangUtil.truncateMillis(date);
    }

    public SharedLinkSettings() {
        this(null, null, null);
    }

    public RequestedVisibility getRequestedVisibility() {
        return this.requestedVisibility;
    }

    public String getLinkPassword() {
        return this.linkPassword;
    }

    public Date getExpires() {
        return this.expires;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected RequestedVisibility requestedVisibility = null;
        protected String linkPassword = null;
        protected Date expires = null;

        protected Builder() {
        }

        public Builder withRequestedVisibility(RequestedVisibility requestedVisibility) {
            this.requestedVisibility = requestedVisibility;
            return this;
        }

        public Builder withLinkPassword(String str) {
            this.linkPassword = str;
            return this;
        }

        public Builder withExpires(Date date) {
            this.expires = LangUtil.truncateMillis(date);
            return this;
        }

        public SharedLinkSettings build() {
            return new SharedLinkSettings(this.requestedVisibility, this.linkPassword, this.expires);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestedVisibility, this.linkPassword, this.expires});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedLinkSettings sharedLinkSettings = (SharedLinkSettings) obj;
            if ((this.requestedVisibility == sharedLinkSettings.requestedVisibility || (this.requestedVisibility != null && this.requestedVisibility.equals(sharedLinkSettings.requestedVisibility))) && (this.linkPassword == sharedLinkSettings.linkPassword || (this.linkPassword != null && this.linkPassword.equals(sharedLinkSettings.linkPassword)))) {
                if (this.expires == sharedLinkSettings.expires) {
                    return true;
                }
                if (this.expires != null && this.expires.equals(sharedLinkSettings.expires)) {
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

    class Serializer extends StructSerializer<SharedLinkSettings> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedLinkSettings sharedLinkSettings, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (sharedLinkSettings.requestedVisibility != null) {
                gVar.a("requested_visibility");
                StoneSerializers.nullable(RequestedVisibility.Serializer.INSTANCE).serialize(sharedLinkSettings.requestedVisibility, gVar);
            }
            if (sharedLinkSettings.linkPassword != null) {
                gVar.a("link_password");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedLinkSettings.linkPassword, gVar);
            }
            if (sharedLinkSettings.expires != null) {
                gVar.a("expires");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(sharedLinkSettings.expires, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedLinkSettings deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date date;
            String str;
            RequestedVisibility requestedVisibility;
            Date date2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                RequestedVisibility requestedVisibility2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("requested_visibility".equals(strD)) {
                        Date date3 = date2;
                        str = str2;
                        requestedVisibility = (RequestedVisibility) StoneSerializers.nullable(RequestedVisibility.Serializer.INSTANCE).deserialize(kVar);
                        date = date3;
                    } else if ("link_password".equals(strD)) {
                        requestedVisibility = requestedVisibility2;
                        date = date2;
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("expires".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        str = str2;
                        requestedVisibility = requestedVisibility2;
                    } else {
                        skipValue(kVar);
                        date = date2;
                        str = str2;
                        requestedVisibility = requestedVisibility2;
                    }
                    requestedVisibility2 = requestedVisibility;
                    str2 = str;
                    date2 = date;
                }
                SharedLinkSettings sharedLinkSettings = new SharedLinkSettings(requestedVisibility2, str2, date2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedLinkSettings;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
