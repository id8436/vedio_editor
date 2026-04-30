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
public class ResellerLogInfo {
    protected final String resellerId;
    protected final String resellerName;

    public ResellerLogInfo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'resellerName' is null");
        }
        this.resellerName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'resellerId' is null");
        }
        this.resellerId = str2;
    }

    public String getResellerName() {
        return this.resellerName;
    }

    public String getResellerId() {
        return this.resellerId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.resellerName, this.resellerId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ResellerLogInfo resellerLogInfo = (ResellerLogInfo) obj;
            return (this.resellerName == resellerLogInfo.resellerName || this.resellerName.equals(resellerLogInfo.resellerName)) && (this.resellerId == resellerLogInfo.resellerId || this.resellerId.equals(resellerLogInfo.resellerId));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ResellerLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ResellerLogInfo resellerLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("reseller_name");
            StoneSerializers.string().serialize(resellerLogInfo.resellerName, gVar);
            gVar.a("reseller_id");
            StoneSerializers.string().serialize(resellerLogInfo.resellerId, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ResellerLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("reseller_name".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("reseller_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"reseller_name\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"reseller_id\" missing.");
                }
                ResellerLogInfo resellerLogInfo = new ResellerLogInfo(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return resellerLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
