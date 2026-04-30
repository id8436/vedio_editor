package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.NamespaceMetadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TeamNamespacesListResult {
    protected final String cursor;
    protected final boolean hasMore;
    protected final List<NamespaceMetadata> namespaces;

    public TeamNamespacesListResult(List<NamespaceMetadata> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'namespaces' is null");
        }
        Iterator<NamespaceMetadata> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'namespaces' is null");
            }
        }
        this.namespaces = list;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = str;
        this.hasMore = z;
    }

    public List<NamespaceMetadata> getNamespaces() {
        return this.namespaces;
    }

    public String getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.namespaces, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamNamespacesListResult teamNamespacesListResult = (TeamNamespacesListResult) obj;
            return (this.namespaces == teamNamespacesListResult.namespaces || this.namespaces.equals(teamNamespacesListResult.namespaces)) && (this.cursor == teamNamespacesListResult.cursor || this.cursor.equals(teamNamespacesListResult.cursor)) && this.hasMore == teamNamespacesListResult.hasMore;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamNamespacesListResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamNamespacesListResult teamNamespacesListResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("namespaces");
            StoneSerializers.list(NamespaceMetadata.Serializer.INSTANCE).serialize(teamNamespacesListResult.namespaces, gVar);
            gVar.a("cursor");
            StoneSerializers.string().serialize(teamNamespacesListResult.cursor, gVar);
            gVar.a("has_more");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(teamNamespacesListResult.hasMore), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamNamespacesListResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            List list;
            Boolean bool = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("namespaces".equals(strD)) {
                        Boolean bool2 = bool;
                        strDeserialize = str;
                        list = (List) StoneSerializers.list(NamespaceMetadata.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("cursor".equals(strD)) {
                        list = list2;
                        boolDeserialize = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("has_more".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        strDeserialize = str;
                        list = list2;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        strDeserialize = str;
                        list = list2;
                    }
                    list2 = list;
                    str = strDeserialize;
                    bool = boolDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"namespaces\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"has_more\" missing.");
                }
                TeamNamespacesListResult teamNamespacesListResult = new TeamNamespacesListResult(list2, str, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamNamespacesListResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
