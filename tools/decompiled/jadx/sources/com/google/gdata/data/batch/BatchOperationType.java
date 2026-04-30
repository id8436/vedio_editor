package com.google.gdata.data.batch;

import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public enum BatchOperationType {
    QUERY("query", "GET"),
    INSERT("insert", "POST"),
    UPDATE("update", "PUT"),
    DELETE("delete", "DELETE");

    private static final Map<String, BatchOperationType> BY_NAME = new HashMap();
    private final String method;
    private final String name;

    static {
        for (BatchOperationType batchOperationType : values()) {
            BY_NAME.put(batchOperationType.getName(), batchOperationType);
        }
    }

    BatchOperationType(String str, String str2) {
        this.name = str;
        this.method = str2;
    }

    public String getName() {
        return this.name;
    }

    public String getMethod() {
        return this.method;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }

    public static BatchOperationType forName(String str) {
        return BY_NAME.get(str);
    }

    public void generateAtom(XmlWriter xmlWriter) throws IOException {
        xmlWriter.simpleElement(Namespaces.batchNs, "operation", Collections.singletonList(new XmlWriter.Attribute("type", getName())), null);
    }
}
