package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.Who;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class EventWho extends Who {
    public ResourceProperty getResource() {
        return (ResourceProperty) getExtension(ResourceProperty.class);
    }

    public void setResource(ResourceProperty resourceProperty) {
        setExtension(resourceProperty);
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(EventWho.class);
        extensionDescription.setNamespace(com.google.gdata.util.Namespaces.gNs);
        extensionDescription.setLocalName("who");
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.extensions.Who, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends Who.Handler {
        public Handler(ExtensionProfile extensionProfile) {
            super(extensionProfile, EventWho.class);
        }

        @Override // com.google.gdata.data.extensions.Who.Handler, com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals(Namespaces.gCal) || !str2.equals("resource")) {
                return super.getChildHandler(str, str2, attributes);
            }
            ResourceProperty resourceProperty = new ResourceProperty();
            EventWho.this.setResource(resourceProperty);
            return resourceProperty.getHandler(this.extProfile, str, str2, attributes);
        }
    }
}
