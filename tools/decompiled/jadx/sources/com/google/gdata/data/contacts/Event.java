package com.google.gdata.data.contacts;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.When;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "event", nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Event extends ExtensionPoint {
    private static final String LABEL = "label";
    private static final String REL = "rel";
    static final String XML_NAME = "event";
    private String label = null;
    private String rel = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Rel {
        public static final String ANNIVERSARY = "anniversary";
        public static final String OTHER = "other";
    }

    public Event() {
    }

    public Event(String str, String str2) {
        setLabel(str);
        setRel(str2);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Event.class)) {
            extensionProfile.declare(Event.class, new ExtensionDescription(When.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "when", true, false, false));
            new When().declareExtensions(extensionProfile);
        }
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        throwExceptionIfImmutable();
        this.label = str;
    }

    public boolean hasLabel() {
        return getLabel() != null;
    }

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        throwExceptionIfImmutable();
        this.rel = str;
    }

    public boolean hasRel() {
        return getRel() != null;
    }

    public When getWhen() {
        return (When) getExtension(When.class);
    }

    public void setWhen(When when) {
        if (when == null) {
            removeExtension(When.class);
        } else {
            setExtension(when);
        }
    }

    public boolean hasWhen() {
        return hasExtension(When.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Event.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("label", this.label);
        attributeGenerator.put(REL, this.rel);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.label = attributeHelper.consume("label", false);
        this.rel = attributeHelper.consume(REL, false);
    }

    public String toString() {
        return "{Event label=" + this.label + " rel=" + this.rel + "}";
    }
}
