package com.google.gdata.model.atompub;

import com.google.common.collect.Maps;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Draft extends Element {
    public static final ElementKey<Value, Draft> KEY = ElementKey.of(new QName(Namespaces.atomPubStandardNs, "draft"), Value.class, Draft.class);

    public enum Value {
        NO,
        YES;

        private static final Map<String, Value> VALUE_MAP = Maps.newHashMap();

        static {
            for (Value value : values()) {
                VALUE_MAP.put(value.toString(), value);
            }
        }

        @Override // java.lang.Enum
        public String toString() {
            return name().toLowerCase();
        }

        public static Value fromString(String str) {
            return VALUE_MAP.get(str);
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public Draft() {
        super(KEY);
    }

    protected Draft(ElementKey<Value, ? extends Draft> elementKey) {
        super(elementKey);
    }

    protected Draft(ElementKey<Value, ? extends Draft> elementKey, Element element) {
        super(elementKey, element);
    }

    public Draft(Value value) {
        this();
        setValue(value);
    }

    @Override // com.google.gdata.model.Element
    public Draft lock() {
        return (Draft) super.lock();
    }

    public Value getValue() {
        return (Value) super.getTextValue(KEY);
    }

    public Draft setValue(Value value) {
        super.setTextValue(value);
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
        return eq(getValue(), ((Draft) obj).getValue());
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
