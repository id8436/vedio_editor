package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Agent extends Element {
    public static final ElementKey<String, Agent> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "agent"), String.class, Agent.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public Agent() {
        super(KEY);
    }

    protected Agent(ElementKey<String, ? extends Agent> elementKey) {
        super(elementKey);
    }

    protected Agent(ElementKey<String, ? extends Agent> elementKey, Element element) {
        super(elementKey, element);
    }

    public Agent(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public Agent lock() {
        return (Agent) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public Agent setValue(String str) {
        super.setTextValue(str);
        return this;
    }

    public boolean hasValue() {
        return super.hasTextValue();
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(getValue(), ((Agent) obj).getValue());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
