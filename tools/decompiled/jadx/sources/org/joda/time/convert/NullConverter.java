package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.Period;
import org.joda.time.ReadWritableInterval;
import org.joda.time.ReadWritablePeriod;

/* JADX INFO: loaded from: classes3.dex */
class NullConverter extends AbstractConverter implements DurationConverter, InstantConverter, IntervalConverter, PartialConverter, PeriodConverter {
    static final NullConverter INSTANCE = new NullConverter();

    protected NullConverter() {
    }

    @Override // org.joda.time.convert.DurationConverter
    public long getDurationMillis(Object obj) {
        return 0L;
    }

    @Override // org.joda.time.convert.PeriodConverter
    public void setInto(ReadWritablePeriod readWritablePeriod, Object obj, Chronology chronology) {
        readWritablePeriod.setPeriod((Period) null);
    }

    @Override // org.joda.time.convert.IntervalConverter
    public void setInto(ReadWritableInterval readWritableInterval, Object obj, Chronology chronology) {
        readWritableInterval.setChronology(chronology);
        long jCurrentTimeMillis = DateTimeUtils.currentTimeMillis();
        readWritableInterval.setInterval(jCurrentTimeMillis, jCurrentTimeMillis);
    }

    @Override // org.joda.time.convert.Converter
    public Class<?> getSupportedType() {
        return null;
    }
}
