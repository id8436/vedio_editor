package com.dropbox.core.v2.team;

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
class DateRange {
    protected final Date endDate;
    protected final Date startDate;

    public DateRange(Date date, Date date2) {
        this.startDate = LangUtil.truncateMillis(date);
        this.endDate = LangUtil.truncateMillis(date2);
    }

    public DateRange() {
        this(null, null);
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected Date startDate = null;
        protected Date endDate = null;

        protected Builder() {
        }

        public Builder withStartDate(Date date) {
            this.startDate = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withEndDate(Date date) {
            this.endDate = LangUtil.truncateMillis(date);
            return this;
        }

        public DateRange build() {
            return new DateRange(this.startDate, this.endDate);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.startDate, this.endDate});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DateRange dateRange = (DateRange) obj;
            if (this.startDate == dateRange.startDate || (this.startDate != null && this.startDate.equals(dateRange.startDate))) {
                if (this.endDate == dateRange.endDate) {
                    return true;
                }
                if (this.endDate != null && this.endDate.equals(dateRange.endDate)) {
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

    class Serializer extends StructSerializer<DateRange> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DateRange dateRange, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (dateRange.startDate != null) {
                gVar.a("start_date");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(dateRange.startDate, gVar);
            }
            if (dateRange.endDate != null) {
                gVar.a("end_date");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(dateRange.endDate, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DateRange deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date date;
            Date date2;
            Date date3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Date date4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("start_date".equals(strD)) {
                        Date date5 = date3;
                        date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        date = date5;
                    } else if ("end_date".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        date2 = date4;
                    } else {
                        skipValue(kVar);
                        date = date3;
                        date2 = date4;
                    }
                    date4 = date2;
                    date3 = date;
                }
                DateRange dateRange = new DateRange(date4, date3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return dateRange;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
