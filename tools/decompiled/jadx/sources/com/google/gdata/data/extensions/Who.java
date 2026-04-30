package com.google.gdata.data.extensions;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Who extends ExtensionPoint implements Extension {
    protected String email;
    protected EntryLink<?> entryLink;
    protected String rel;
    protected String valueString;
    protected AttendeeType attendeeType = new AttendeeType();
    protected AttendeeStatus attendeeStatus = new AttendeeStatus();

    public final class Rel {
        public static final String EVENT_ATTENDEE = "http://schemas.google.com/g/2005#event.attendee";
        public static final String EVENT_ORGANIZER = "http://schemas.google.com/g/2005#event.organizer";
        public static final String EVENT_PERFORMER = "http://schemas.google.com/g/2005#event.performer";
        public static final String EVENT_SPEAKER = "http://schemas.google.com/g/2005#event.speaker";
        public static final String MESSAGE_BCC = "http://schemas.google.com/g/2005#message.bcc";
        public static final String MESSAGE_CC = "http://schemas.google.com/g/2005#message.cc";
        public static final String MESSAGE_FROM = "http://schemas.google.com/g/2005#message.from";
        public static final String MESSAGE_REPLY_TO = "http://schemas.google.com/g/2005#message.reply-to";
        public static final String MESSAGE_TO = "http://schemas.google.com/g/2005#message.to";
        public static final String TASK_ASSIGNED_TO = "http://schemas.google.com/g/2005#task.assigned-to";
    }

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        this.rel = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getValueString() {
        return this.valueString;
    }

    public void setValueString(String str) {
        this.valueString = str;
    }

    public final class AttendeeType extends ValueConstruct {
        public static final String EVENT_OPTIONAL = "http://schemas.google.com/g/2005#event.optional";
        public static final String EVENT_REQUIRED = "http://schemas.google.com/g/2005#event.required";

        public AttendeeType() {
            super(Namespaces.gNs, "attendeeType", "value");
        }
    }

    public String getAttendeeType() {
        return this.attendeeType.getValue();
    }

    public void setAttendeeType(String str) {
        this.attendeeType.setValue(str);
    }

    public final class AttendeeStatus extends ValueConstruct {
        public static final String EVENT_ACCEPTED = "http://schemas.google.com/g/2005#event.accepted";
        public static final String EVENT_DECLINED = "http://schemas.google.com/g/2005#event.declined";
        public static final String EVENT_INVITED = "http://schemas.google.com/g/2005#event.invited";
        public static final String EVENT_TENTATIVE = "http://schemas.google.com/g/2005#event.tentative";

        public AttendeeStatus() {
            super(Namespaces.gNs, "attendeeStatus", "value");
        }
    }

    public String getAttendeeStatus() {
        return this.attendeeStatus.getValue();
    }

    public void setAttendeeStatus(String str) {
        this.attendeeStatus.setValue(str);
    }

    public EntryLink<?> getEntryLink() {
        return this.entryLink;
    }

    public void setEntryLink(EntryLink<?> entryLink) {
        this.entryLink = entryLink;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Who.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("who");
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        if (this.entryLink != null) {
            visitChild(extensionVisitor, this.entryLink);
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.valueString != null) {
            arrayList.add(new XmlWriter.Attribute("valueString", this.valueString));
        }
        if (this.email != null) {
            arrayList.add(new XmlWriter.Attribute("email", this.email));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "who", arrayList, null);
        this.attendeeType.generate(xmlWriter, extensionProfile);
        this.attendeeStatus.generate(xmlWriter, extensionProfile);
        if (this.entryLink != null) {
            this.entryLink.generate(xmlWriter, extensionProfile);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "who");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Who.this, extensionProfile, Who.class);
        }

        protected Handler(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls) {
            super(Who.this, extensionProfile, cls);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if (str.equals("")) {
                if (str2.equals("rel")) {
                    Who.this.rel = str3;
                } else if (str2.equals("valueString")) {
                    Who.this.valueString = str3;
                } else if (str2.equals("email")) {
                    Who.this.email = str3;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str.equals("http://schemas.google.com/g/2005")) {
                if (str2.equals("attendeeType")) {
                    return Who.this.attendeeType.getHandler(this.extProfile, str, str2, attributes);
                }
                if (str2.equals("attendeeStatus")) {
                    return Who.this.attendeeStatus.getHandler(this.extProfile, str, str2, attributes);
                }
                if (str2.equals("entryLink")) {
                    Who.this.entryLink = new EntryLink<>();
                    return Who.this.entryLink.getHandler(this.extProfile, str, str2, attributes);
                }
            }
            return super.getChildHandler(str, str2, attributes);
        }
    }
}
