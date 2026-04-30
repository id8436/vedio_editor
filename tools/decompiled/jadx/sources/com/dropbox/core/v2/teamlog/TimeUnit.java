package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TimeUnit {
    MILLISECONDS,
    SECONDS,
    MINUTES,
    HOURS,
    DAYS,
    WEEKS,
    MONTHS,
    YEARS,
    OTHER;

    class Serializer extends UnionSerializer<TimeUnit> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TimeUnit timeUnit, g gVar) throws IOException {
            switch (timeUnit) {
                case MILLISECONDS:
                    gVar.b("milliseconds");
                    break;
                case SECONDS:
                    gVar.b("seconds");
                    break;
                case MINUTES:
                    gVar.b("minutes");
                    break;
                case HOURS:
                    gVar.b("hours");
                    break;
                case DAYS:
                    gVar.b("days");
                    break;
                case WEEKS:
                    gVar.b("weeks");
                    break;
                case MONTHS:
                    gVar.b("months");
                    break;
                case YEARS:
                    gVar.b("years");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TimeUnit deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TimeUnit timeUnit;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("milliseconds".equals(tag)) {
                timeUnit = TimeUnit.MILLISECONDS;
            } else if ("seconds".equals(tag)) {
                timeUnit = TimeUnit.SECONDS;
            } else if ("minutes".equals(tag)) {
                timeUnit = TimeUnit.MINUTES;
            } else if ("hours".equals(tag)) {
                timeUnit = TimeUnit.HOURS;
            } else if ("days".equals(tag)) {
                timeUnit = TimeUnit.DAYS;
            } else if ("weeks".equals(tag)) {
                timeUnit = TimeUnit.WEEKS;
            } else if ("months".equals(tag)) {
                timeUnit = TimeUnit.MONTHS;
            } else if ("years".equals(tag)) {
                timeUnit = TimeUnit.YEARS;
            } else {
                timeUnit = TimeUnit.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return timeUnit;
        }
    }
}
