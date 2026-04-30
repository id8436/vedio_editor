package com.google.gdata.data.appsforyourdomain.migration;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.appsforyourdomain.Namespaces;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public class Rfc822Msg extends ValueConstruct {
    public static final String ATTRIBUTE_ENCODING = "encoding";
    private static ExtensionDescription EXTENSION_DESC = new ExtensionDescription();
    public static final String EXTENSION_LOCAL_NAME = "rfc822Msg";
    private Encoding encoding;

    public enum Encoding {
        NONE,
        BASE64
    }

    static {
        EXTENSION_DESC.setExtensionClass(Rfc822Msg.class);
        EXTENSION_DESC.setNamespace(Namespaces.APPS_NAMESPACE);
        EXTENSION_DESC.setLocalName(EXTENSION_LOCAL_NAME);
        EXTENSION_DESC.setRepeatable(false);
    }

    public Rfc822Msg() {
        this(null, Encoding.NONE);
    }

    public Rfc822Msg(String str) {
        this(str, Encoding.NONE);
    }

    public Rfc822Msg(String str, Encoding encoding) {
        super(Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME, null, str);
        if (encoding == null) {
            throw new IllegalArgumentException("Encoding may not be null.  Use Encoding.NONE to specify no encoding.");
        }
        this.encoding = encoding;
    }

    public String getMsg() {
        return getValue();
    }

    public Encoding getEncoding() {
        return this.encoding;
    }

    @Override // com.google.gdata.data.ValueConstruct, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        String strConsume = attributeHelper.consume(ATTRIBUTE_ENCODING, false);
        if (strConsume != null) {
            this.encoding = Encoding.valueOf(strConsume.toUpperCase());
        } else {
            this.encoding = Encoding.NONE;
        }
    }

    @Override // com.google.gdata.data.ValueConstruct, com.google.gdata.data.AbstractExtension
    public void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.encoding != Encoding.NONE) {
            attributeGenerator.put(ATTRIBUTE_ENCODING, this.encoding.name().toLowerCase());
        }
    }

    @Override // com.google.gdata.data.ValueConstruct
    public int hashCode() {
        return (getMsg() == null ? 0 : getMsg().hashCode()) + this.encoding.hashCode() + (super.hashCode() * 31);
    }

    @Override // com.google.gdata.data.ValueConstruct
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj) && (obj instanceof Rfc822Msg)) {
            Rfc822Msg rfc822Msg = (Rfc822Msg) obj;
            if (getMsg() == null) {
                if (rfc822Msg.getMsg() != null) {
                    return false;
                }
            } else if (!getMsg().equals(rfc822Msg.getMsg())) {
                return false;
            }
            return this.encoding.equals(rfc822Msg.encoding);
        }
        return false;
    }

    public static ExtensionDescription getDefaultDescription() {
        return EXTENSION_DESC;
    }
}
