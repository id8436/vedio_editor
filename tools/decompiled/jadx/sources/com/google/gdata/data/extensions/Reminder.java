package com.google.gdata.data.extensions;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Reminder extends ExtensionPoint implements Extension {
    protected DateTime absoluteTime;
    protected Integer days;
    protected Integer hours;
    protected Method method;
    protected Integer minutes;

    public enum Method {
        ALERT,
        ALL,
        EMAIL,
        NONE,
        SMS;

        public static Method fromString(String str) {
            if (!str.equals(str.toLowerCase())) {
                throw new IllegalArgumentException("Bad input for method: " + str);
            }
            return (Method) Enum.valueOf(Method.class, str.toUpperCase());
        }

        public String generate() {
            return name().toLowerCase();
        }
    }

    public Integer getDays() {
        return this.days;
    }

    public void setDays(Integer num) {
        this.days = num;
    }

    public Integer getHours() {
        return this.hours;
    }

    public void setHours(Integer num) {
        this.hours = num;
    }

    public Integer getMinutes() {
        return this.minutes;
    }

    public void setMinutes(Integer num) {
        this.minutes = num;
    }

    public DateTime getAbsoluteTime() {
        return this.absoluteTime;
    }

    public void setAbsoluteTime(DateTime dateTime) {
        this.absoluteTime = dateTime;
    }

    public Method getMethod() {
        return this.method;
    }

    public void setMethod(Method method) {
        this.method = method;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Reminder.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName(NotificationCompat.CATEGORY_REMINDER);
        extensionDescription.setRepeatable(true);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.days != null) {
            arrayList.add(new XmlWriter.Attribute("days", this.days.toString()));
        }
        if (this.hours != null) {
            arrayList.add(new XmlWriter.Attribute("hours", this.hours.toString()));
        }
        if (this.minutes != null) {
            arrayList.add(new XmlWriter.Attribute("minutes", this.minutes.toString()));
        }
        if (this.absoluteTime != null) {
            arrayList.add(new XmlWriter.Attribute("absoluteTime", this.absoluteTime.toString()));
        }
        if (this.method != null) {
            arrayList.add(new XmlWriter.Attribute("method", this.method.generate()));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, NotificationCompat.CATEGORY_REMINDER, arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, NotificationCompat.CATEGORY_REMINDER);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Reminder.this, extensionProfile, Reminder.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("days")) {
                    try {
                        Reminder.this.days = Integer.valueOf(str3);
                        return;
                    } catch (NumberFormatException e2) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidReminderDays, e2);
                    }
                }
                if (str2.equals("hours")) {
                    try {
                        Reminder.this.hours = Integer.valueOf(str3);
                        return;
                    } catch (NumberFormatException e3) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidReminderHours, e3);
                    }
                }
                if (str2.equals("minutes")) {
                    try {
                        Reminder.this.minutes = Integer.valueOf(str3);
                        return;
                    } catch (NumberFormatException e4) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidReminderMinutes, e4);
                    }
                }
                if (str2.equals("absoluteTime")) {
                    try {
                        Reminder.this.absoluteTime = DateTime.parseDateTime(str3);
                        return;
                    } catch (NumberFormatException e5) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidReminderAbsoluteTime, e5);
                    }
                }
                if (str2.equals("method")) {
                    try {
                        Reminder.this.method = Method.fromString(str3);
                    } catch (IllegalArgumentException e6) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidReminderMethod, e6);
                    }
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if ((Reminder.this.minutes == null ? 0 : 1) + (Reminder.this.hours == null ? 0 : 1) + (Reminder.this.days == null ? 0 : 1) + (Reminder.this.absoluteTime != null ? 1 : 0) > 1) {
                throw new ParseException(CoreErrorDomain.ERR.tooManyAttributes);
            }
            super.processEndElement();
        }
    }
}
