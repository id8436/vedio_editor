package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "copyright", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaCopyright extends AbstractElementWithContent {
    private String url;

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ String getContent() {
        return super.getContent();
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ void setContent(String str) {
        super.setContent(str);
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.put("url", this.url);
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.url = attributeHelper.consume("url", false);
    }
}
