package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.MemberDevices;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListMembersDevicesResult {
    protected final String cursor;
    protected final List<MemberDevices> devices;
    protected final boolean hasMore;

    public ListMembersDevicesResult(List<MemberDevices> list, boolean z, String str) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'devices' is null");
        }
        Iterator<MemberDevices> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'devices' is null");
            }
        }
        this.devices = list;
        this.hasMore = z;
        this.cursor = str;
    }

    public ListMembersDevicesResult(List<MemberDevices> list, boolean z) {
        this(list, z, null);
    }

    public List<MemberDevices> getDevices() {
        return this.devices;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.devices, Boolean.valueOf(this.hasMore), this.cursor});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListMembersDevicesResult listMembersDevicesResult = (ListMembersDevicesResult) obj;
            if ((this.devices == listMembersDevicesResult.devices || this.devices.equals(listMembersDevicesResult.devices)) && this.hasMore == listMembersDevicesResult.hasMore) {
                if (this.cursor == listMembersDevicesResult.cursor) {
                    return true;
                }
                if (this.cursor != null && this.cursor.equals(listMembersDevicesResult.cursor)) {
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

    class Serializer extends StructSerializer<ListMembersDevicesResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListMembersDevicesResult listMembersDevicesResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("devices");
            StoneSerializers.list(MemberDevices.Serializer.INSTANCE).serialize(listMembersDevicesResult.devices, gVar);
            gVar.a("has_more");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listMembersDevicesResult.hasMore), gVar);
            if (listMembersDevicesResult.cursor != null) {
                gVar.a("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(listMembersDevicesResult.cursor, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListMembersDevicesResult deserialize(k kVar, boolean z) throws IOException {
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
                    if ("devices".equals(strD)) {
                        String str3 = str2;
                        boolDeserialize = bool;
                        list = (List) StoneSerializers.list(MemberDevices.Serializer.INSTANCE).deserialize(kVar);
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
                    throw new j(kVar, "Required field \"devices\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"has_more\" missing.");
                }
                ListMembersDevicesResult listMembersDevicesResult = new ListMembersDevicesResult(list2, bool.booleanValue(), str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listMembersDevicesResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
