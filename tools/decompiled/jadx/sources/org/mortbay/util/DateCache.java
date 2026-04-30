package org.mortbay.util;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public class DateCache {
    public static String DEFAULT_FORMAT = "EEE MMM dd HH:mm:ss zzz yyyy";
    private static long __hitWindow = 3600;
    private DateFormatSymbols _dfs;
    private String _formatString;
    private long _lastMinutes;
    private int _lastMs;
    private String _lastResult;
    private long _lastSeconds;
    private Locale _locale;
    private SimpleDateFormat _minFormat;
    private String _minFormatString;
    private String _secFormatString;
    private String _secFormatString0;
    private String _secFormatString1;
    private SimpleDateFormat _tzFormat;
    private String _tzFormatString;

    public DateCache() {
        this(DEFAULT_FORMAT);
        getFormat().setTimeZone(TimeZone.getDefault());
    }

    public DateCache(String str) {
        this._lastMinutes = -1L;
        this._lastSeconds = -1L;
        this._lastMs = -1;
        this._lastResult = null;
        this._locale = null;
        this._dfs = null;
        this._formatString = str;
        setTimeZone(TimeZone.getDefault());
    }

    public DateCache(String str, Locale locale) {
        this._lastMinutes = -1L;
        this._lastSeconds = -1L;
        this._lastMs = -1;
        this._lastResult = null;
        this._locale = null;
        this._dfs = null;
        this._formatString = str;
        this._locale = locale;
        setTimeZone(TimeZone.getDefault());
    }

    public DateCache(String str, DateFormatSymbols dateFormatSymbols) {
        this._lastMinutes = -1L;
        this._lastSeconds = -1L;
        this._lastMs = -1;
        this._lastResult = null;
        this._locale = null;
        this._dfs = null;
        this._formatString = str;
        this._dfs = dateFormatSymbols;
        setTimeZone(TimeZone.getDefault());
    }

    public void setTimeZone(TimeZone timeZone) {
        setTzFormatString(timeZone);
        if (this._locale != null) {
            this._tzFormat = new SimpleDateFormat(this._tzFormatString, this._locale);
            this._minFormat = new SimpleDateFormat(this._minFormatString, this._locale);
        } else if (this._dfs != null) {
            this._tzFormat = new SimpleDateFormat(this._tzFormatString, this._dfs);
            this._minFormat = new SimpleDateFormat(this._minFormatString, this._dfs);
        } else {
            this._tzFormat = new SimpleDateFormat(this._tzFormatString);
            this._minFormat = new SimpleDateFormat(this._minFormatString);
        }
        this._tzFormat.setTimeZone(timeZone);
        this._minFormat.setTimeZone(timeZone);
        this._lastSeconds = -1L;
        this._lastMinutes = -1L;
    }

    public TimeZone getTimeZone() {
        return this._tzFormat.getTimeZone();
    }

    public void setTimeZoneID(String str) {
        setTimeZone(TimeZone.getTimeZone(str));
    }

    private void setTzFormatString(TimeZone timeZone) {
        int iIndexOf = this._formatString.indexOf("ZZZ");
        if (iIndexOf >= 0) {
            String strSubstring = this._formatString.substring(0, iIndexOf);
            String strSubstring2 = this._formatString.substring(iIndexOf + 3);
            int rawOffset = timeZone.getRawOffset();
            StringBuffer stringBuffer = new StringBuffer(this._formatString.length() + 10);
            stringBuffer.append(strSubstring);
            stringBuffer.append("'");
            if (rawOffset >= 0) {
                stringBuffer.append('+');
            } else {
                rawOffset = -rawOffset;
                stringBuffer.append('-');
            }
            int i = rawOffset / 60000;
            int i2 = i / 60;
            int i3 = i % 60;
            if (i2 < 10) {
                stringBuffer.append('0');
            }
            stringBuffer.append(i2);
            if (i3 < 10) {
                stringBuffer.append('0');
            }
            stringBuffer.append(i3);
            stringBuffer.append('\'');
            stringBuffer.append(strSubstring2);
            this._tzFormatString = stringBuffer.toString();
        } else {
            this._tzFormatString = this._formatString;
        }
        setMinFormatString();
    }

    private void setMinFormatString() {
        if (this._tzFormatString.indexOf("ss.SSS") >= 0) {
            throw new IllegalStateException("ms not supported");
        }
        int iIndexOf = this._tzFormatString.indexOf("ss");
        String strSubstring = this._tzFormatString.substring(0, iIndexOf);
        this._minFormatString = new StringBuffer().append(strSubstring).append("'ss'").append(this._tzFormatString.substring(iIndexOf + 2)).toString();
    }

    public synchronized String format(Date date) {
        return format(date.getTime());
    }

    public synchronized String format(long j) {
        String str;
        long j2 = j / 1000;
        if (j2 < this._lastSeconds || (this._lastSeconds > 0 && j2 > this._lastSeconds + __hitWindow)) {
            str = this._tzFormat.format(new Date(j));
        } else if (this._lastSeconds == j2) {
            str = this._lastResult;
        } else {
            Date date = new Date(j);
            long j3 = j2 / 60;
            if (this._lastMinutes != j3) {
                this._lastMinutes = j3;
                this._secFormatString = this._minFormat.format(date);
                int iIndexOf = this._secFormatString.indexOf("ss");
                this._secFormatString0 = this._secFormatString.substring(0, iIndexOf);
                this._secFormatString1 = this._secFormatString.substring(iIndexOf + 2);
            }
            this._lastSeconds = j2;
            StringBuffer stringBuffer = new StringBuffer(this._secFormatString.length());
            synchronized (stringBuffer) {
                stringBuffer.append(this._secFormatString0);
                int i = (int) (j2 % 60);
                if (i < 10) {
                    stringBuffer.append('0');
                }
                stringBuffer.append(i);
                stringBuffer.append(this._secFormatString1);
                this._lastResult = stringBuffer.toString();
            }
            str = this._lastResult;
        }
        return str;
    }

    public void format(long j, StringBuffer stringBuffer) {
        stringBuffer.append(format(j));
    }

    public SimpleDateFormat getFormat() {
        return this._minFormat;
    }

    public String getFormatString() {
        return this._formatString;
    }

    public String now() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this._lastMs = (int) (jCurrentTimeMillis % 1000);
        return format(jCurrentTimeMillis);
    }

    public int lastMs() {
        return this._lastMs;
    }
}
