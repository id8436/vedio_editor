package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "rating", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaRating extends AbstractElementWithContent {
    public static final String DEFAULT_SCHEME = "urn:simple";
    private String scheme;

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ String getContent() {
        return super.getContent();
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ void setContent(String str) {
        super.setContent(str);
    }

    public String getScheme() {
        return this.scheme;
    }

    public void setScheme(String str) {
        this.scheme = str;
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.put("scheme", this.scheme);
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.scheme = attributeHelper.consume("scheme", false);
    }
}
