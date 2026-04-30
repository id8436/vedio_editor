package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.MemberPermission;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MembershipInfo {
    protected final AccessLevel accessType;
    protected final String initials;
    protected final boolean isInherited;
    protected final List<MemberPermission> permissions;

    public MembershipInfo(AccessLevel accessLevel, List<MemberPermission> list, String str, boolean z) {
        if (accessLevel == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = accessLevel;
        if (list != null) {
            Iterator<MemberPermission> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'permissions' is null");
                }
            }
        }
        this.permissions = list;
        this.initials = str;
        this.isInherited = z;
    }

    public MembershipInfo(AccessLevel accessLevel) {
        this(accessLevel, null, null, false);
    }

    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    public String getInitials() {
        return this.initials;
    }

    public boolean getIsInherited() {
        return this.isInherited;
    }

    public static Builder newBuilder(AccessLevel accessLevel) {
        return new Builder(accessLevel);
    }

    public class Builder {
        protected final AccessLevel accessType;
        protected String initials;
        protected boolean isInherited;
        protected List<MemberPermission> permissions;

        protected Builder(AccessLevel accessLevel) {
            if (accessLevel == null) {
                throw new IllegalArgumentException("Required value for 'accessType' is null");
            }
            this.accessType = accessLevel;
            this.permissions = null;
            this.initials = null;
            this.isInherited = false;
        }

        public Builder withPermissions(List<MemberPermission> list) {
            if (list != null) {
                Iterator<MemberPermission> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.permissions = list;
            return this;
        }

        public Builder withInitials(String str) {
            this.initials = str;
            return this;
        }

        public Builder withIsInherited(Boolean bool) {
            if (bool != null) {
                this.isInherited = bool.booleanValue();
            } else {
                this.isInherited = false;
            }
            return this;
        }

        public MembershipInfo build() {
            return new MembershipInfo(this.accessType, this.permissions, this.initials, this.isInherited);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessType, this.permissions, this.initials, Boolean.valueOf(this.isInherited)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MembershipInfo membershipInfo = (MembershipInfo) obj;
            return (this.accessType == membershipInfo.accessType || this.accessType.equals(membershipInfo.accessType)) && (this.permissions == membershipInfo.permissions || (this.permissions != null && this.permissions.equals(membershipInfo.permissions))) && ((this.initials == membershipInfo.initials || (this.initials != null && this.initials.equals(membershipInfo.initials))) && this.isInherited == membershipInfo.isInherited);
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembershipInfo> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembershipInfo membershipInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(membershipInfo.accessType, gVar);
            if (membershipInfo.permissions != null) {
                gVar.a("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).serialize(membershipInfo.permissions, gVar);
            }
            if (membershipInfo.initials != null) {
                gVar.a("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(membershipInfo.initials, gVar);
            }
            gVar.a("is_inherited");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(membershipInfo.isInherited), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembershipInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String str;
            List list;
            AccessLevel accessLevelDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                List list2 = null;
                AccessLevel accessLevel = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_type".equals(strD)) {
                        Boolean bool2 = bool;
                        str = str2;
                        list = list2;
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("permissions".equals(strD)) {
                        accessLevelDeserialize = accessLevel;
                        String str3 = str2;
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberPermission.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool;
                        str = str3;
                    } else if ("initials".equals(strD)) {
                        list = list2;
                        accessLevelDeserialize = accessLevel;
                        Boolean bool3 = bool;
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool3;
                    } else if ("is_inherited".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        str = str2;
                        list = list2;
                        accessLevelDeserialize = accessLevel;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        str = str2;
                        list = list2;
                        accessLevelDeserialize = accessLevel;
                    }
                    accessLevel = accessLevelDeserialize;
                    list2 = list;
                    str2 = str;
                    bool = boolDeserialize;
                }
                if (accessLevel == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                MembershipInfo membershipInfo = new MembershipInfo(accessLevel, list2, str2, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return membershipInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
