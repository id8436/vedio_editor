package org.mortbay.util.ajax;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.mortbay.log.Log;
import org.mortbay.util.DateCache;
import org.mortbay.util.ajax.JSON;

/* JADX INFO: loaded from: classes3.dex */
public class JSONDateConvertor implements JSON.Convertor {
    DateCache _dateCache;
    SimpleDateFormat _format;
    private boolean _fromJSON;

    public JSONDateConvertor() {
        this(false);
    }

    public JSONDateConvertor(boolean z) {
        this(DateCache.DEFAULT_FORMAT, TimeZone.getTimeZone("GMT"), z);
    }

    public JSONDateConvertor(String str, TimeZone timeZone, boolean z) {
        this._dateCache = new DateCache(str);
        this._dateCache.setTimeZone(timeZone);
        this._fromJSON = z;
        this._format = new SimpleDateFormat(str);
        this._format.setTimeZone(timeZone);
    }

    public JSONDateConvertor(String str, TimeZone timeZone, boolean z, Locale locale) {
        this._dateCache = new DateCache(str, locale);
        this._dateCache.setTimeZone(timeZone);
        this._fromJSON = z;
        this._format = new SimpleDateFormat(str, new DateFormatSymbols(locale));
        this._format.setTimeZone(timeZone);
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        Object object;
        if (!this._fromJSON) {
            throw new UnsupportedOperationException();
        }
        try {
            synchronized (this._format) {
                object = this._format.parseObject((String) map.get("value"));
            }
            return object;
        } catch (Exception e2) {
            Log.warn(e2);
            return null;
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        String str = this._dateCache.format((Date) obj);
        if (this._fromJSON) {
            output.addClass(obj.getClass());
            output.add("value", str);
        } else {
            output.add(str);
        }
    }
}
