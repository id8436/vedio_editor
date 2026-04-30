package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.ParentFolderAccessInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MemberAccessLevelResult {
    protected final List<ParentFolderAccessInfo> accessDetails;
    protected final AccessLevel accessLevel;
    protected final String warning;

    public MemberAccessLevelResult(AccessLevel accessLevel, String str, List<ParentFolderAccessInfo> list) {
        this.accessLevel = accessLevel;
        this.warning = str;
        if (list != null) {
            Iterator<ParentFolderAccessInfo> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'accessDetails' is null");
                }
            }
        }
        this.accessDetails = list;
    }

    public MemberAccessLevelResult() {
        this(null, null, null);
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public String getWarning() {
        return this.warning;
    }

    public List<ParentFolderAccessInfo> getAccessDetails() {
        return this.accessDetails;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected AccessLevel accessLevel = null;
        protected String warning = null;
        protected List<ParentFolderAccessInfo> accessDetails = null;

        protected Builder() {
        }

        public Builder withAccessLevel(AccessLevel accessLevel) {
            this.accessLevel = accessLevel;
            return this;
        }

        public Builder withWarning(String str) {
            this.warning = str;
            return this;
        }

        public Builder withAccessDetails(List<ParentFolderAccessInfo> list) {
            if (list != null) {
                Iterator<ParentFolderAccessInfo> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'accessDetails' is null");
                    }
                }
            }
            this.accessDetails = list;
            return this;
        }

        public MemberAccessLevelResult build() {
            return new MemberAccessLevelResult(this.accessLevel, this.warning, this.accessDetails);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessLevel, this.warning, this.accessDetails});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberAccessLevelResult memberAccessLevelResult = (MemberAccessLevelResult) obj;
            if ((this.accessLevel == memberAccessLevelResult.accessLevel || (this.accessLevel != null && this.accessLevel.equals(memberAccessLevelResult.accessLevel))) && (this.warning == memberAccessLevelResult.warning || (this.warning != null && this.warning.equals(memberAccessLevelResult.warning)))) {
                if (this.accessDetails == memberAccessLevelResult.accessDetails) {
                    return true;
                }
                if (this.accessDetails != null && this.accessDetails.equals(memberAccessLevelResult.accessDetails)) {
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

    class Serializer extends StructSerializer<MemberAccessLevelResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberAccessLevelResult memberAccessLevelResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (memberAccessLevelResult.accessLevel != null) {
                gVar.a("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(memberAccessLevelResult.accessLevel, gVar);
            }
            if (memberAccessLevelResult.warning != null) {
                gVar.a("warning");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(memberAccessLevelResult.warning, gVar);
            }
            if (memberAccessLevelResult.accessDetails != null) {
                gVar.a("access_details");
                StoneSerializers.nullable(StoneSerializers.list(ParentFolderAccessInfo.Serializer.INSTANCE)).serialize(memberAccessLevelResult.accessDetails, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberAccessLevelResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            String str;
            AccessLevel accessLevel;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                AccessLevel accessLevel2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_level".equals(strD)) {
                        List list3 = list2;
                        str = str2;
                        accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(kVar);
                        list = list3;
                    } else if ("warning".equals(strD)) {
                        accessLevel = accessLevel2;
                        list = list2;
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("access_details".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(ParentFolderAccessInfo.Serializer.INSTANCE)).deserialize(kVar);
                        str = str2;
                        accessLevel = accessLevel2;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        str = str2;
                        accessLevel = accessLevel2;
                    }
                    accessLevel2 = accessLevel;
                    str2 = str;
                    list2 = list;
                }
                MemberAccessLevelResult memberAccessLevelResult = new MemberAccessLevelResult(accessLevel2, str2, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberAccessLevelResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
