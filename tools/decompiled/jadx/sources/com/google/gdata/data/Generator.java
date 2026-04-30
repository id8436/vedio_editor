package com.google.gdata.data;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.google.gdata.data.codesearch.Package;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class Generator implements IGenerator {
    protected String name;
    protected String uri;
    protected String version;

    @Override // com.google.gdata.data.IGenerator
    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String getUri() {
        return this.uri;
    }

    @Override // com.google.gdata.data.IGenerator
    public String getHref() {
        return this.uri;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    @Override // com.google.gdata.data.IGenerator
    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void generateAtom(XmlWriter xmlWriter) throws IOException {
        ArrayList arrayList = new ArrayList(2);
        if (this.version != null) {
            arrayList.add(new XmlWriter.Attribute(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, this.version));
        }
        if (this.uri != null) {
            arrayList.add(new XmlWriter.Attribute(Package.ATTRIBUTE_URI, this.uri));
        }
        xmlWriter.simpleElement(Namespaces.atomNs, "generator", arrayList, this.name);
    }

    public class AtomHandler extends XmlParser.ElementHandler {
        public AtomHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if (str.equals("") && str2.equals(AdobeCommunityConstants.AdobeCommunityResourceVersionKey)) {
                Generator.this.version = str3;
            } else if (str.equals("") && str2.equals(Package.ATTRIBUTE_URI)) {
                Generator.this.uri = str3;
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            Generator.this.name = this.value;
        }
    }
}
