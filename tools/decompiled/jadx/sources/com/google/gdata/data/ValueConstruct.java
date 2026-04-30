package com.google.gdata.data;

import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ValueConstruct extends AbstractExtension {
    protected final String attrName;
    private boolean required;
    private String value;

    public final boolean isRequired() {
        return this.required;
    }

    protected final void setRequired(boolean z) {
        this.required = z;
    }

    protected ValueConstruct(String str) {
        this.required = true;
        this.attrName = str;
    }

    protected ValueConstruct(XmlNamespace xmlNamespace, String str, String str2) {
        this(xmlNamespace, str, str2, null);
    }

    protected ValueConstruct(XmlNamespace xmlNamespace, String str, String str2, String str3) {
        super(xmlNamespace, str);
        this.required = true;
        this.attrName = str2;
        if (str3 != null) {
            setValue(str3);
            setImmutable(true);
        }
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        throwExceptionIfImmutable();
        this.value = str;
    }

    public boolean hasValue() {
        return this.value != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    public void putAttributes(AttributeGenerator attributeGenerator) {
        if (this.attrName != null) {
            attributeGenerator.put((Object) this.attrName, (Object) this.value);
        } else {
            attributeGenerator.setContent(this.value);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        String strConsumeContent;
        if (this.attrName != null) {
            strConsumeContent = attributeHelper.consume(this.attrName, isRequired());
        } else {
            strConsumeContent = attributeHelper.consumeContent(isRequired());
        }
        try {
            setValue(strConsumeContent);
        } catch (IllegalArgumentException e2) {
            throw new ParseException(e2.getMessage(), e2);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.value != null) {
            super.generate(xmlWriter, extensionProfile);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        this.value = null;
        return super.getHandler(extensionProfile, str, str2, attributes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.value, ((ValueConstruct) obj).value);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            return (iHashCode * 37) + this.value.hashCode();
        }
        return iHashCode;
    }
}
