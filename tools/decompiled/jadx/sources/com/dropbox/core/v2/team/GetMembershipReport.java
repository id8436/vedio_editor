package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetMembershipReport extends BaseDfbReport {
    protected final List<Long> licenses;
    protected final List<Long> membersJoined;
    protected final List<Long> pendingInvites;
    protected final List<Long> suspendedMembers;
    protected final List<Long> teamSize;

    public GetMembershipReport(String str, List<Long> list, List<Long> list2, List<Long> list3, List<Long> list4, List<Long> list5) {
        super(str);
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'teamSize' is null");
        }
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'teamSize' is null");
            }
        }
        this.teamSize = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'pendingInvites' is null");
        }
        Iterator<Long> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'pendingInvites' is null");
            }
        }
        this.pendingInvites = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'membersJoined' is null");
        }
        Iterator<Long> it3 = list3.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'membersJoined' is null");
            }
        }
        this.membersJoined = list3;
        if (list4 == null) {
            throw new IllegalArgumentException("Required value for 'suspendedMembers' is null");
        }
        Iterator<Long> it4 = list4.iterator();
        while (it4.hasNext()) {
            if (it4.next() == null) {
                throw new IllegalArgumentException("An item in list 'suspendedMembers' is null");
            }
        }
        this.suspendedMembers = list4;
        if (list5 == null) {
            throw new IllegalArgumentException("Required value for 'licenses' is null");
        }
        Iterator<Long> it5 = list5.iterator();
        while (it5.hasNext()) {
            if (it5.next() == null) {
                throw new IllegalArgumentException("An item in list 'licenses' is null");
            }
        }
        this.licenses = list5;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public String getStartDate() {
        return this.startDate;
    }

    public List<Long> getTeamSize() {
        return this.teamSize;
    }

    public List<Long> getPendingInvites() {
        return this.pendingInvites;
    }

    public List<Long> getMembersJoined() {
        return this.membersJoined;
    }

    public List<Long> getSuspendedMembers() {
        return this.suspendedMembers;
    }

    public List<Long> getLicenses() {
        return this.licenses;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamSize, this.pendingInvites, this.membersJoined, this.suspendedMembers, this.licenses}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetMembershipReport getMembershipReport = (GetMembershipReport) obj;
            return (this.startDate == getMembershipReport.startDate || this.startDate.equals(getMembershipReport.startDate)) && (this.teamSize == getMembershipReport.teamSize || this.teamSize.equals(getMembershipReport.teamSize)) && ((this.pendingInvites == getMembershipReport.pendingInvites || this.pendingInvites.equals(getMembershipReport.pendingInvites)) && ((this.membersJoined == getMembershipReport.membersJoined || this.membersJoined.equals(getMembershipReport.membersJoined)) && ((this.suspendedMembers == getMembershipReport.suspendedMembers || this.suspendedMembers.equals(getMembershipReport.suspendedMembers)) && (this.licenses == getMembershipReport.licenses || this.licenses.equals(getMembershipReport.licenses)))));
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

    class Serializer extends StructSerializer<GetMembershipReport> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetMembershipReport getMembershipReport, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("start_date");
            StoneSerializers.string().serialize(getMembershipReport.startDate, gVar);
            gVar.a("team_size");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getMembershipReport.teamSize, gVar);
            gVar.a("pending_invites");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getMembershipReport.pendingInvites, gVar);
            gVar.a("members_joined");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getMembershipReport.membersJoined, gVar);
            gVar.a("suspended_members");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getMembershipReport.suspendedMembers, gVar);
            gVar.a("licenses");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getMembershipReport.licenses, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetMembershipReport deserialize(k kVar, boolean z) throws IOException {
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
                    } else if ("team_size".equals(strD)) {
                        list5 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("pending_invites".equals(strD)) {
                        list4 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("members_joined".equals(strD)) {
                        list3 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("suspended_members".equals(strD)) {
                        list2 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("licenses".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"start_date\" missing.");
                }
                if (list5 == null) {
                    throw new j(kVar, "Required field \"team_size\" missing.");
                }
                if (list4 == null) {
                    throw new j(kVar, "Required field \"pending_invites\" missing.");
                }
                if (list3 == null) {
                    throw new j(kVar, "Required field \"members_joined\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"suspended_members\" missing.");
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"licenses\" missing.");
                }
                GetMembershipReport getMembershipReport = new GetMembershipReport(strDeserialize, list5, list4, list3, list2, list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getMembershipReport;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
