package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class InsufficientPlan {
    protected final String message;
    protected final String upsellUrl;

    public InsufficientPlan(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'message' is null");
        }
        this.message = str;
        this.upsellUrl = str2;
    }

    public InsufficientPlan(String str) {
        this(str, null);
    }

    public String getMessage() {
        return this.message;
    }

    public String getUpsellUrl() {
        return this.upsellUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.message, this.upsellUrl});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            InsufficientPlan insufficientPlan = (InsufficientPlan) obj;
            if (this.message == insufficientPlan.message || this.message.equals(insufficientPlan.message)) {
                if (this.upsellUrl == insufficientPlan.upsellUrl) {
                    return true;
                }
                if (this.upsellUrl != null && this.upsellUrl.equals(insufficientPlan.upsellUrl)) {
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

    class Serializer extends StructSerializer<InsufficientPlan> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(InsufficientPlan insufficientPlan, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("message");
            StoneSerializers.string().serialize(insufficientPlan.message, gVar);
            if (insufficientPlan.upsellUrl != null) {
                gVar.a("upsell_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(insufficientPlan.upsellUrl, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public InsufficientPlan deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("message".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if ("upsell_url".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"message\" missing.");
                }
                InsufficientPlan insufficientPlan = new InsufficientPlan(str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return insufficientPlan;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
