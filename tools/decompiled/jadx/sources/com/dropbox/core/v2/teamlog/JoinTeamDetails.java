package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.AppLogInfo;
import com.dropbox.core.v2.teamlog.DeviceLogInfo;
import com.dropbox.core.v2.teamlog.FolderLogInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class JoinTeamDetails {
    protected final List<AppLogInfo> linkedApps;
    protected final List<DeviceLogInfo> linkedDevices;
    protected final List<FolderLogInfo> linkedSharedFolders;

    public JoinTeamDetails(List<AppLogInfo> list, List<DeviceLogInfo> list2, List<FolderLogInfo> list3) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'linkedApps' is null");
        }
        Iterator<AppLogInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'linkedApps' is null");
            }
        }
        this.linkedApps = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'linkedDevices' is null");
        }
        Iterator<DeviceLogInfo> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'linkedDevices' is null");
            }
        }
        this.linkedDevices = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'linkedSharedFolders' is null");
        }
        Iterator<FolderLogInfo> it3 = list3.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'linkedSharedFolders' is null");
            }
        }
        this.linkedSharedFolders = list3;
    }

    public List<AppLogInfo> getLinkedApps() {
        return this.linkedApps;
    }

    public List<DeviceLogInfo> getLinkedDevices() {
        return this.linkedDevices;
    }

    public List<FolderLogInfo> getLinkedSharedFolders() {
        return this.linkedSharedFolders;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.linkedApps, this.linkedDevices, this.linkedSharedFolders});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            JoinTeamDetails joinTeamDetails = (JoinTeamDetails) obj;
            return (this.linkedApps == joinTeamDetails.linkedApps || this.linkedApps.equals(joinTeamDetails.linkedApps)) && (this.linkedDevices == joinTeamDetails.linkedDevices || this.linkedDevices.equals(joinTeamDetails.linkedDevices)) && (this.linkedSharedFolders == joinTeamDetails.linkedSharedFolders || this.linkedSharedFolders.equals(joinTeamDetails.linkedSharedFolders));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<JoinTeamDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(JoinTeamDetails joinTeamDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("linked_apps");
            StoneSerializers.list(AppLogInfo.Serializer.INSTANCE).serialize(joinTeamDetails.linkedApps, gVar);
            gVar.a("linked_devices");
            StoneSerializers.list(DeviceLogInfo.Serializer.INSTANCE).serialize(joinTeamDetails.linkedDevices, gVar);
            gVar.a("linked_shared_folders");
            StoneSerializers.list(FolderLogInfo.Serializer.INSTANCE).serialize(joinTeamDetails.linkedSharedFolders, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public JoinTeamDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            List list2;
            List list3;
            List list4 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list5 = null;
                List list6 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("linked_apps".equals(strD)) {
                        List list7 = list4;
                        list2 = list5;
                        list3 = (List) StoneSerializers.list(AppLogInfo.Serializer.INSTANCE).deserialize(kVar);
                        list = list7;
                    } else if ("linked_devices".equals(strD)) {
                        list3 = list6;
                        list = list4;
                        list2 = (List) StoneSerializers.list(DeviceLogInfo.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("linked_shared_folders".equals(strD)) {
                        list = (List) StoneSerializers.list(FolderLogInfo.Serializer.INSTANCE).deserialize(kVar);
                        list2 = list5;
                        list3 = list6;
                    } else {
                        skipValue(kVar);
                        list = list4;
                        list2 = list5;
                        list3 = list6;
                    }
                    list6 = list3;
                    list5 = list2;
                    list4 = list;
                }
                if (list6 == null) {
                    throw new j(kVar, "Required field \"linked_apps\" missing.");
                }
                if (list5 == null) {
                    throw new j(kVar, "Required field \"linked_devices\" missing.");
                }
                if (list4 == null) {
                    throw new j(kVar, "Required field \"linked_shared_folders\" missing.");
                }
                JoinTeamDetails joinTeamDetails = new JoinTeamDetails(list6, list5, list4);
                if (!z) {
                    expectEndObject(kVar);
                }
                return joinTeamDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
