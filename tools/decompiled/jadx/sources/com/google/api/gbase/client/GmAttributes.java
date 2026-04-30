package com.google.api.gbase.client;

import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "attributes", nsAlias = GoogleBaseNamespaces.GM_ALIAS, nsUri = GoogleBaseNamespaces.GM_URI)
public class GmAttributes implements Extension {
    private final List<GmAttribute> attributes = new ArrayList();
    private final Set<GoogleBaseAttributeId> attributeIds = new LinkedHashSet();

    public List<GoogleBaseAttributeId> getAttributeIds() {
        return Collections.unmodifiableList(new ArrayList(this.attributeIds));
    }

    public Collection<GmAttribute> getAttributes() {
        return Collections.unmodifiableCollection(this.attributes);
    }

    public void addAttribute(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        addAttribute(new GoogleBaseAttributeId(str, googleBaseAttributeType), (GmAttribute.Importance) null);
    }

    public void addAttribute(GoogleBaseAttributeId googleBaseAttributeId, GmAttribute.Importance importance) {
        if (this.attributeIds.contains(googleBaseAttributeId)) {
            throw new IllegalArgumentException("Attribute id already registered in the attributes group " + googleBaseAttributeId);
        }
        this.attributes.add(new GmAttribute(googleBaseAttributeId, importance));
        this.attributeIds.add(googleBaseAttributeId);
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (!this.attributes.isEmpty()) {
            xmlWriter.startElement(GoogleBaseNamespaces.GM, "attributes", null, null);
            xmlWriter.startRepeatingElement();
            for (GmAttribute gmAttribute : this.attributes) {
                ArrayList arrayList = new ArrayList();
                GoogleBaseAttributeId attributeId = gmAttribute.getAttributeId();
                arrayList.add(new XmlWriter.Attribute("name", attributeId.getName()));
                if (attributeId.getType() != null) {
                    arrayList.add(new XmlWriter.Attribute("type", attributeId.getType().getName()));
                }
                if (gmAttribute.getImportance() != null) {
                    arrayList.add(new XmlWriter.Attribute("importance", gmAttribute.getImportance().getXmlValue()));
                }
                xmlWriter.simpleElement(GoogleBaseNamespaces.GM, "attribute", arrayList, null);
            }
            xmlWriter.endRepeatingElement();
            xmlWriter.endElement();
        }
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        this.attributes.clear();
        return new XmlParser.ElementHandler() { // from class: com.google.api.gbase.client.GmAttributes.1
            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public XmlParser.ElementHandler getChildHandler(String str3, String str4, Attributes attributes2) throws ParseException, IOException {
                if (!str3.equals(GoogleBaseNamespaces.GM_URI) || !"attribute".equals(str4)) {
                    return super.getChildHandler(str3, str4, attributes2);
                }
                AttributeHelper attributeHelper = new AttributeHelper(attributes2);
                String strConsume = attributeHelper.consume("name", true);
                GoogleBaseAttributeType googleBaseAttributeType = GoogleBaseAttributeType.getInstance(attributeHelper.consume("type", false));
                GmAttribute.Importance importance = (GmAttribute.Importance) attributeHelper.consumeEnum("importance", false, GmAttribute.Importance.class);
                GmAttributes.this.addAttribute(new GoogleBaseAttributeId(strConsume, googleBaseAttributeType), importance);
                attributeHelper.assertAllConsumed();
                return new XmlParser.ElementHandler();
            }
        };
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class GmAttribute {
        private final GoogleBaseAttributeId attributeId;
        private final Importance importance;

        public enum Importance {
            REQUIRED,
            RECOMMENDED,
            OPTIONAL,
            DEPRECATED;

            private final String xmlValue = name().toLowerCase();

            Importance() {
            }

            String getXmlValue() {
                return this.xmlValue;
            }
        }

        public GmAttribute(GoogleBaseAttributeId googleBaseAttributeId, Importance importance) {
            if (googleBaseAttributeId == null) {
                throw new NullPointerException("AttributeId is null.");
            }
            this.attributeId = googleBaseAttributeId;
            this.importance = importance;
        }

        public GoogleBaseAttributeId getAttributeId() {
            return this.attributeId;
        }

        public Importance getImportance() {
            return this.importance;
        }
    }
}
