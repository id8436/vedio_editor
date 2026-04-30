package com.dropbox.core.v2.teamcommon;

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
public class TimeRange {
    protected final Date endTime;
    protected final Date startTime;

    public TimeRange(Date date, Date date2) {
        this.startTime = LangUtil.truncateMillis(date);
        this.endTime = LangUtil.truncateMillis(date2);
    }

    public TimeRange() {
        this(null, null);
    }

    public Date getStartTime() {
        return this.startTime;
    }

    public Date getEndTime() {
        return this.endTime;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected Date startTime = null;
        protected Date endTime = null;

        protected Builder() {
        }

        public Builder withStartTime(Date date) {
            this.startTime = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withEndTime(Date date) {
            this.endTime = LangUtil.truncateMillis(date);
            return this;
        }

        public TimeRange build() {
            return new TimeRange(this.startTime, this.endTime);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.startTime, this.endTime});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TimeRange timeRange = (TimeRange) obj;
            if (this.startTime == timeRange.startTime || (this.startTime != null && this.startTime.equals(timeRange.startTime))) {
                if (this.endTime == timeRange.endTime) {
                    return true;
                }
                if (this.endTime != null && this.endTime.equals(timeRange.endTime)) {
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

    public class Serializer extends StructSerializer<TimeRange> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TimeRange timeRange, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (timeRange.startTime != null) {
                gVar.a("start_time");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(timeRange.startTime, gVar);
            }
            if (timeRange.endTime != null) {
                gVar.a("end_time");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(timeRange.endTime, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TimeRange deserialize(k kVar, boolean z) throws IOException {
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
                    if ("start_time".equals(strD)) {
                        Date date5 = date3;
                        date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        date = date5;
                    } else if ("end_time".equals(strD)) {
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
                TimeRange timeRange = new TimeRange(date4, date3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return timeRange;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
