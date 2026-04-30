package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.MemberLinkedApps;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListTeamAppsResult {
    protected final List<MemberLinkedApps> apps;
    protected final String cursor;
    protected final boolean hasMore;

    public ListTeamAppsResult(List<MemberLinkedApps> list, boolean z, String str) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'apps' is null");
        }
        Iterator<MemberLinkedApps> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'apps' is null");
            }
        }
        this.apps = list;
        this.hasMore = z;
        this.cursor = str;
    }

    public ListTeamAppsResult(List<MemberLinkedApps> list, boolean z) {
        this(list, z, null);
    }

    public List<MemberLinkedApps> getApps() {
        return this.apps;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.apps, Boolean.valueOf(this.hasMore), this.cursor});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListTeamAppsResult listTeamAppsResult = (ListTeamAppsResult) obj;
            if ((this.apps == listTeamAppsResult.apps || this.apps.equals(listTeamAppsResult.apps)) && this.hasMore == listTeamAppsResult.hasMore) {
                if (this.cursor == listTeamAppsResult.cursor) {
                    return true;
                }
                if (this.cursor != null && this.cursor.equals(listTeamAppsResult.cursor)) {
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

    class Serializer extends StructSerializer<ListTeamAppsResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListTeamAppsResult listTeamAppsResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(AppsForYourDomainService.APPS_SERVICE);
            StoneSerializers.list(MemberLinkedApps.Serializer.INSTANCE).serialize(listTeamAppsResult.apps, gVar);
            gVar.a("has_more");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listTeamAppsResult.hasMore), gVar);
            if (listTeamAppsResult.cursor != null) {
                gVar.a("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(listTeamAppsResult.cursor, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListTeamAppsResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            Boolean boolDeserialize;
            List list;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (AppsForYourDomainService.APPS_SERVICE.equals(strD)) {
                        String str3 = str2;
                        boolDeserialize = bool;
                        list = (List) StoneSerializers.list(MemberLinkedApps.Serializer.INSTANCE).deserialize(kVar);
                        str = str3;
                    } else if ("has_more".equals(strD)) {
                        list = list2;
                        str = str2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("cursor".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        list = list2;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        boolDeserialize = bool;
                        list = list2;
                    }
                    list2 = list;
                    bool = boolDeserialize;
                    str2 = str;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"apps\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"has_more\" missing.");
                }
                ListTeamAppsResult listTeamAppsResult = new ListTeamAppsResult(list2, bool.booleanValue(), str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listTeamAppsResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
