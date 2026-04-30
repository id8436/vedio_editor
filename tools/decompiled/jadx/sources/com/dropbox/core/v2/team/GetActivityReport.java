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
public class GetActivityReport extends BaseDfbReport {
    protected final List<Long> activeSharedFolders1Day;
    protected final List<Long> activeSharedFolders28Day;
    protected final List<Long> activeSharedFolders7Day;
    protected final List<Long> activeUsers1Day;
    protected final List<Long> activeUsers28Day;
    protected final List<Long> activeUsers7Day;
    protected final List<Long> adds;
    protected final List<Long> deletes;
    protected final List<Long> edits;
    protected final List<Long> sharedLinksCreated;
    protected final List<Long> sharedLinksViewedByNotLoggedIn;
    protected final List<Long> sharedLinksViewedByOutsideUser;
    protected final List<Long> sharedLinksViewedByTeam;
    protected final List<Long> sharedLinksViewedTotal;

    public GetActivityReport(String str, List<Long> list, List<Long> list2, List<Long> list3, List<Long> list4, List<Long> list5, List<Long> list6, List<Long> list7, List<Long> list8, List<Long> list9, List<Long> list10, List<Long> list11, List<Long> list12, List<Long> list13, List<Long> list14) {
        super(str);
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'adds' is null");
        }
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'adds' is null");
            }
        }
        this.adds = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'edits' is null");
        }
        Iterator<Long> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'edits' is null");
            }
        }
        this.edits = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'deletes' is null");
        }
        Iterator<Long> it3 = list3.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'deletes' is null");
            }
        }
        this.deletes = list3;
        if (list4 == null) {
            throw new IllegalArgumentException("Required value for 'activeUsers28Day' is null");
        }
        Iterator<Long> it4 = list4.iterator();
        while (it4.hasNext()) {
            if (it4.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeUsers28Day' is null");
            }
        }
        this.activeUsers28Day = list4;
        if (list5 == null) {
            throw new IllegalArgumentException("Required value for 'activeUsers7Day' is null");
        }
        Iterator<Long> it5 = list5.iterator();
        while (it5.hasNext()) {
            if (it5.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeUsers7Day' is null");
            }
        }
        this.activeUsers7Day = list5;
        if (list6 == null) {
            throw new IllegalArgumentException("Required value for 'activeUsers1Day' is null");
        }
        Iterator<Long> it6 = list6.iterator();
        while (it6.hasNext()) {
            if (it6.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeUsers1Day' is null");
            }
        }
        this.activeUsers1Day = list6;
        if (list7 == null) {
            throw new IllegalArgumentException("Required value for 'activeSharedFolders28Day' is null");
        }
        Iterator<Long> it7 = list7.iterator();
        while (it7.hasNext()) {
            if (it7.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeSharedFolders28Day' is null");
            }
        }
        this.activeSharedFolders28Day = list7;
        if (list8 == null) {
            throw new IllegalArgumentException("Required value for 'activeSharedFolders7Day' is null");
        }
        Iterator<Long> it8 = list8.iterator();
        while (it8.hasNext()) {
            if (it8.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeSharedFolders7Day' is null");
            }
        }
        this.activeSharedFolders7Day = list8;
        if (list9 == null) {
            throw new IllegalArgumentException("Required value for 'activeSharedFolders1Day' is null");
        }
        Iterator<Long> it9 = list9.iterator();
        while (it9.hasNext()) {
            if (it9.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeSharedFolders1Day' is null");
            }
        }
        this.activeSharedFolders1Day = list9;
        if (list10 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksCreated' is null");
        }
        Iterator<Long> it10 = list10.iterator();
        while (it10.hasNext()) {
            if (it10.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksCreated' is null");
            }
        }
        this.sharedLinksCreated = list10;
        if (list11 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksViewedByTeam' is null");
        }
        Iterator<Long> it11 = list11.iterator();
        while (it11.hasNext()) {
            if (it11.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksViewedByTeam' is null");
            }
        }
        this.sharedLinksViewedByTeam = list11;
        if (list12 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksViewedByOutsideUser' is null");
        }
        Iterator<Long> it12 = list12.iterator();
        while (it12.hasNext()) {
            if (it12.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksViewedByOutsideUser' is null");
            }
        }
        this.sharedLinksViewedByOutsideUser = list12;
        if (list13 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksViewedByNotLoggedIn' is null");
        }
        Iterator<Long> it13 = list13.iterator();
        while (it13.hasNext()) {
            if (it13.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksViewedByNotLoggedIn' is null");
            }
        }
        this.sharedLinksViewedByNotLoggedIn = list13;
        if (list14 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksViewedTotal' is null");
        }
        Iterator<Long> it14 = list14.iterator();
        while (it14.hasNext()) {
            if (it14.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksViewedTotal' is null");
            }
        }
        this.sharedLinksViewedTotal = list14;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public String getStartDate() {
        return this.startDate;
    }

    public List<Long> getAdds() {
        return this.adds;
    }

    public List<Long> getEdits() {
        return this.edits;
    }

    public List<Long> getDeletes() {
        return this.deletes;
    }

    public List<Long> getActiveUsers28Day() {
        return this.activeUsers28Day;
    }

    public List<Long> getActiveUsers7Day() {
        return this.activeUsers7Day;
    }

    public List<Long> getActiveUsers1Day() {
        return this.activeUsers1Day;
    }

    public List<Long> getActiveSharedFolders28Day() {
        return this.activeSharedFolders28Day;
    }

    public List<Long> getActiveSharedFolders7Day() {
        return this.activeSharedFolders7Day;
    }

    public List<Long> getActiveSharedFolders1Day() {
        return this.activeSharedFolders1Day;
    }

    public List<Long> getSharedLinksCreated() {
        return this.sharedLinksCreated;
    }

    public List<Long> getSharedLinksViewedByTeam() {
        return this.sharedLinksViewedByTeam;
    }

    public List<Long> getSharedLinksViewedByOutsideUser() {
        return this.sharedLinksViewedByOutsideUser;
    }

    public List<Long> getSharedLinksViewedByNotLoggedIn() {
        return this.sharedLinksViewedByNotLoggedIn;
    }

    public List<Long> getSharedLinksViewedTotal() {
        return this.sharedLinksViewedTotal;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.adds, this.edits, this.deletes, this.activeUsers28Day, this.activeUsers7Day, this.activeUsers1Day, this.activeSharedFolders28Day, this.activeSharedFolders7Day, this.activeSharedFolders1Day, this.sharedLinksCreated, this.sharedLinksViewedByTeam, this.sharedLinksViewedByOutsideUser, this.sharedLinksViewedByNotLoggedIn, this.sharedLinksViewedTotal}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetActivityReport getActivityReport = (GetActivityReport) obj;
            return (this.startDate == getActivityReport.startDate || this.startDate.equals(getActivityReport.startDate)) && (this.adds == getActivityReport.adds || this.adds.equals(getActivityReport.adds)) && ((this.edits == getActivityReport.edits || this.edits.equals(getActivityReport.edits)) && ((this.deletes == getActivityReport.deletes || this.deletes.equals(getActivityReport.deletes)) && ((this.activeUsers28Day == getActivityReport.activeUsers28Day || this.activeUsers28Day.equals(getActivityReport.activeUsers28Day)) && ((this.activeUsers7Day == getActivityReport.activeUsers7Day || this.activeUsers7Day.equals(getActivityReport.activeUsers7Day)) && ((this.activeUsers1Day == getActivityReport.activeUsers1Day || this.activeUsers1Day.equals(getActivityReport.activeUsers1Day)) && ((this.activeSharedFolders28Day == getActivityReport.activeSharedFolders28Day || this.activeSharedFolders28Day.equals(getActivityReport.activeSharedFolders28Day)) && ((this.activeSharedFolders7Day == getActivityReport.activeSharedFolders7Day || this.activeSharedFolders7Day.equals(getActivityReport.activeSharedFolders7Day)) && ((this.activeSharedFolders1Day == getActivityReport.activeSharedFolders1Day || this.activeSharedFolders1Day.equals(getActivityReport.activeSharedFolders1Day)) && ((this.sharedLinksCreated == getActivityReport.sharedLinksCreated || this.sharedLinksCreated.equals(getActivityReport.sharedLinksCreated)) && ((this.sharedLinksViewedByTeam == getActivityReport.sharedLinksViewedByTeam || this.sharedLinksViewedByTeam.equals(getActivityReport.sharedLinksViewedByTeam)) && ((this.sharedLinksViewedByOutsideUser == getActivityReport.sharedLinksViewedByOutsideUser || this.sharedLinksViewedByOutsideUser.equals(getActivityReport.sharedLinksViewedByOutsideUser)) && ((this.sharedLinksViewedByNotLoggedIn == getActivityReport.sharedLinksViewedByNotLoggedIn || this.sharedLinksViewedByNotLoggedIn.equals(getActivityReport.sharedLinksViewedByNotLoggedIn)) && (this.sharedLinksViewedTotal == getActivityReport.sharedLinksViewedTotal || this.sharedLinksViewedTotal.equals(getActivityReport.sharedLinksViewedTotal))))))))))))));
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

    class Serializer extends StructSerializer<GetActivityReport> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetActivityReport getActivityReport, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("start_date");
            StoneSerializers.string().serialize(getActivityReport.startDate, gVar);
            gVar.a("adds");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.adds, gVar);
            gVar.a("edits");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.edits, gVar);
            gVar.a("deletes");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.deletes, gVar);
            gVar.a("active_users_28_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.activeUsers28Day, gVar);
            gVar.a("active_users_7_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.activeUsers7Day, gVar);
            gVar.a("active_users_1_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.activeUsers1Day, gVar);
            gVar.a("active_shared_folders_28_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.activeSharedFolders28Day, gVar);
            gVar.a("active_shared_folders_7_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.activeSharedFolders7Day, gVar);
            gVar.a("active_shared_folders_1_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.activeSharedFolders1Day, gVar);
            gVar.a("shared_links_created");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.sharedLinksCreated, gVar);
            gVar.a("shared_links_viewed_by_team");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.sharedLinksViewedByTeam, gVar);
            gVar.a("shared_links_viewed_by_outside_user");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.sharedLinksViewedByOutsideUser, gVar);
            gVar.a("shared_links_viewed_by_not_logged_in");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.sharedLinksViewedByNotLoggedIn, gVar);
            gVar.a("shared_links_viewed_total");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(getActivityReport.sharedLinksViewedTotal, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetActivityReport deserialize(k kVar, boolean z) throws IOException {
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String strDeserialize = null;
                List list = null;
                List list2 = null;
                List list3 = null;
                List list4 = null;
                List list5 = null;
                List list6 = null;
                List list7 = null;
                List list8 = null;
                List list9 = null;
                List list10 = null;
                List list11 = null;
                List list12 = null;
                List list13 = null;
                List list14 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("start_date".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("adds".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("edits".equals(strD)) {
                        list2 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("deletes".equals(strD)) {
                        list3 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("active_users_28_day".equals(strD)) {
                        list4 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("active_users_7_day".equals(strD)) {
                        list5 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("active_users_1_day".equals(strD)) {
                        list6 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("active_shared_folders_28_day".equals(strD)) {
                        list7 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("active_shared_folders_7_day".equals(strD)) {
                        list8 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("active_shared_folders_1_day".equals(strD)) {
                        list9 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("shared_links_created".equals(strD)) {
                        list10 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("shared_links_viewed_by_team".equals(strD)) {
                        list11 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("shared_links_viewed_by_outside_user".equals(strD)) {
                        list12 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("shared_links_viewed_by_not_logged_in".equals(strD)) {
                        list13 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("shared_links_viewed_total".equals(strD)) {
                        list14 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"start_date\" missing.");
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"adds\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"edits\" missing.");
                }
                if (list3 == null) {
                    throw new j(kVar, "Required field \"deletes\" missing.");
                }
                if (list4 == null) {
                    throw new j(kVar, "Required field \"active_users_28_day\" missing.");
                }
                if (list5 == null) {
                    throw new j(kVar, "Required field \"active_users_7_day\" missing.");
                }
                if (list6 == null) {
                    throw new j(kVar, "Required field \"active_users_1_day\" missing.");
                }
                if (list7 == null) {
                    throw new j(kVar, "Required field \"active_shared_folders_28_day\" missing.");
                }
                if (list8 == null) {
                    throw new j(kVar, "Required field \"active_shared_folders_7_day\" missing.");
                }
                if (list9 == null) {
                    throw new j(kVar, "Required field \"active_shared_folders_1_day\" missing.");
                }
                if (list10 == null) {
                    throw new j(kVar, "Required field \"shared_links_created\" missing.");
                }
                if (list11 == null) {
                    throw new j(kVar, "Required field \"shared_links_viewed_by_team\" missing.");
                }
                if (list12 == null) {
                    throw new j(kVar, "Required field \"shared_links_viewed_by_outside_user\" missing.");
                }
                if (list13 == null) {
                    throw new j(kVar, "Required field \"shared_links_viewed_by_not_logged_in\" missing.");
                }
                if (list14 == null) {
                    throw new j(kVar, "Required field \"shared_links_viewed_total\" missing.");
                }
                GetActivityReport getActivityReport = new GetActivityReport(strDeserialize, list, list2, list3, list4, list5, list6, list7, list8, list9, list10, list11, list12, list13, list14);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getActivityReport;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
