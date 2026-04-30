package com.google.gdata.model.gd;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.google.gdata.data.DateTime;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class When extends Element {
    public static final ElementKey<Void, When> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "when"), Void.class, When.class);
    public static final AttributeKey<DateTime> END_TIME = AttributeKey.of(new QName(null, "endTime"), DateTime.class);
    public static final AttributeKey<DateTime> START_TIME = AttributeKey.of(new QName(null, DCXProjectKeys.kDCXKey_Clip_startTime), DateTime.class);
    public static final AttributeKey<String> VALUE_STRING = AttributeKey.of(new QName(null, "valueString"), String.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(END_TIME);
            elementCreatorBuild.addAttribute(START_TIME).setRequired(true);
            elementCreatorBuild.addAttribute(VALUE_STRING);
            elementCreatorBuild.addElement(Reminder.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
        }
    }

    public When() {
        super(KEY);
    }

    protected When(ElementKey<?, ? extends When> elementKey) {
        super(elementKey);
    }

    protected When(ElementKey<?, ? extends When> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public When lock() {
        return (When) super.lock();
    }

    public DateTime getEndTime() {
        return (DateTime) super.getAttributeValue(END_TIME);
    }

    public When setEndTime(DateTime dateTime) {
        super.setAttributeValue(END_TIME, dateTime);
        return this;
    }

    public boolean hasEndTime() {
        return super.hasAttribute(END_TIME);
    }

    public List<Reminder> getReminder() {
        return super.getElements(Reminder.KEY);
    }

    public When addReminder(Reminder reminder) {
        super.addElement(Reminder.KEY, reminder);
        return this;
    }

    public boolean removeReminder(Reminder reminder) {
        return super.removeElement(reminder);
    }

    public void clearReminder() {
        super.removeElement(Reminder.KEY);
    }

    public boolean hasReminder() {
        return super.hasElement(Reminder.KEY);
    }

    public DateTime getStartTime() {
        return (DateTime) super.getAttributeValue(START_TIME);
    }

    public When setStartTime(DateTime dateTime) {
        super.setAttributeValue(START_TIME, dateTime);
        return this;
    }

    public boolean hasStartTime() {
        return super.hasAttribute(START_TIME);
    }

    public String getValueString() {
        return (String) super.getAttributeValue(VALUE_STRING);
    }

    public When setValueString(String str) {
        super.setAttributeValue(VALUE_STRING, str);
        return this;
    }

    public boolean hasValueString() {
        return super.hasAttribute(VALUE_STRING);
    }
}
