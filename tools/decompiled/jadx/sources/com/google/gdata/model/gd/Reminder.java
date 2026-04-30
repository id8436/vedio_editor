package com.google.gdata.model.gd;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.DateTime;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Reminder extends Element {
    public static final ElementKey<Void, Reminder> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, NotificationCompat.CATEGORY_REMINDER), Void.class, Reminder.class);
    public static final AttributeKey<DateTime> ABSOLUTE_TIME = AttributeKey.of(new QName(null, "absoluteTime"), DateTime.class);
    public static final AttributeKey<Integer> DAYS = AttributeKey.of(new QName(null, "days"), Integer.class);
    public static final AttributeKey<Integer> HOURS = AttributeKey.of(new QName(null, "hours"), Integer.class);
    public static final AttributeKey<String> METHOD = AttributeKey.of(new QName(null, "method"), String.class);
    public static final AttributeKey<Integer> MINUTES = AttributeKey.of(new QName(null, "minutes"), Integer.class);

    public final class Method {
        public static final String ALL = "all";
        public static final String EMAIL = "email";
        public static final String NONE = "none";
        public static final String ALERT = "alert";
        public static final String SMS = "sms";
        private static final String[] ALL_VALUES = {ALERT, "all", "email", "none", SMS};

        public static String[] values() {
            return ALL_VALUES;
        }

        private Method() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(ABSOLUTE_TIME);
            elementCreatorBuild.addAttribute(DAYS);
            elementCreatorBuild.addAttribute(HOURS);
            elementCreatorBuild.addAttribute(METHOD);
            elementCreatorBuild.addAttribute(MINUTES);
        }
    }

    public Reminder() {
        super(KEY);
    }

    protected Reminder(ElementKey<?, ? extends Reminder> elementKey) {
        super(elementKey);
    }

    protected Reminder(ElementKey<?, ? extends Reminder> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Reminder lock() {
        return (Reminder) super.lock();
    }

    public DateTime getAbsoluteTime() {
        return (DateTime) super.getAttributeValue(ABSOLUTE_TIME);
    }

    public Reminder setAbsoluteTime(DateTime dateTime) {
        super.setAttributeValue(ABSOLUTE_TIME, dateTime);
        return this;
    }

    public boolean hasAbsoluteTime() {
        return super.hasAttribute(ABSOLUTE_TIME);
    }

    public Integer getDays() {
        return (Integer) super.getAttributeValue(DAYS);
    }

    public Reminder setDays(Integer num) {
        super.setAttributeValue(DAYS, num);
        return this;
    }

    public boolean hasDays() {
        return super.hasAttribute(DAYS);
    }

    public Integer getHours() {
        return (Integer) super.getAttributeValue(HOURS);
    }

    public Reminder setHours(Integer num) {
        super.setAttributeValue(HOURS, num);
        return this;
    }

    public boolean hasHours() {
        return super.hasAttribute(HOURS);
    }

    public String getMethod() {
        return (String) super.getAttributeValue(METHOD);
    }

    public Reminder setMethod(String str) {
        super.setAttributeValue(METHOD, str);
        return this;
    }

    public boolean hasMethod() {
        return super.hasAttribute(METHOD);
    }

    public Integer getMinutes() {
        return (Integer) super.getAttributeValue(MINUTES);
    }

    public Reminder setMinutes(Integer num) {
        super.setAttributeValue(MINUTES, num);
        return this;
    }

    public boolean hasMinutes() {
        return super.hasAttribute(MINUTES);
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Reminder reminder = (Reminder) obj;
        return eq(getAbsoluteTime(), reminder.getAbsoluteTime()) && eq(getDays(), reminder.getDays()) && eq(getHours(), reminder.getHours()) && eq(getMethod(), reminder.getMethod()) && eq(getMinutes(), reminder.getMinutes());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getAbsoluteTime() != null) {
            iHashCode = (iHashCode * 37) + getAbsoluteTime().hashCode();
        }
        if (getDays() != null) {
            iHashCode = (iHashCode * 37) + getDays().hashCode();
        }
        if (getHours() != null) {
            iHashCode = (iHashCode * 37) + getHours().hashCode();
        }
        if (getMethod() != null) {
            iHashCode = (iHashCode * 37) + getMethod().hashCode();
        }
        if (getMinutes() != null) {
            return (iHashCode * 37) + getMinutes().hashCode();
        }
        return iHashCode;
    }
}
