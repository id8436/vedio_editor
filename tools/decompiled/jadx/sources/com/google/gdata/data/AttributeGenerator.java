package com.google.gdata.data;

import com.google.gdata.data.AttributeHelper;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class AttributeGenerator extends LinkedHashMap<String, String> {
    private String content = null;

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void put(String str, long j) {
        put((Object) str, (Object) Long.toString(j));
    }

    public void put(String str, boolean z) {
        put((Object) str, (Object) Boolean.toString(z));
    }

    public void put(String str, float f2) {
        if (f2 == Float.POSITIVE_INFINITY) {
            put((Object) str, "INF");
        } else if (f2 == Float.NEGATIVE_INFINITY) {
            put((Object) str, "-INF");
        } else {
            put((Object) str, (Object) Float.toString(f2));
        }
    }

    public void put(String str, double d2) {
        if (d2 == Double.POSITIVE_INFINITY) {
            put((Object) str, "INF");
        } else if (d2 == Double.NEGATIVE_INFINITY) {
            put((Object) str, "-INF");
        } else {
            put((Object) str, (Object) Double.toString(d2));
        }
    }

    public void put(String str, Object obj) {
        if (obj == null) {
            super.put(str, (Object) null);
            return;
        }
        if (obj instanceof Float) {
            put(str, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            put(str, ((Double) obj).doubleValue());
        } else {
            put((Object) str, (Object) obj.toString());
        }
    }

    public <T extends Enum<T>> void put(String str, T t, AttributeHelper.EnumToAttributeValue<T> enumToAttributeValue) {
        put((Object) str, (Object) (t == null ? null : enumToAttributeValue.getAttributeValue(t)));
    }
}
