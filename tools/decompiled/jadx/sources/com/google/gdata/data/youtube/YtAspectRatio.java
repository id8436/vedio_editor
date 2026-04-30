package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.xml.XmlWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "aspectRatio", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtAspectRatio extends AbstractExtension {
    private Value value;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Value {
        WIDE_SCREEN("widescreen");

        private final String xmlName;

        Value(String str) {
            this.xmlName = str;
        }

        public String getXmlName() {
            return this.xmlName;
        }
    }

    public YtAspectRatio() {
        this.value = null;
    }

    public YtAspectRatio(Value value) {
        this.value = value;
    }

    public void setValue(Value value) {
        this.value = value;
    }

    public Value getValue() {
        return this.value;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void generateAttributes(List<XmlWriter.Attribute> list, AttributeGenerator attributeGenerator) {
        super.generateAttributes(list, attributeGenerator);
        attributeGenerator.setContent(this.value.getXmlName());
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        String strConsumeContent = attributeHelper.consumeContent(true);
        for (Value value : Value.values()) {
            if (value.xmlName.equals(strConsumeContent)) {
                this.value = value;
                return;
            }
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() throws IllegalStateException {
        super.validate();
        if (this.value == null) {
            throw new IllegalStateException("The value of yt:aspectRatio may not be null.");
        }
    }
}
