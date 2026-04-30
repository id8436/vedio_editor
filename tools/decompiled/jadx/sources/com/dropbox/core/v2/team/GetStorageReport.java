package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.StorageBucket;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetStorageReport extends BaseDfbReport {
    protected final List<List<StorageBucket>> memberStorageMap;
    protected final List<Long> sharedFolders;
    protected final List<Long> sharedUsage;
    protected final List<Long> totalUsage;
    protected final List<Long> unsharedUsage;

    public GetStorageReport(String str, List<Long> list, List<Long> list2, List<Long> list3, List<Long> list4, List<List<StorageBucket>> list5) {
        super(str);
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'totalUsage' is null");
        }
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'totalUsage' is null");
            }
        }
        this.totalUsage = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'sharedUsage' is null");
        }
        Iterator<Long> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedUsage' is null");
            }
        }
        this.sharedUsage = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'unsharedUsage' is null");
        }
        Iterator<Long> it3 = list3.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'unsharedUsage' is null");
            }
        }
        this.unsharedUsage = list3;
        if (list4 == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolders' is null");
        }
        Iterator<Long> it4 = list4.iterator();
        while (it4.hasNext()) {
            if (it4.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedFolders' is null");
            }
        }
        this.sharedFolders = list4;
        if (list5 == null) {
            throw new IllegalArgumentException("Required value for 'memberStorageMap' is null");
        }
        for (List<StorageBucket> list6 : list5) {
            if (list6 == null) {
                throw new IllegalArgumentException("An item in list 'memberStorageMap' is null");
            }
            Iterator<StorageBucket> it5 = list6.iterator();
            while (it5.hasNext()) {
                if (it5.next() == null) {
                    throw new IllegalArgumentException("An item in listan item in list 'memberStorageMap' is null");
                }
            }
        }
        this.memberStorageMap = list5;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public String getStartDate() {
        return this.startDate;
    }

    public List<Long> getTotalUsage() {
        return this.totalUsage;
    }

    public List<Long> getSharedUsage() {
        return this.sharedUsage;
    }

    public List<Long> getUnsharedUsage() {
        return this.unsharedUsage;
    }

    public List<Long> getSharedFolders() {
        return this.sharedFolders;
    }

    public List<List<StorageBucket>> getMemberStorageMap() {
        return this.memberStorageMap;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.totalUsage, this.sharedUsage, this.unsharedUsage, this.sharedFolders, this.memberStorageMap}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetStorageReport getStorageReport = (GetStorageReport) obj;
            return (this.startDate == getStorageReport.startDate || this.startDate.equals(getStorageReport.startDate)) && (this.totalUsage == getStorageReport.totalUsage || this.totalUsage.equals(getStorageReport.totalUsage)) && ((this.sharedUsage == getStorageReport.sharedUsage || this.sharedUsage.equals(getStorageReport.sharedUsage)) && ((this.unsharedUsage == getStorageReport.unsharedUsage || this.unsharedUsage.equals(getStorageReport.unsharedUsage)) && ((this.sharedFolders == getStorageReport.sharedFolders || this.sharedFolders.equals(getStorageReport.sharedFolders)) && (this.memberStorageMap == getStorageReport.memberStorageMap || this.memberStorageMap.equals(getStorageReport.memberStorageMap)))));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetStorageReport> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetStorageReport getStorageReport, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("start_date");
            StoneSerializers.string().serialize(getStorageReport.startDate, gVar);
            gVar.a("total_usage");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getStorageReport.totalUsage, gVar);
            gVar.a("shared_usage");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getStorageReport.sharedUsage, gVar);
            gVar.a("unshared_usage");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getStorageReport.unsharedUsage, gVar);
            gVar.a("shared_folders");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getStorageReport.sharedFolders, gVar);
            gVar.a("member_storage_map");
            StoneSerializers.list(StoneSerializers.list(StorageBucket.Serializer.INSTANCE)).serialize(getStorageReport.memberStorageMap, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetStorageReport deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list2 = null;
                List list3 = null;
                List list4 = null;
                List list5 = null;
                String strDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("start_date".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("total_usage".equals(strD)) {
                        list5 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("shared_usage".equals(strD)) {
                        list4 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("unshared_usage".equals(strD)) {
                        list3 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("shared_folders".equals(strD)) {
                        list2 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("member_storage_map".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.list(StorageBucket.Serializer.INSTANCE)).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"start_date\" missing.");
                }
                if (list5 == null) {
                    throw new j(kVar, "Required field \"total_usage\" missing.");
                }
                if (list4 == null) {
                    throw new j(kVar, "Required field \"shared_usage\" missing.");
                }
                if (list3 == null) {
                    throw new j(kVar, "Required field \"unshared_usage\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"shared_folders\" missing.");
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"member_storage_map\" missing.");
                }
                GetStorageReport getStorageReport = new GetStorageReport(strDeserialize, list5, list4, list3, list2, list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getStorageReport;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
