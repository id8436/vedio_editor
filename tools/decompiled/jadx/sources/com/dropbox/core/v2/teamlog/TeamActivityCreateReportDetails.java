package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class TeamActivityCreateReportDetails {
    protected final Date endDate;
    protected final Date startDate;

    public TeamActivityCreateReportDetails(Date date, Date date2) {
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'startDate' is null");
        }
        this.startDate = LangUtil.truncateMillis(date);
        if (date2 == null) {
            throw new IllegalArgumentException("Required value for 'endDate' is null");
        }
        this.endDate = LangUtil.truncateMillis(date2);
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.startDate, this.endDate});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamActivityCreateReportDetails teamActivityCreateReportDetails = (TeamActivityCreateReportDetails) obj;
            return (this.startDate == teamActivityCreateReportDetails.startDate || this.startDate.equals(teamActivityCreateReportDetails.startDate)) && (this.endDate == teamActivityCreateReportDetails.endDate || this.endDate.equals(teamActivityCreateReportDetails.endDate));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamActivityCreateReportDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamActivityCreateReportDetails teamActivityCreateReportDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("start_date");
            StoneSerializers.timestamp().serialize(teamActivityCreateReportDetails.startDate, gVar);
            gVar.a("end_date");
            StoneSerializers.timestamp().serialize(teamActivityCreateReportDetails.endDate, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamActivityCreateReportDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date dateDeserialize;
            Date dateDeserialize2;
            Date date = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Date date2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("start_date".equals(strD)) {
                        Date date3 = date;
                        dateDeserialize2 = StoneSerializers.timestamp().deserialize(kVar);
                        dateDeserialize = date3;
                    } else if ("end_date".equals(strD)) {
                        dateDeserialize = StoneSerializers.timestamp().deserialize(kVar);
                        dateDeserialize2 = date2;
                    } else {
                        skipValue(kVar);
                        dateDeserialize = date;
                        dateDeserialize2 = date2;
                    }
                    date2 = dateDeserialize2;
                    date = dateDeserialize;
                }
                if (date2 == null) {
                    throw new j(kVar, "Required field \"start_date\" missing.");
                }
                if (date == null) {
                    throw new j(kVar, "Required field \"end_date\" missing.");
                }
                TeamActivityCreateReportDetails teamActivityCreateReportDetails = new TeamActivityCreateReportDetails(date2, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamActivityCreateReportDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
