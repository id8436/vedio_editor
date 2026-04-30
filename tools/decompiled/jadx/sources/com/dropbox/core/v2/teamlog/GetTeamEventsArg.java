package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.TimeRange;
import com.dropbox.core.v2.teamlog.EventCategory;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class GetTeamEventsArg {
    protected final String accountId;
    protected final EventCategory category;
    protected final long limit;
    protected final TimeRange time;

    public GetTeamEventsArg(long j, String str, TimeRange timeRange, EventCategory eventCategory) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        this.limit = j;
        if (str != null) {
            if (str.length() < 40) {
                throw new IllegalArgumentException("String 'accountId' is shorter than 40");
            }
            if (str.length() > 40) {
                throw new IllegalArgumentException("String 'accountId' is longer than 40");
            }
        }
        this.accountId = str;
        this.time = timeRange;
        this.category = eventCategory;
    }

    public GetTeamEventsArg() {
        this(1000L, null, null, null);
    }

    public long getLimit() {
        return this.limit;
    }

    public String getAccountId() {
        return this.accountId;
    }

    public TimeRange getTime() {
        return this.time;
    }

    public EventCategory getCategory() {
        return this.category;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected long limit = 1000;
        protected String accountId = null;
        protected TimeRange time = null;
        protected EventCategory category = null;

        protected Builder() {
        }

        public Builder withLimit(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 1000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
            }
            if (l != null) {
                this.limit = l.longValue();
            } else {
                this.limit = 1000L;
            }
            return this;
        }

        public Builder withAccountId(String str) {
            if (str != null) {
                if (str.length() < 40) {
                    throw new IllegalArgumentException("String 'accountId' is shorter than 40");
                }
                if (str.length() > 40) {
                    throw new IllegalArgumentException("String 'accountId' is longer than 40");
                }
            }
            this.accountId = str;
            return this;
        }

        public Builder withTime(TimeRange timeRange) {
            this.time = timeRange;
            return this;
        }

        public Builder withCategory(EventCategory eventCategory) {
            this.category = eventCategory;
            return this;
        }

        public GetTeamEventsArg build() {
            return new GetTeamEventsArg(this.limit, this.accountId, this.time, this.category);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.limit), this.accountId, this.time, this.category});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetTeamEventsArg getTeamEventsArg = (GetTeamEventsArg) obj;
            if (this.limit == getTeamEventsArg.limit && ((this.accountId == getTeamEventsArg.accountId || (this.accountId != null && this.accountId.equals(getTeamEventsArg.accountId))) && (this.time == getTeamEventsArg.time || (this.time != null && this.time.equals(getTeamEventsArg.time))))) {
                if (this.category == getTeamEventsArg.category) {
                    return true;
                }
                if (this.category != null && this.category.equals(getTeamEventsArg.category)) {
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

    class Serializer extends StructSerializer<GetTeamEventsArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetTeamEventsArg getTeamEventsArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(getTeamEventsArg.limit), gVar);
            if (getTeamEventsArg.accountId != null) {
                gVar.a("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(getTeamEventsArg.accountId, gVar);
            }
            if (getTeamEventsArg.time != null) {
                gVar.a("time");
                StoneSerializers.nullableStruct(TimeRange.Serializer.INSTANCE).serialize(getTeamEventsArg.time, gVar);
            }
            if (getTeamEventsArg.category != null) {
                gVar.a("category");
                StoneSerializers.nullable(EventCategory.Serializer.INSTANCE).serialize(getTeamEventsArg.category, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetTeamEventsArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            EventCategory eventCategory = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = 1000L;
                TimeRange timeRange = null;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("limit".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                    } else if ("account_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("time".equals(strD)) {
                        timeRange = (TimeRange) StoneSerializers.nullableStruct(TimeRange.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("category".equals(strD)) {
                        eventCategory = (EventCategory) StoneSerializers.nullable(EventCategory.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                }
                GetTeamEventsArg getTeamEventsArg = new GetTeamEventsArg(l.longValue(), str, timeRange, eventCategory);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getTeamEventsArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
