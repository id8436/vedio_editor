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
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "attribute", nsAlias = GoogleBaseNamespaces.GM_ALIAS, nsUri = GoogleBaseNamespaces.GM_URI)
public class AttributeHistogram implements Extension {
    private GoogleBaseAttributeId attributeId;
    private int totalValueCount;
    private final List<UniqueValue> values = new ArrayList();

    public AttributeHistogram() {
    }

    public AttributeHistogram(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        this.attributeId = new GoogleBaseAttributeId(str, googleBaseAttributeType);
    }

    public AttributeHistogram(GoogleBaseAttributeId googleBaseAttributeId) {
        this.attributeId = googleBaseAttributeId;
    }

    public String getAttributeName() {
        return this.attributeId.getName();
    }

    public GoogleBaseAttributeType getAttributeType() {
        return this.attributeId.getType();
    }

    public GoogleBaseAttributeId getAttributeId() {
        return this.attributeId;
    }

    public int getTotalValueCount() {
        return this.totalValueCount;
    }

    public List<? extends UniqueValue> getValues() {
        return this.values;
    }

    public List<? extends UniqueValue> getValues(int i) {
        if (i <= 0) {
            return this.values;
        }
        ArrayList arrayList = new ArrayList(this.values.size());
        for (UniqueValue uniqueValue : this.values) {
            if (uniqueValue.getCount() >= i) {
                arrayList.add(uniqueValue);
            }
        }
        return arrayList;
    }

    public void addValue(int i, String str) {
        this.values.add(new UniqueValue(i, str));
    }

    public void setTotalValueCount(int i) {
        this.totalValueCount = i;
    }

    public void setAttributeId(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        setAttributeId(new GoogleBaseAttributeId(str, googleBaseAttributeType));
    }

    public void setAttributeId(GoogleBaseAttributeId googleBaseAttributeId) {
        this.attributeId = googleBaseAttributeId;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.attributeId != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new XmlWriter.Attribute("name", this.attributeId.getName()));
            if (this.attributeId.getType() != null) {
                arrayList.add(new XmlWriter.Attribute("type", this.attributeId.getType().toString()));
            }
            if (this.totalValueCount > 0) {
                arrayList.add(new XmlWriter.Attribute("count", Integer.toString(this.totalValueCount)));
            }
            xmlWriter.startElement(GoogleBaseNamespaces.GM, "attribute", arrayList, null);
            if (this.values != null) {
                xmlWriter.startRepeatingElement();
                Iterator<UniqueValue> it = this.values.iterator();
                while (it.hasNext()) {
                    it.next().generate(xmlWriter);
                }
                xmlWriter.endRepeatingElement();
            }
            xmlWriter.endElement();
        }
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        AttributeHelper attributeHelper = new AttributeHelper(attributes);
        setAttributeId(new GoogleBaseAttributeId(attributeHelper.consume("name", true), GoogleBaseAttributeType.getInstance(attributeHelper.consume("type", true))));
        setTotalValueCount(attributeHelper.consumeInteger("count", false, 0));
        attributeHelper.assertAllConsumed();
        return new XmlParser.ElementHandler() { // from class: com.google.api.gbase.client.AttributeHistogram.1
            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public XmlParser.ElementHandler getChildHandler(String str3, String str4, Attributes attributes2) throws ParseException, IOException {
                return (str3.equals(GoogleBaseNamespaces.GM_URI) && str4.equals("value")) ? new AddValueHandler(attributes2) : super.getChildHandler(str3, str4, attributes2);
            }
        };
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class UniqueValue {
        private final int count;
        private final String value;

        private UniqueValue(int i, String str) {
            this.count = i;
            this.value = str;
        }

        public int getCount() {
            return this.count;
        }

        public String getValueAsString() {
            return this.value;
        }

        public String toString() {
            return this.value;
        }

        void generate(XmlWriter xmlWriter) throws IOException {
            List<XmlWriter.Attribute> listSingletonList = null;
            if (this.count > 0) {
                listSingletonList = Collections.singletonList(new XmlWriter.Attribute("count", Integer.toString(this.count)));
            }
            xmlWriter.simpleElement(GoogleBaseNamespaces.GM, "value", listSingletonList, this.value);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class AddValueHandler extends XmlParser.ElementHandler {
        private final int count;

        private AddValueHandler(Attributes attributes) throws ParseException, IOException {
            AttributeHelper attributeHelper = new AttributeHelper(attributes);
            this.count = attributeHelper.consumeInteger("count", false, 0);
            attributeHelper.assertAllConsumed();
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            String str = this.value;
            if ("".equals(str)) {
                str = null;
            }
            AttributeHistogram.this.addValue(this.count, str);
        }
    }
}
