package com.google.gdata.data.appsforyourdomain.generic;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.appsforyourdomain.Namespaces;
import com.google.gdata.data.appsforyourdomain.Property;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class GenericEntry extends BaseEntry<GenericEntry> {
    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(GenericEntry.class, Property.getDefaultDescription());
        extensionProfile.declareAdditionalNamespace(Namespaces.APPS_NAMESPACE);
    }

    public void addProperty(String str, String str2) {
        Property property = new Property();
        property.setName(str);
        property.setValue(str2);
        getRepeatingExtension(Property.class).add(property);
    }

    public void addProperties(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            addProperty(entry.getKey(), entry.getValue());
        }
    }

    public String getProperty(String str) {
        for (Property property : getRepeatingExtension(Property.class)) {
            if (property.getName().equals(str)) {
                return property.getValue();
            }
        }
        return null;
    }

    public boolean removeProperty(String str) {
        Property property;
        Iterator it = getRepeatingExtension(Property.class).iterator();
        while (true) {
            if (!it.hasNext()) {
                property = null;
                break;
            }
            property = (Property) it.next();
            if (property.getName().equals(str)) {
                break;
            }
        }
        if (property == null) {
            return false;
        }
        removeRepeatingExtension(property);
        return true;
    }

    public Map<String, String> getAllProperties() {
        HashMap map = new HashMap();
        for (Property property : getRepeatingExtension(Property.class)) {
            map.put(property.getName(), property.getValue());
        }
        return map;
    }

    @Override // com.google.gdata.data.AbstractExtension
    public void validate() throws IllegalStateException {
        HashSet hashSet = new HashSet();
        Iterator it = getRepeatingExtension(Property.class).iterator();
        while (it.hasNext()) {
            String name = ((Property) it.next()).getName();
            if (name == null) {
                throw new IllegalStateException("Found property with null name");
            }
            if (hashSet.contains(name)) {
                throw new IllegalStateException("Duplicate property: " + name);
            }
            hashSet.add(name);
        }
    }
}
