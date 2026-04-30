package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class MemberChangeEmailDetails {
    protected final String newValue;
    protected final String previousValue;

    public MemberChangeEmailDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String 'newValue' is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String 'newValue' does not match pattern");
        }
        this.newValue = str;
        if (str2 != null) {
            if (str2.length() > 255) {
                throw new IllegalArgumentException("String 'previousValue' is longer than 255");
            }
            if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str2)) {
                throw new IllegalArgumentException("String 'previousValue' does not match pattern");
            }
        }
        this.previousValue = str2;
    }

    public MemberChangeEmailDetails(String str) {
        this(str, null);
    }

    public String getNewValue() {
        return this.newValue;
    }

    public String getPreviousValue() {
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
            MemberChangeEmailDetails memberChangeEmailDetails = (MemberChangeEmailDetails) obj;
            if (this.newValue == memberChangeEmailDetails.newValue || this.newValue.equals(memberChangeEmailDetails.newValue)) {
                if (this.previousValue == memberChangeEmailDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(memberChangeEmailDetails.previousValue)) {
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

    class Serializer extends StructSerializer<MemberChangeEmailDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberChangeEmailDetails memberChangeEmailDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            StoneSerializers.string().serialize(memberChangeEmailDetails.newValue, gVar);
            if (memberChangeEmailDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberChangeEmailDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberChangeEmailDetails deserialize(k kVar, boolean z) throws IOException {
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
                    if ("new_value".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if ("previous_value".equals(strD)) {
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
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MemberChangeEmailDetails memberChangeEmailDetails = new MemberChangeEmailDetails(str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberChangeEmailDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
