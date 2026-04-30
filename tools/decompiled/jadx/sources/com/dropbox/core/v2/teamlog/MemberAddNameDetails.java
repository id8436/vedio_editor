package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.UserNameLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberAddNameDetails {
    protected final UserNameLogInfo value;

    public MemberAddNameDetails(UserNameLogInfo userNameLogInfo) {
        if (userNameLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'value' is null");
        }
        this.value = userNameLogInfo;
    }

    public UserNameLogInfo getValue() {
        return this.value;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.value});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberAddNameDetails memberAddNameDetails = (MemberAddNameDetails) obj;
        return this.value == memberAddNameDetails.value || this.value.equals(memberAddNameDetails.value);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MemberAddNameDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberAddNameDetails memberAddNameDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("value");
            UserNameLogInfo.Serializer.INSTANCE.serialize(memberAddNameDetails.value, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberAddNameDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            UserNameLogInfo userNameLogInfoDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("value".equals(strD)) {
                        userNameLogInfoDeserialize = UserNameLogInfo.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (userNameLogInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"value\" missing.");
                }
                MemberAddNameDetails memberAddNameDetails = new MemberAddNameDetails(userNameLogInfoDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberAddNameDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
