package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.ImpreciseDateTimeField;

/* JADX INFO: loaded from: classes3.dex */
class BasicMonthOfYearDateTimeField extends ImpreciseDateTimeField {
    private static final int MIN = 1;
    private static final long serialVersionUID = -8258715387168736L;
    private final BasicChronology iChronology;
    private final int iLeapMonth;
    private final int iMax;

    BasicMonthOfYearDateTimeField(BasicChronology basicChronology, int i) {
        super(DateTimeFieldType.monthOfYear(), basicChronology.getAverageMillisPerMonth());
        this.iChronology = basicChronology;
        this.iMax = this.iChronology.getMaxMonth();
        this.iLeapMonth = i;
    }

    @Override // org.joda.time.DateTimeField
    public boolean isLenient() {
        return false;
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.iChronology.getMonthOfYear(j);
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, int i) {
        int i2;
        int i3;
        int i4;
        if (i != 0) {
            long millisOfDay = this.iChronology.getMillisOfDay(j);
            int year = this.iChronology.getYear(j);
            int monthOfYear = this.iChronology.getMonthOfYear(j, year);
            int i5 = (monthOfYear - 1) + i;
            if (monthOfYear <= 0 || i5 >= 0) {
                i2 = year;
            } else {
                i2 = year + 1;
                i5 = (i - this.iMax) + (monthOfYear - 1);
            }
            if (i5 >= 0) {
                i3 = i2 + (i5 / this.iMax);
                i4 = (i5 % this.iMax) + 1;
            } else {
                i3 = (i2 + (i5 / this.iMax)) - 1;
                int iAbs = Math.abs(i5) % this.iMax;
                if (iAbs == 0) {
                    iAbs = this.iMax;
                }
                i4 = (this.iMax - iAbs) + 1;
                if (i4 == 1) {
                    i3++;
                }
            }
            int dayOfMonth = this.iChronology.getDayOfMonth(j, year, monthOfYear);
            int daysInYearMonth = this.iChronology.getDaysInYearMonth(i3, i4);
            if (dayOfMonth <= daysInYearMonth) {
                daysInYearMonth = dayOfMonth;
            }
            return this.iChronology.getYearMonthDayMillis(i3, i4, daysInYearMonth) + millisOfDay;
        }
        return j;
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, long j2) {
        long j3;
        long j4;
        int i = (int) j2;
        if (i == j2) {
            return add(j, i);
        }
        long millisOfDay = this.iChronology.getMillisOfDay(j);
        int year = this.iChronology.getYear(j);
        int monthOfYear = this.iChronology.getMonthOfYear(j, year);
        long j5 = ((long) (monthOfYear - 1)) + j2;
        if (j5 >= 0) {
            j3 = ((long) year) + (j5 / ((long) this.iMax));
            j4 = (j5 % ((long) this.iMax)) + 1;
        } else {
            j3 = (((long) year) + (j5 / ((long) this.iMax))) - 1;
            int iAbs = (int) (Math.abs(j5) % ((long) this.iMax));
            if (iAbs == 0) {
                iAbs = this.iMax;
            }
            j4 = (this.iMax - iAbs) + 1;
            if (j4 == 1) {
                j3++;
            }
        }
        if (j3 < this.iChronology.getMinYear() || j3 > this.iChronology.getMaxYear()) {
            throw new IllegalArgumentException("Magnitude of add amount is too large: " + j2);
        }
        int i2 = (int) j3;
        int i3 = (int) j4;
        int dayOfMonth = this.iChronology.getDayOfMonth(j, year, monthOfYear);
        int daysInYearMonth = this.iChronology.getDaysInYearMonth(i2, i3);
        if (dayOfMonth <= daysInYearMonth) {
            daysInYearMonth = dayOfMonth;
        }
        return this.iChronology.getYearMonthDayMillis(i2, i3, daysInYearMonth) + millisOfDay;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int[] add(ReadablePartial readablePartial, int i, int[] iArr, int i2) {
        if (i2 != 0) {
            if (readablePartial.size() > 0 && readablePartial.getFieldType(0).equals(DateTimeFieldType.monthOfYear()) && i == 0) {
                return set(readablePartial, 0, iArr, ((((iArr[0] - 1) + (i2 % 12)) + 12) % 12) + 1);
            }
            if (DateTimeUtils.isContiguous(readablePartial)) {
                long j = 0;
                int size = readablePartial.size();
                for (int i3 = 0; i3 < size; i3++) {
                    j = readablePartial.getFieldType(i3).getField(this.iChronology).set(j, iArr[i3]);
                }
                return this.iChronology.get(readablePartial, add(j, i2));
            }
            return super.add(readablePartial, i, iArr, i2);
        }
        return iArr;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long addWrapField(long j, int i) {
        return set(j, FieldUtils.getWrappedValue(get(j), i, 1, this.iMax));
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long getDifferenceAsLong(long j, long j2) {
        if (j < j2) {
            return -getDifference(j2, j);
        }
        int year = this.iChronology.getYear(j);
        int monthOfYear = this.iChronology.getMonthOfYear(j, year);
        int year2 = this.iChronology.getYear(j2);
        int monthOfYear2 = this.iChronology.getMonthOfYear(j2, year2);
        long j3 = ((((long) (year - year2)) * ((long) this.iMax)) + ((long) monthOfYear)) - ((long) monthOfYear2);
        int dayOfMonth = this.iChronology.getDayOfMonth(j, year, monthOfYear);
        if (dayOfMonth == this.iChronology.getDaysInYearMonth(year, monthOfYear) && this.iChronology.getDayOfMonth(j2, year2, monthOfYear2) > dayOfMonth) {
            j2 = this.iChronology.dayOfMonth().set(j2, dayOfMonth);
        }
        if (j - this.iChronology.getYearMonthMillis(year, monthOfYear) < j2 - this.iChronology.getYearMonthMillis(year2, monthOfYear2)) {
            return j3 - 1;
        }
        return j3;
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.verifyValueBounds(this, i, 1, this.iMax);
        int year = this.iChronology.getYear(j);
        int dayOfMonth = this.iChronology.getDayOfMonth(j, year);
        int daysInYearMonth = this.iChronology.getDaysInYearMonth(year, i);
        if (dayOfMonth <= daysInYearMonth) {
            daysInYearMonth = dayOfMonth;
        }
        return this.iChronology.getYearMonthDayMillis(year, i, daysInYearMonth) + ((long) this.iChronology.getMillisOfDay(j));
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.iChronology.years();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public boolean isLeap(long j) {
        int year = this.iChronology.getYear(j);
        return this.iChronology.isLeapYear(year) && this.iChronology.getMonthOfYear(j, year) == this.iLeapMonth;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getLeapAmount(long j) {
        return isLeap(j) ? 1 : 0;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getLeapDurationField() {
        return this.iChronology.days();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.iMax;
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundFloor(long j) {
        int year = this.iChronology.getYear(j);
        return this.iChronology.getYearMonthMillis(year, this.iChronology.getMonthOfYear(j, year));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long remainder(long j) {
        return j - roundFloor(j);
    }

    private Object readResolve() {
        return this.iChronology.monthOfYear();
    }
}
