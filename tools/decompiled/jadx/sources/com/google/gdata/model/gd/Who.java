package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Who extends Element {
    public static final ElementKey<Void, Who> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "who"), Void.class, Who.class);
    public static final AttributeKey<String> EMAIL = AttributeKey.of(new QName(null, "email"), String.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);
    public static final AttributeKey<String> VALUE_STRING = AttributeKey.of(new QName(null, "valueString"), String.class);

    public final class Rel {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#event.attendee", "http://schemas.google.com/g/2005#event.organizer", "http://schemas.google.com/g/2005#event.performer", "http://schemas.google.com/g/2005#event.speaker", "http://schemas.google.com/g/2005#message.bcc", "http://schemas.google.com/g/2005#message.cc", "http://schemas.google.com/g/2005#message.from", "http://schemas.google.com/g/2005#message.reply-to", "http://schemas.google.com/g/2005#message.to", "http://schemas.google.com/g/2005#task.assigned-to"};
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

        public static String[] values() {
            return ALL_VALUES;
        }

        private Rel() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(EMAIL);
            elementCreatorBuild.addAttribute(REL);
            elementCreatorBuild.addAttribute(VALUE_STRING);
            elementCreatorBuild.addElement(AttendeeStatus.KEY);
            elementCreatorBuild.addElement(AttendeeType.KEY);
            elementCreatorBuild.addElement(EntryLink.KEY);
        }
    }

    public Who() {
        super(KEY);
    }

    protected Who(ElementKey<?, ? extends Who> elementKey) {
        super(elementKey);
    }

    protected Who(ElementKey<?, ? extends Who> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Who lock() {
        return (Who) super.lock();
    }

    public AttendeeStatus getAttendeeStatus() {
        return (AttendeeStatus) super.getElement(AttendeeStatus.KEY);
    }

    public Who setAttendeeStatus(AttendeeStatus attendeeStatus) {
        super.setElement(AttendeeStatus.KEY, attendeeStatus);
        return this;
    }

    public boolean hasAttendeeStatus() {
        return super.hasElement(AttendeeStatus.KEY);
    }

    public AttendeeType getAttendeeType() {
        return (AttendeeType) super.getElement(AttendeeType.KEY);
    }

    public Who setAttendeeType(AttendeeType attendeeType) {
        super.setElement(AttendeeType.KEY, attendeeType);
        return this;
    }

    public boolean hasAttendeeType() {
        return super.hasElement(AttendeeType.KEY);
    }

    public String getEmail() {
        return (String) super.getAttributeValue(EMAIL);
    }

    public Who setEmail(String str) {
        super.setAttributeValue(EMAIL, str);
        return this;
    }

    public boolean hasEmail() {
        return super.hasAttribute(EMAIL);
    }

    public EntryLink getEntryLink() {
        return (EntryLink) super.getElement(EntryLink.KEY);
    }

    public Who setEntryLink(EntryLink entryLink) {
        super.setElement(EntryLink.KEY, entryLink);
        return this;
    }

    public boolean hasEntryLink() {
        return super.hasElement(EntryLink.KEY);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public Who setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    public String getValueString() {
        return (String) super.getAttributeValue(VALUE_STRING);
    }

    public Who setValueString(String str) {
        super.setAttributeValue(VALUE_STRING, str);
        return this;
    }

    public boolean hasValueString() {
        return super.hasAttribute(VALUE_STRING);
    }
}
