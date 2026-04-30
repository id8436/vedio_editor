package com.google.api.gbase.client;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class GmDisapproved implements Extension {
    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GmDisapproved.class);
        extensionDescription.setNamespace(GoogleBaseNamespaces.GM);
        extensionDescription.setLocalName("disapproved");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.simpleElement(GoogleBaseNamespaces.GM, "disapproved", null, null);
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        return new XmlParser.ElementHandler();
    }
}
