package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ShmodelAppCreateDetails {
    protected final String sharingPermission;
    protected final String tokenKey;

    public ShmodelAppCreateDetails(String str, String str2) {
        this.sharingPermission = str;
        this.tokenKey = str2;
    }

    public ShmodelAppCreateDetails() {
        this(null, null);
    }

    public String getSharingPermission() {
        return this.sharingPermission;
    }

    public String getTokenKey() {
        return this.tokenKey;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String sharingPermission = null;
        protected String tokenKey = null;

        protected Builder() {
        }

        public Builder withSharingPermission(String str) {
            this.sharingPermission = str;
            return this;
        }

        public Builder withTokenKey(String str) {
            this.tokenKey = str;
            return this;
        }

        public ShmodelAppCreateDetails build() {
            return new ShmodelAppCreateDetails(this.sharingPermission, this.tokenKey);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharingPermission, this.tokenKey});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ShmodelAppCreateDetails shmodelAppCreateDetails = (ShmodelAppCreateDetails) obj;
            if (this.sharingPermission == shmodelAppCreateDetails.sharingPermission || (this.sharingPermission != null && this.sharingPermission.equals(shmodelAppCreateDetails.sharingPermission))) {
                if (this.tokenKey == shmodelAppCreateDetails.tokenKey) {
                    return true;
                }
                if (this.tokenKey != null && this.tokenKey.equals(shmodelAppCreateDetails.tokenKey)) {
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

    class Serializer extends StructSerializer<ShmodelAppCreateDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ShmodelAppCreateDetails shmodelAppCreateDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (shmodelAppCreateDetails.sharingPermission != null) {
                gVar.a("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(shmodelAppCreateDetails.sharingPermission, gVar);
            }
            if (shmodelAppCreateDetails.tokenKey != null) {
                gVar.a("token_key");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(shmodelAppCreateDetails.tokenKey, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ShmodelAppCreateDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("sharing_permission".equals(strD)) {
                        String str5 = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str5;
                    } else if ("token_key".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                    }
                    str4 = str2;
                    str3 = str;
                }
                ShmodelAppCreateDetails shmodelAppCreateDetails = new ShmodelAppCreateDetails(str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return shmodelAppCreateDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
