package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "countHint", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtCountHint extends AbstractExtension {
    private int countHint;

    public YtCountHint() {
    }

    public YtCountHint(int i) {
        this.countHint = i;
    }

    public void setValue(int i) {
        this.countHint = i;
    }

    public int getValue() {
        return this.countHint;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.setContent(Integer.toString(this.countHint));
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        try {
            this.countHint = Integer.parseInt(attributeHelper.consumeContent(true));
        } catch (NumberFormatException e2) {
            throw new ParseException("CountHint should be an integer");
        }
    }
}
