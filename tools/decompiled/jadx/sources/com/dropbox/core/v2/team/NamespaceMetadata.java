package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.NamespaceType;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class NamespaceMetadata {
    protected final String name;
    protected final String namespaceId;
    protected final NamespaceType namespaceType;
    protected final String teamMemberId;

    public NamespaceMetadata(String str, String str2, NamespaceType namespaceType, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'namespaceId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
            throw new IllegalArgumentException("String 'namespaceId' does not match pattern");
        }
        this.namespaceId = str2;
        if (namespaceType == null) {
            throw new IllegalArgumentException("Required value for 'namespaceType' is null");
        }
        this.namespaceType = namespaceType;
        this.teamMemberId = str3;
    }

    public NamespaceMetadata(String str, String str2, NamespaceType namespaceType) {
        this(str, str2, namespaceType, null);
    }

    public String getName() {
        return this.name;
    }

    public String getNamespaceId() {
        return this.namespaceId;
    }

    public NamespaceType getNamespaceType() {
        return this.namespaceType;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.namespaceId, this.namespaceType, this.teamMemberId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            NamespaceMetadata namespaceMetadata = (NamespaceMetadata) obj;
            if ((this.name == namespaceMetadata.name || this.name.equals(namespaceMetadata.name)) && ((this.namespaceId == namespaceMetadata.namespaceId || this.namespaceId.equals(namespaceMetadata.namespaceId)) && (this.namespaceType == namespaceMetadata.namespaceType || this.namespaceType.equals(namespaceMetadata.namespaceType)))) {
                if (this.teamMemberId == namespaceMetadata.teamMemberId) {
                    return true;
                }
                if (this.teamMemberId != null && this.teamMemberId.equals(namespaceMetadata.teamMemberId)) {
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

    class Serializer extends StructSerializer<NamespaceMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(NamespaceMetadata namespaceMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("name");
            StoneSerializers.string().serialize(namespaceMetadata.name, gVar);
            gVar.a("namespace_id");
            StoneSerializers.string().serialize(namespaceMetadata.namespaceId, gVar);
            gVar.a("namespace_type");
            NamespaceType.Serializer.INSTANCE.serialize(namespaceMetadata.namespaceType, gVar);
            if (namespaceMetadata.teamMemberId != null) {
                gVar.a("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(namespaceMetadata.teamMemberId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public NamespaceMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            NamespaceType namespaceTypeDeserialize;
            String strDeserialize;
            String strDeserialize2;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                NamespaceType namespaceType = null;
                String str3 = null;
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("name".equals(strD)) {
                        String str5 = str2;
                        namespaceTypeDeserialize = namespaceType;
                        strDeserialize = str3;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        str = str5;
                    } else if ("namespace_id".equals(strD)) {
                        strDeserialize2 = str4;
                        NamespaceType namespaceType2 = namespaceType;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str2;
                        namespaceTypeDeserialize = namespaceType2;
                    } else if ("namespace_type".equals(strD)) {
                        strDeserialize = str3;
                        strDeserialize2 = str4;
                        String str6 = str2;
                        namespaceTypeDeserialize = NamespaceType.Serializer.INSTANCE.deserialize(kVar);
                        str = str6;
                    } else if ("team_member_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        namespaceTypeDeserialize = namespaceType;
                        strDeserialize = str3;
                        strDeserialize2 = str4;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        namespaceTypeDeserialize = namespaceType;
                        strDeserialize = str3;
                        strDeserialize2 = str4;
                    }
                    str4 = strDeserialize2;
                    str3 = strDeserialize;
                    namespaceType = namespaceTypeDeserialize;
                    str2 = str;
                }
                if (str4 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"namespace_id\" missing.");
                }
                if (namespaceType == null) {
                    throw new j(kVar, "Required field \"namespace_type\" missing.");
                }
                NamespaceMetadata namespaceMetadata = new NamespaceMetadata(str4, str3, namespaceType, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return namespaceMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
