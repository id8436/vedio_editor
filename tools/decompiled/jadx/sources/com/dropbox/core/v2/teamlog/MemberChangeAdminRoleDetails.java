package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.AdminRole;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberChangeAdminRoleDetails {
    protected final AdminRole newValue;
    protected final AdminRole previousValue;

    public MemberChangeAdminRoleDetails(AdminRole adminRole, AdminRole adminRole2) {
        this.newValue = adminRole;
        this.previousValue = adminRole2;
    }

    public MemberChangeAdminRoleDetails() {
        this(null, null);
    }

    public AdminRole getNewValue() {
        return this.newValue;
    }

    public AdminRole getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected AdminRole newValue = null;
        protected AdminRole previousValue = null;

        protected Builder() {
        }

        public Builder withNewValue(AdminRole adminRole) {
            this.newValue = adminRole;
            return this;
        }

        public Builder withPreviousValue(AdminRole adminRole) {
            this.previousValue = adminRole;
            return this;
        }

        public MemberChangeAdminRoleDetails build() {
            return new MemberChangeAdminRoleDetails(this.newValue, this.previousValue);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberChangeAdminRoleDetails memberChangeAdminRoleDetails = (MemberChangeAdminRoleDetails) obj;
            if (this.newValue == memberChangeAdminRoleDetails.newValue || (this.newValue != null && this.newValue.equals(memberChangeAdminRoleDetails.newValue))) {
                if (this.previousValue == memberChangeAdminRoleDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(memberChangeAdminRoleDetails.previousValue)) {
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

    class Serializer extends StructSerializer<MemberChangeAdminRoleDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberChangeAdminRoleDetails memberChangeAdminRoleDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (memberChangeAdminRoleDetails.newValue != null) {
                gVar.a("new_value");
                StoneSerializers.nullable(AdminRole.Serializer.INSTANCE).serialize(memberChangeAdminRoleDetails.newValue, gVar);
            }
            if (memberChangeAdminRoleDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(AdminRole.Serializer.INSTANCE).serialize(memberChangeAdminRoleDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberChangeAdminRoleDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AdminRole adminRole;
            AdminRole adminRole2;
            AdminRole adminRole3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                AdminRole adminRole4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        AdminRole adminRole5 = adminRole3;
                        adminRole2 = (AdminRole) StoneSerializers.nullable(AdminRole.Serializer.INSTANCE).deserialize(kVar);
                        adminRole = adminRole5;
                    } else if ("previous_value".equals(strD)) {
                        adminRole = (AdminRole) StoneSerializers.nullable(AdminRole.Serializer.INSTANCE).deserialize(kVar);
                        adminRole2 = adminRole4;
                    } else {
                        skipValue(kVar);
                        adminRole = adminRole3;
                        adminRole2 = adminRole4;
                    }
                    adminRole4 = adminRole2;
                    adminRole3 = adminRole;
                }
                MemberChangeAdminRoleDetails memberChangeAdminRoleDetails = new MemberChangeAdminRoleDetails(adminRole4, adminRole3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberChangeAdminRoleDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
