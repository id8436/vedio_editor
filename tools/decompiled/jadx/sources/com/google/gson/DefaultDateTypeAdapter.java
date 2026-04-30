package com.google.gson;

import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class DefaultDateTypeAdapter extends TypeAdapter<Date> {
    private static final String SIMPLE_NAME = "DefaultDateTypeAdapter";
    private final Class<? extends Date> dateType;
    private final DateFormat enUsFormat;
    private final DateFormat localFormat;

    DefaultDateTypeAdapter(Class<? extends Date> cls) {
        this(cls, DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls, String str) {
        this(cls, new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls, int i) {
        this(cls, DateFormat.getDateInstance(i, Locale.US), DateFormat.getDateInstance(i));
    }

    public DefaultDateTypeAdapter(int i, int i2) {
        this((Class<? extends Date>) Date.class, DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    public DefaultDateTypeAdapter(Class<? extends Date> cls, int i, int i2) {
        this(cls, DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls, DateFormat dateFormat, DateFormat dateFormat2) {
        if (cls != Date.class && cls != java.sql.Date.class && cls != Timestamp.class) {
            throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
        }
        this.dateType = cls;
        this.enUsFormat = dateFormat;
        this.localFormat = dateFormat2;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this.localFormat) {
            jsonWriter.value(this.enUsFormat.format(date));
        }
    }

    @Override // com.google.gson.TypeAdapter
    public Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Date dateDeserializeToDate = deserializeToDate(jsonReader.nextString());
        if (this.dateType != Date.class) {
            if (this.dateType == Timestamp.class) {
                return new Timestamp(dateDeserializeToDate.getTime());
            }
            if (this.dateType == java.sql.Date.class) {
                return new java.sql.Date(dateDeserializeToDate.getTime());
            }
            throw new AssertionError();
        }
        return dateDeserializeToDate;
    }

    private Date deserializeToDate(String str) {
        Date date;
        synchronized (this.localFormat) {
            try {
                date = this.localFormat.parse(str);
            } catch (ParseException e2) {
                try {
                    date = this.enUsFormat.parse(str);
                } catch (ParseException e3) {
                    try {
                        date = ISO8601Utils.parse(str, new ParsePosition(0));
                    } catch (ParseException e4) {
                        throw new JsonSyntaxException(str, e4);
                    }
                }
            }
        }
        return date;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(SIMPLE_NAME);
        sb.append('(').append(this.localFormat.getClass().getSimpleName()).append(')');
        return sb.toString();
    }
}
