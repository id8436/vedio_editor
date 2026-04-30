package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "hash", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaHash extends AbstractElementWithContent {
    private String algo;

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ String getContent() {
        return super.getContent();
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ void setContent(String str) {
        super.setContent(str);
    }

    public String getAlgo() {
        return this.algo;
    }

    public void setAlgo(String str) {
        this.algo = str;
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.put("algo", this.algo);
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.algo = attributeHelper.consume("algo", false);
    }
}
