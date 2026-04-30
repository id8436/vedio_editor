package org.mortbay.jetty;

import com.google.gdata.data.analytics.Engagement;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import javax.servlet.http.Cookie;
import org.apache.http.client.utils.DateUtils;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.io.BufferDateCache;
import org.mortbay.io.BufferUtil;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.View;
import org.mortbay.util.LazyList;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.StringMap;
import org.mortbay.util.StringUtil;
import org.solovyev.android.views.llm.BuildConfig;

/* JADX INFO: loaded from: classes3.dex */
public class HttpFields {
    public static final String __01Jan1970;
    public static final Buffer __01Jan1970_BUFFER;
    private static SimpleDateFormat[] __dateReceive = null;
    private static Float __one = null;
    private static StringMap __qualities = null;
    public static final String __separators = ", \t";
    private static Float __zero;
    private Calendar _calendar;
    private StringBuffer _dateBuffer;
    protected int _revision;
    private static String[] DAYS = {"Sat", "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
    private static String[] MONTHS = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan"};
    private static TimeZone __GMT = TimeZone.getTimeZone("GMT");
    public static final BufferDateCache __dateCache = new BufferDateCache("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    private static final String[] __dateReceiveFmt = {DateUtils.PATTERN_RFC1123, "EEE, dd-MMM-yy HH:mm:ss", "EEE MMM dd HH:mm:ss yyyy", "EEE, dd MMM yyyy HH:mm:ss", "EEE dd MMM yyyy HH:mm:ss zzz", "EEE dd MMM yyyy HH:mm:ss", "EEE MMM dd yyyy HH:mm:ss zzz", "EEE MMM dd yyyy HH:mm:ss", "EEE MMM-dd-yyyy HH:mm:ss zzz", "EEE MMM-dd-yyyy HH:mm:ss", "dd MMM yyyy HH:mm:ss zzz", "dd MMM yyyy HH:mm:ss", "dd-MMM-yy HH:mm:ss zzz", "dd-MMM-yy HH:mm:ss", "MMM dd HH:mm:ss yyyy zzz", "MMM dd HH:mm:ss yyyy", "EEE MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy", DateUtils.PATTERN_RFC1036, "EEE dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss"};
    private static int __dateReceiveInit = 3;
    protected ArrayList _fields = new ArrayList(20);
    protected HashMap _bufferMap = new HashMap(32);
    protected SimpleDateFormat[] _dateReceive = new SimpleDateFormat[__dateReceive.length];

    static {
        __GMT.setID("GMT");
        __dateCache.setTimeZone(__GMT);
        __dateReceive = new SimpleDateFormat[__dateReceiveFmt.length];
        for (int i = 0; i < __dateReceiveInit; i++) {
            __dateReceive[i] = new SimpleDateFormat(__dateReceiveFmt[i], Locale.US);
            __dateReceive[i].setTimeZone(__GMT);
        }
        __01Jan1970 = formatDate(0L, true).trim();
        __01Jan1970_BUFFER = new ByteArrayBuffer(__01Jan1970);
        __one = new Float("1.0");
        __zero = new Float("0.0");
        __qualities = new StringMap();
        __qualities.put((String) null, (Object) __one);
        __qualities.put("1.0", (Object) __one);
        __qualities.put("1", (Object) __one);
        __qualities.put("0.9", (Object) new Float("0.9"));
        __qualities.put("0.8", (Object) new Float("0.8"));
        __qualities.put("0.7", (Object) new Float("0.7"));
        __qualities.put("0.66", (Object) new Float("0.66"));
        __qualities.put("0.6", (Object) new Float("0.6"));
        __qualities.put("0.5", (Object) new Float("0.5"));
        __qualities.put(BuildConfig.VERSION_NAME, (Object) new Float(BuildConfig.VERSION_NAME));
        __qualities.put("0.33", (Object) new Float("0.33"));
        __qualities.put("0.3", (Object) new Float("0.3"));
        __qualities.put("0.2", (Object) new Float("0.2"));
        __qualities.put("0.1", (Object) new Float("0.1"));
        __qualities.put("0", (Object) __zero);
        __qualities.put("0.0", (Object) __zero);
    }

    public static String formatDate(long j, boolean z) {
        StringBuffer stringBuffer = new StringBuffer(32);
        GregorianCalendar gregorianCalendar = new GregorianCalendar(__GMT);
        gregorianCalendar.setTimeInMillis(j);
        formatDate(stringBuffer, gregorianCalendar, z);
        return stringBuffer.toString();
    }

    public static String formatDate(Calendar calendar, boolean z) {
        StringBuffer stringBuffer = new StringBuffer(32);
        formatDate(stringBuffer, calendar, z);
        return stringBuffer.toString();
    }

    public static String formatDate(StringBuffer stringBuffer, long j, boolean z) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(__GMT);
        gregorianCalendar.setTimeInMillis(j);
        formatDate(stringBuffer, gregorianCalendar, z);
        return stringBuffer.toString();
    }

    public static void formatDate(StringBuffer stringBuffer, Calendar calendar, boolean z) {
        int i = calendar.get(7);
        int i2 = calendar.get(5);
        int i3 = calendar.get(2);
        int i4 = calendar.get(1);
        int i5 = i4 / 100;
        int i6 = i4 % 100;
        int timeInMillis = (int) ((calendar.getTimeInMillis() / 1000) % 86400);
        int i7 = timeInMillis % 60;
        int i8 = timeInMillis / 60;
        int i9 = i8 % 60;
        int i10 = i8 / 60;
        stringBuffer.append(DAYS[i]);
        stringBuffer.append(',');
        stringBuffer.append(' ');
        StringUtil.append2digits(stringBuffer, i2);
        if (z) {
            stringBuffer.append('-');
            stringBuffer.append(MONTHS[i3]);
            stringBuffer.append('-');
            StringUtil.append2digits(stringBuffer, i5);
            StringUtil.append2digits(stringBuffer, i6);
        } else {
            stringBuffer.append(' ');
            stringBuffer.append(MONTHS[i3]);
            stringBuffer.append(' ');
            StringUtil.append2digits(stringBuffer, i5);
            StringUtil.append2digits(stringBuffer, i6);
        }
        stringBuffer.append(' ');
        StringUtil.append2digits(stringBuffer, i10);
        stringBuffer.append(':');
        StringUtil.append2digits(stringBuffer, i9);
        stringBuffer.append(':');
        StringUtil.append2digits(stringBuffer, i7);
        stringBuffer.append(" GMT");
    }

    public Enumeration getFieldNames() {
        return new Enumeration(this, this._revision) { // from class: org.mortbay.jetty.HttpFields.1
            private final HttpFields this$0;
            private final int val$revision;
            int i = 0;
            Field field = null;

            {
                this.this$0 = this;
                this.val$revision = i;
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                if (this.field != null) {
                    return true;
                }
                while (this.i < this.this$0._fields.size()) {
                    ArrayList arrayList = this.this$0._fields;
                    int i = this.i;
                    this.i = i + 1;
                    Field field = (Field) arrayList.get(i);
                    if (field != null && field._prev == null && field._revision == this.val$revision) {
                        this.field = field;
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.Enumeration
            public Object nextElement() throws NoSuchElementException {
                if (this.field == null && !hasMoreElements()) {
                    throw new NoSuchElementException();
                }
                String str = BufferUtil.to8859_1_String(this.field._name);
                this.field = null;
                return str;
            }
        };
    }

    public Iterator getFields() {
        return new Iterator(this, this._revision) { // from class: org.mortbay.jetty.HttpFields.2
            private final HttpFields this$0;
            private final int val$revision;
            int i = 0;
            Field field = null;

            {
                this.this$0 = this;
                this.val$revision = i;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.field != null) {
                    return true;
                }
                while (this.i < this.this$0._fields.size()) {
                    ArrayList arrayList = this.this$0._fields;
                    int i = this.i;
                    this.i = i + 1;
                    Field field = (Field) arrayList.get(i);
                    if (field != null && field._revision == this.val$revision) {
                        this.field = field;
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                if (this.field != null || hasNext()) {
                    Field field = this.field;
                    this.field = null;
                    return field;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    private Field getField(String str) {
        return (Field) this._bufferMap.get(HttpHeaders.CACHE.lookup(str));
    }

    private Field getField(Buffer buffer) {
        return (Field) this._bufferMap.get(buffer);
    }

    public boolean containsKey(Buffer buffer) {
        Field field = getField(buffer);
        return field != null && field._revision == this._revision;
    }

    public boolean containsKey(String str) {
        Field field = getField(str);
        return field != null && field._revision == this._revision;
    }

    public String getStringField(String str) {
        Field field = getField(str);
        if (field == null || field._revision != this._revision) {
            return null;
        }
        return field.getValue();
    }

    public String getStringField(Buffer buffer) {
        Field field = getField(buffer);
        if (field == null || field._revision != this._revision) {
            return null;
        }
        return BufferUtil.to8859_1_String(field._value);
    }

    public Buffer get(Buffer buffer) {
        Field field = getField(buffer);
        if (field == null || field._revision != this._revision) {
            return null;
        }
        return field._value;
    }

    public Enumeration getValues(String str) {
        Field field = getField(str);
        if (field == null) {
            return null;
        }
        return new Enumeration(this, field, this._revision) { // from class: org.mortbay.jetty.HttpFields.3

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            Field f4917f;
            private final HttpFields this$0;
            private final Field val$field;
            private final int val$revision;

            {
                this.this$0 = this;
                this.val$field = field;
                this.val$revision = i;
                this.f4917f = this.val$field;
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                while (this.f4917f != null && this.f4917f._revision != this.val$revision) {
                    this.f4917f = this.f4917f._next;
                }
                return this.f4917f != null;
            }

            @Override // java.util.Enumeration
            public Object nextElement() throws NoSuchElementException {
                if (this.f4917f == null) {
                    throw new NoSuchElementException();
                }
                Field field2 = this.f4917f;
                do {
                    this.f4917f = this.f4917f._next;
                    if (this.f4917f == null) {
                        break;
                    }
                } while (this.f4917f._revision != this.val$revision);
                return field2.getValue();
            }
        };
    }

    public Enumeration getValues(Buffer buffer) {
        Field field = getField(buffer);
        if (field == null) {
            return null;
        }
        return new Enumeration(this, field, this._revision) { // from class: org.mortbay.jetty.HttpFields.4

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            Field f4918f;
            private final HttpFields this$0;
            private final Field val$field;
            private final int val$revision;

            {
                this.this$0 = this;
                this.val$field = field;
                this.val$revision = i;
                this.f4918f = this.val$field;
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                while (this.f4918f != null && this.f4918f._revision != this.val$revision) {
                    this.f4918f = this.f4918f._next;
                }
                return this.f4918f != null;
            }

            @Override // java.util.Enumeration
            public Object nextElement() throws NoSuchElementException {
                if (this.f4918f == null) {
                    throw new NoSuchElementException();
                }
                Field field2 = this.f4918f;
                this.f4918f = this.f4918f._next;
                while (this.f4918f != null && this.f4918f._revision != this.val$revision) {
                    this.f4918f = this.f4918f._next;
                }
                return field2.getValue();
            }
        };
    }

    public Enumeration getValues(String str, String str2) {
        Enumeration values = getValues(str);
        if (values == null) {
            return null;
        }
        return new Enumeration(this, values, str2) { // from class: org.mortbay.jetty.HttpFields.5
            private final HttpFields this$0;
            QuotedStringTokenizer tok = null;
            private final Enumeration val$e;
            private final String val$separators;

            {
                this.this$0 = this;
                this.val$e = values;
                this.val$separators = str2;
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                if (this.tok != null && this.tok.hasMoreElements()) {
                    return true;
                }
                while (this.val$e.hasMoreElements()) {
                    this.tok = new QuotedStringTokenizer((String) this.val$e.nextElement(), this.val$separators, false, false);
                    if (this.tok.hasMoreElements()) {
                        return true;
                    }
                }
                this.tok = null;
                return false;
            }

            @Override // java.util.Enumeration
            public Object nextElement() throws NoSuchElementException {
                if (!hasMoreElements()) {
                    throw new NoSuchElementException();
                }
                String str3 = (String) this.tok.nextElement();
                return str3 != null ? str3.trim() : str3;
            }
        };
    }

    public void put(String str, String str2) {
        Buffer bufferLookup = HttpHeaders.CACHE.lookup(str);
        Buffer bufferLookup2 = null;
        if (str2 != null) {
            bufferLookup2 = HttpHeaderValues.CACHE.lookup(str2);
        }
        put(bufferLookup, bufferLookup2, -1L);
    }

    public void put(Buffer buffer, String str) {
        put(buffer, HttpHeaderValues.CACHE.lookup(str), -1L);
    }

    public void put(Buffer buffer, Buffer buffer2) {
        put(buffer, buffer2, -1L);
    }

    public void put(Buffer buffer, Buffer buffer2, long j) {
        if (buffer2 == null) {
            remove(buffer);
            return;
        }
        Buffer bufferLookup = !(buffer instanceof BufferCache.CachedBuffer) ? HttpHeaders.CACHE.lookup(buffer) : buffer;
        Field field = (Field) this._bufferMap.get(bufferLookup);
        if (field == null) {
            Field field2 = new Field(bufferLookup, buffer2, j, this._revision, null);
            this._fields.add(field2);
            this._bufferMap.put(field2.getNameBuffer(), field2);
        } else {
            field.reset(buffer2, j, this._revision);
            for (Field field3 = field._next; field3 != null; field3 = field3._next) {
                field3.clear();
            }
        }
    }

    public void put(String str, List list) {
        if (list == null || list.size() == 0) {
            remove(str);
            return;
        }
        Buffer bufferLookup = HttpHeaders.CACHE.lookup(str);
        Object obj = list.get(0);
        if (obj != null) {
            put(bufferLookup, HttpHeaderValues.CACHE.lookup(obj.toString()));
        } else {
            remove(bufferLookup);
        }
        if (list.size() > 1) {
            Iterator it = list.iterator();
            it.next();
            while (it.hasNext()) {
                Object next = it.next();
                if (next != null) {
                    put(bufferLookup, HttpHeaderValues.CACHE.lookup(next.toString()));
                }
            }
        }
    }

    public void add(String str, String str2) throws IllegalArgumentException {
        add(HttpHeaders.CACHE.lookup(str), HttpHeaderValues.CACHE.lookup(str2), -1L);
    }

    public void add(Buffer buffer, Buffer buffer2) throws IllegalArgumentException {
        add(buffer, buffer2, -1L);
    }

    private void add(Buffer buffer, Buffer buffer2, long j) throws IllegalArgumentException {
        Field field;
        Field field2;
        if (buffer2 == null) {
            throw new IllegalArgumentException("null value");
        }
        Buffer bufferLookup = !(buffer instanceof BufferCache.CachedBuffer) ? HttpHeaders.CACHE.lookup(buffer) : buffer;
        Field field3 = (Field) this._bufferMap.get(bufferLookup);
        if (field3 != null) {
            field = field3;
            field2 = null;
            while (field != null && field._revision == this._revision) {
                Field field4 = field;
                field = field._next;
                field2 = field4;
            }
        } else {
            field = field3;
            field2 = null;
        }
        if (field == null) {
            Field field5 = new Field(bufferLookup, buffer2, j, this._revision, null);
            if (field2 == null) {
                this._bufferMap.put(field5.getNameBuffer(), field5);
            } else {
                field5._prev = field2;
                field2._next = field5;
            }
            this._fields.add(field5);
            return;
        }
        field.reset(buffer2, j, this._revision);
    }

    public void remove(String str) {
        remove(HttpHeaders.CACHE.lookup(str));
    }

    public void remove(Buffer buffer) {
        Field field = (Field) this._bufferMap.get(buffer);
        if (field != null) {
            while (field != null) {
                field.clear();
                field = field._next;
            }
        }
    }

    public long getLongField(String str) throws NumberFormatException {
        Field field = getField(str);
        if (field == null || field._revision != this._revision) {
            return -1L;
        }
        return field.getLongValue();
    }

    public long getLongField(Buffer buffer) throws NumberFormatException {
        Field field = getField(buffer);
        if (field == null || field._revision != this._revision) {
            return -1L;
        }
        return field.getLongValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f1, code lost:
    
        if (r1.endsWith(" GMT") == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f3, code lost:
    
        r1 = r1.substring(0, r1.length() - 4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getDateField(java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpFields.getDateField(java.lang.String):long");
    }

    public void putLongField(Buffer buffer, long j) {
        put(buffer, BufferUtil.toBuffer(j), j);
    }

    public void putLongField(String str, long j) {
        put(HttpHeaders.CACHE.lookup(str), BufferUtil.toBuffer(j), j);
    }

    public void addLongField(String str, long j) {
        add(HttpHeaders.CACHE.lookup(str), BufferUtil.toBuffer(j), j);
    }

    public void addLongField(Buffer buffer, long j) {
        add(buffer, BufferUtil.toBuffer(j), j);
    }

    public void putDateField(Buffer buffer, long j) {
        if (this._dateBuffer == null) {
            this._dateBuffer = new StringBuffer(32);
            this._calendar = new GregorianCalendar(__GMT);
        }
        this._dateBuffer.setLength(0);
        this._calendar.setTimeInMillis(j);
        formatDate(this._dateBuffer, this._calendar, false);
        put(buffer, new ByteArrayBuffer(this._dateBuffer.toString()), j);
    }

    public void putDateField(String str, long j) {
        putDateField(HttpHeaders.CACHE.lookup(str), j);
    }

    public void addDateField(String str, long j) {
        if (this._dateBuffer == null) {
            this._dateBuffer = new StringBuffer(32);
            this._calendar = new GregorianCalendar(__GMT);
        }
        this._dateBuffer.setLength(0);
        this._calendar.setTimeInMillis(j);
        formatDate(this._dateBuffer, this._calendar, false);
        add(HttpHeaders.CACHE.lookup(str), new ByteArrayBuffer(this._dateBuffer.toString()), j);
    }

    public void addSetCookie(Cookie cookie) {
        String string;
        String name = cookie.getName();
        String value = cookie.getValue();
        int version = cookie.getVersion();
        if (name == null || name.length() == 0) {
            throw new IllegalArgumentException("Bad cookie name");
        }
        StringBuffer stringBuffer = new StringBuffer(128);
        synchronized (stringBuffer) {
            QuotedStringTokenizer.quoteIfNeeded(stringBuffer, name);
            stringBuffer.append('=');
            if (value != null && value.length() > 0) {
                QuotedStringTokenizer.quoteIfNeeded(stringBuffer, value);
            }
            if (version > 0) {
                stringBuffer.append(";Version=");
                stringBuffer.append(version);
                String comment = cookie.getComment();
                if (comment != null && comment.length() > 0) {
                    stringBuffer.append(";Comment=");
                    QuotedStringTokenizer.quoteIfNeeded(stringBuffer, comment);
                }
            }
            String path = cookie.getPath();
            if (path != null && path.length() > 0) {
                stringBuffer.append(";Path=");
                if (path.startsWith("\"")) {
                    stringBuffer.append(path);
                } else {
                    QuotedStringTokenizer.quoteIfNeeded(stringBuffer, path);
                }
            }
            String domain = cookie.getDomain();
            if (domain != null && domain.length() > 0) {
                stringBuffer.append(";Domain=");
                QuotedStringTokenizer.quoteIfNeeded(stringBuffer, domain.toLowerCase());
            }
            long maxAge = cookie.getMaxAge();
            if (maxAge >= 0) {
                if (version == 0) {
                    stringBuffer.append(";Expires=");
                    if (maxAge == 0) {
                        stringBuffer.append(__01Jan1970);
                    } else {
                        formatDate(stringBuffer, (maxAge * 1000) + System.currentTimeMillis(), true);
                    }
                } else {
                    stringBuffer.append(";Max-Age=");
                    stringBuffer.append(maxAge);
                }
            } else if (version > 0) {
                stringBuffer.append(";Discard");
            }
            if (cookie.getSecure()) {
                stringBuffer.append(";Secure");
            }
            if (cookie instanceof HttpOnlyCookie) {
                stringBuffer.append(";HttpOnly");
            }
            string = stringBuffer.toString();
        }
        put(HttpHeaders.EXPIRES_BUFFER, __01Jan1970_BUFFER);
        add(HttpHeaders.SET_COOKIE_BUFFER, new ByteArrayBuffer(string));
    }

    public void put(Buffer buffer) throws IOException {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this._fields.size()) {
                Field field = (Field) this._fields.get(i2);
                if (field != null && field._revision == this._revision) {
                    field.put(buffer);
                }
                i = i2 + 1;
            } else {
                BufferUtil.putCRLF(buffer);
                return;
            }
        }
    }

    public String toString() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < this._fields.size(); i++) {
                Field field = (Field) this._fields.get(i);
                if (field != null && field._revision == this._revision) {
                    String name = field.getName();
                    if (name != null) {
                        stringBuffer.append(name);
                    }
                    stringBuffer.append(": ");
                    String value = field.getValue();
                    if (value != null) {
                        stringBuffer.append(value);
                    }
                    stringBuffer.append("\r\n");
                }
            }
            stringBuffer.append("\r\n");
            return stringBuffer.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void clear() {
        this._revision++;
        if (this._revision > 1000000) {
            this._revision = 0;
            int size = this._fields.size();
            while (true) {
                int i = size - 1;
                if (size > 0) {
                    Field field = (Field) this._fields.get(i);
                    if (field != null) {
                        field.clear();
                    }
                    size = i;
                } else {
                    return;
                }
            }
        }
    }

    public void destroy() {
        if (this._fields != null) {
            int size = this._fields.size();
            while (true) {
                int i = size - 1;
                if (size <= 0) {
                    break;
                }
                Field field = (Field) this._fields.get(i);
                if (field != null) {
                    this._bufferMap.remove(field.getNameBuffer());
                    field.destroy();
                }
                size = i;
            }
        }
        this._fields = null;
        this._dateBuffer = null;
        this._calendar = null;
        this._dateReceive = null;
    }

    public void add(HttpFields httpFields) {
        if (httpFields != null) {
            Enumeration fieldNames = httpFields.getFieldNames();
            while (fieldNames.hasMoreElements()) {
                String str = (String) fieldNames.nextElement();
                Enumeration values = httpFields.getValues(str);
                while (values.hasMoreElements()) {
                    add(str, (String) values.nextElement());
                }
            }
        }
    }

    public static String valueParameters(String str, Map map) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            return str;
        }
        if (map == null) {
            return str.substring(0, iIndexOf).trim();
        }
        QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(str.substring(iIndexOf), ";", false, true);
        while (quotedStringTokenizer.hasMoreTokens()) {
            QuotedStringTokenizer quotedStringTokenizer2 = new QuotedStringTokenizer(quotedStringTokenizer.nextToken(), "= ");
            if (quotedStringTokenizer2.hasMoreTokens()) {
                map.put(quotedStringTokenizer2.nextToken(), quotedStringTokenizer2.hasMoreTokens() ? quotedStringTokenizer2.nextToken() : null);
            }
        }
        return str.substring(0, iIndexOf).trim();
    }

    public static Float getQuality(String str) {
        if (str == null) {
            return __zero;
        }
        int iIndexOf = str.indexOf(";");
        int i = iIndexOf + 1;
        if (iIndexOf < 0 || i == str.length()) {
            return __one;
        }
        int i2 = i + 1;
        if (str.charAt(i) == 'q') {
            int i3 = i2 + 1;
            Map.Entry entry = __qualities.getEntry(str, i3, str.length() - i3);
            if (entry != null) {
                return (Float) entry.getValue();
            }
        }
        HashMap map = new HashMap(3);
        valueParameters(str, map);
        String str2 = (String) map.get("q");
        Float f2 = (Float) __qualities.get(str2);
        if (f2 == null) {
            try {
                f2 = new Float(str2);
            } catch (Exception e2) {
                f2 = __one;
            }
        }
        return f2;
    }

    public static List qualityList(Enumeration enumeration) {
        Object objAdd = null;
        if (enumeration == null || !enumeration.hasMoreElements()) {
            return Collections.EMPTY_LIST;
        }
        Object objAdd2 = null;
        while (enumeration.hasMoreElements()) {
            String string = enumeration.nextElement().toString();
            Float quality = getQuality(string);
            if (quality.floatValue() >= 0.001d) {
                objAdd2 = LazyList.add(objAdd2, string);
                objAdd = LazyList.add(objAdd, quality);
            }
        }
        List list = LazyList.getList(objAdd2, false);
        if (list.size() < 2) {
            return list;
        }
        List list2 = LazyList.getList(objAdd, false);
        Float f2 = __zero;
        int size = list.size();
        Float f3 = f2;
        while (true) {
            int i = size - 1;
            if (size > 0) {
                Float f4 = (Float) list2.get(i);
                if (f3.compareTo(f4) > 0) {
                    Object obj = list.get(i);
                    list.set(i, list.get(i + 1));
                    list.set(i + 1, obj);
                    list2.set(i, list2.get(i + 1));
                    list2.set(i + 1, f4);
                    Float f5 = __zero;
                    size = list.size();
                    f3 = f5;
                } else {
                    f3 = f4;
                    size = i;
                }
            } else {
                list2.clear();
                return list;
            }
        }
    }

    public final class Field {
        private Buffer _name;
        private Field _next;
        private long _numValue;
        private Field _prev;
        private int _revision;
        private String _stringValue;
        private Buffer _value;

        Field(Buffer buffer, Buffer buffer2, long j, int i, AnonymousClass1 anonymousClass1) {
            this(buffer, buffer2, j, i);
        }

        private Field(Buffer buffer, Buffer buffer2, long j, int i) {
            this._name = buffer.asImmutableBuffer();
            this._value = buffer2.isImmutable() ? buffer2 : new View(buffer2);
            this._next = null;
            this._prev = null;
            this._revision = i;
            this._numValue = j;
            this._stringValue = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            this._revision = -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void destroy() {
            this._name = null;
            this._value = null;
            this._next = null;
            this._prev = null;
            this._stringValue = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reset(Buffer buffer, long j, int i) {
            this._revision = i;
            if (this._value == null) {
                if (!buffer.isImmutable()) {
                    buffer = new View(buffer);
                }
                this._value = buffer;
                this._numValue = j;
                this._stringValue = null;
                return;
            }
            if (buffer.isImmutable()) {
                this._value = buffer;
                this._numValue = j;
                this._stringValue = null;
                return;
            }
            if (this._value instanceof View) {
                ((View) this._value).update(buffer);
            } else {
                this._value = new View(buffer);
            }
            this._numValue = j;
            if (this._stringValue != null) {
                if (this._stringValue.length() != buffer.length()) {
                    this._stringValue = null;
                    return;
                }
                int length = buffer.length();
                while (true) {
                    int i2 = length - 1;
                    if (length > 0) {
                        if (buffer.peek(buffer.getIndex() + i2) != this._stringValue.charAt(i2)) {
                            this._stringValue = null;
                            return;
                        }
                        length = i2;
                    } else {
                        return;
                    }
                }
            }
        }

        public void put(Buffer buffer) throws IOException {
            if ((this._name instanceof BufferCache.CachedBuffer ? ((BufferCache.CachedBuffer) this._name).getOrdinal() : -1) >= 0) {
                buffer.put(this._name);
            } else {
                int index = this._name.getIndex();
                int iPutIndex = this._name.putIndex();
                while (index < iPutIndex) {
                    int i = index + 1;
                    byte bPeek = this._name.peek(index);
                    switch (bPeek) {
                        case 10:
                        case 13:
                        case 58:
                            index = i;
                            break;
                        default:
                            buffer.put(bPeek);
                            index = i;
                            break;
                    }
                }
            }
            buffer.put(HttpTokens.COLON);
            buffer.put((byte) 32);
            if ((this._value instanceof BufferCache.CachedBuffer ? ((BufferCache.CachedBuffer) this._value).getOrdinal() : -1) >= 0 || this._numValue >= 0) {
                buffer.put(this._value);
            } else {
                int index2 = this._value.getIndex();
                int iPutIndex2 = this._value.putIndex();
                while (index2 < iPutIndex2) {
                    int i2 = index2 + 1;
                    byte bPeek2 = this._value.peek(index2);
                    switch (bPeek2) {
                        case 10:
                        case 13:
                            index2 = i2;
                            break;
                        case 11:
                        case 12:
                        default:
                            buffer.put(bPeek2);
                            index2 = i2;
                            break;
                    }
                }
            }
            BufferUtil.putCRLF(buffer);
        }

        public String getName() {
            return BufferUtil.to8859_1_String(this._name);
        }

        Buffer getNameBuffer() {
            return this._name;
        }

        public int getNameOrdinal() {
            return HttpHeaders.CACHE.getOrdinal(this._name);
        }

        public String getValue() {
            if (this._stringValue == null) {
                this._stringValue = BufferUtil.to8859_1_String(this._value);
            }
            return this._stringValue;
        }

        public Buffer getValueBuffer() {
            return this._value;
        }

        public int getValueOrdinal() {
            return HttpHeaderValues.CACHE.getOrdinal(this._value);
        }

        public int getIntValue() {
            return (int) getLongValue();
        }

        public long getLongValue() {
            if (this._numValue == -1) {
                this._numValue = BufferUtil.toLong(this._value);
            }
            return this._numValue;
        }

        public String toString() {
            return new StringBuffer().append("[").append(this._prev == null ? "" : "<-").append(getName()).append(Engagement.Comparison.EQ).append(this._revision).append(Engagement.Comparison.EQ).append(this._value).append(this._next == null ? "" : "->").append("]").toString();
        }
    }
}
