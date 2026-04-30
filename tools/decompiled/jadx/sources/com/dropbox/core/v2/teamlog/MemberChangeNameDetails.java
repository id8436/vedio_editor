package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.UserNameLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberChangeNameDetails {
    protected final UserNameLogInfo newValue;
    protected final UserNameLogInfo previousValue;

    public MemberChangeNameDetails(UserNameLogInfo userNameLogInfo, UserNameLogInfo userNameLogInfo2) {
        if (userNameLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = userNameLogInfo;
        this.previousValue = userNameLogInfo2;
    }

    public MemberChangeNameDetails(UserNameLogInfo userNameLogInfo) {
        this(userNameLogInfo, null);
    }

    public UserNameLogInfo getNewValue() {
        return this.newValue;
    }

    public UserNameLogInfo getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberChangeNameDetails memberChangeNameDetails = (MemberChangeNameDetails) obj;
            if (this.newValue == memberChangeNameDetails.newValue || this.newValue.equals(memberChangeNameDetails.newValue)) {
                if (this.previousValue == memberChangeNameDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(memberChangeNameDetails.previousValue)) {
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

    class Serializer extends StructSerializer<MemberChangeNameDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberChangeNameDetails memberChangeNameDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            UserNameLogInfo.Serializer.INSTANCE.serialize(memberChangeNameDetails.newValue, gVar);
            if (memberChangeNameDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullableStruct(UserNameLogInfo.Serializer.INSTANCE).serialize(memberChangeNameDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberChangeNameDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            UserNameLogInfo userNameLogInfo;
            UserNameLogInfo userNameLogInfoDeserialize;
            UserNameLogInfo userNameLogInfo2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                UserNameLogInfo userNameLogInfo3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        UserNameLogInfo userNameLogInfo4 = userNameLogInfo2;
                        userNameLogInfoDeserialize = UserNameLogInfo.Serializer.INSTANCE.deserialize(kVar);
                        userNameLogInfo = userNameLogInfo4;
                    } else if ("previous_value".equals(strD)) {
                        userNameLogInfo = (UserNameLogInfo) StoneSerializers.nullableStruct(UserNameLogInfo.Serializer.INSTANCE).deserialize(kVar);
                        userNameLogInfoDeserialize = userNameLogInfo3;
                    } else {
                        skipValue(kVar);
                        userNameLogInfo = userNameLogInfo2;
                        userNameLogInfoDeserialize = userNameLogInfo3;
                    }
                    userNameLogInfo3 = userNameLogInfoDeserialize;
                    userNameLogInfo2 = userNameLogInfo;
                }
                if (userNameLogInfo3 == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MemberChangeNameDetails memberChangeNameDetails = new MemberChangeNameDetails(userNameLogInfo3, userNameLogInfo2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberChangeNameDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
