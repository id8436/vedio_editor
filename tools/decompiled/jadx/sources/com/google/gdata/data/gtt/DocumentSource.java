package com.google.gdata.data.gtt;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = DocumentSource.XML_NAME, nsAlias = GttNamespace.GTT_ALIAS, nsUri = GttNamespace.GTT)
public class DocumentSource extends ExtensionPoint {
    private static final String TYPE = "type";
    private static final AttributeHelper.EnumToAttributeValue<Type> TYPE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.EnumToAttributeValue<Type>() { // from class: com.google.gdata.data.gtt.DocumentSource.1
        @Override // com.google.gdata.data.AttributeHelper.EnumToAttributeValue
        public String getAttributeValue(Type type) {
            return type.toValue();
        }
    };
    private static final String URL = "url";
    static final String XML_NAME = "documentSource";
    private Type type = null;
    private String url = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Type {
        AEA("aea"),
        AES("aes"),
        DOC("doc"),
        HTML(BehanceSDKPublishConstants.KEY_HTML),
        KNOL("knol"),
        ODT("odt"),
        PLAINTEXT("plainText"),
        RTF("rtf"),
        SRT("srt"),
        SUB("sub"),
        WIKI("wiki");

        private final String value;

        Type(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public DocumentSource() {
    }

    public DocumentSource(Type type, String str) {
        setType(type);
        setUrl(str);
        setImmutable(true);
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        throwExceptionIfImmutable();
        this.type = type;
    }

    public boolean hasType() {
        return getType() != null;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        throwExceptionIfImmutable();
        this.url = str;
    }

    public boolean hasUrl() {
        return getUrl() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(DocumentSource.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("type", this.type, TYPE_ENUM_TO_ATTRIBUTE_VALUE);
        attributeGenerator.put("url", this.url);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.type = (Type) attributeHelper.consumeEnum("type", false, Type.class, null, TYPE_ENUM_TO_ATTRIBUTE_VALUE);
        this.url = attributeHelper.consume("url", false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        DocumentSource documentSource = (DocumentSource) obj;
        return eq(this.type, documentSource.type) && eq(this.url, documentSource.url);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.type != null) {
            iHashCode = (iHashCode * 37) + this.type.hashCode();
        }
        if (this.url != null) {
            return (iHashCode * 37) + this.url.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{DocumentSource type=" + this.type + " url=" + this.url + "}";
    }
}
