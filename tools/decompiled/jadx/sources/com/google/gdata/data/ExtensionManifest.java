package com.google.gdata.data;

import com.google.gdata.util.common.base.Pair;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ExtensionManifest {
    final Class<? extends ExtensionPoint> extendedType;
    final Map<Pair<String, String>, ExtensionDescription> supportedExtensions = new HashMap();
    boolean arbitraryXml = false;
    boolean mixedContent = false;
    final List<ExtensionManifest> subclassManifests = new ArrayList();

    ExtensionManifest(Class<? extends ExtensionPoint> cls) {
        this.extendedType = cls;
    }

    public Map<Pair<String, String>, ExtensionDescription> getSupportedExtensions() {
        return Collections.unmodifiableMap(this.supportedExtensions);
    }

    Collection<XmlNamespace> getNamespaceDecls() {
        HashSet hashSet = new HashSet();
        Iterator<ExtensionDescription> it = this.supportedExtensions.values().iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getNamespace());
        }
        return hashSet;
    }
}
