package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "text", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaText extends AbstractTextElement {
    private NormalPlayTime end;
    private String lang;
    private NormalPlayTime start;

    public String getLang() {
        return this.lang;
    }

    public void setLang(String str) {
        this.lang = str;
    }

    public NormalPlayTime getEnd() {
        return this.end;
    }

    public void setEnd(NormalPlayTime normalPlayTime) {
        this.end = normalPlayTime;
    }

    public NormalPlayTime getStart() {
        return this.start;
    }

    public void setStart(NormalPlayTime normalPlayTime) {
        this.start = normalPlayTime;
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractTextElement, com.google.gdata.data.AbstractExtension
    public void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.start != null) {
            attributeGenerator.put("start", this.start.getNptHhmmssRepresentation());
        }
        if (this.end != null) {
            attributeGenerator.put("end", this.end.getNptHhmmssRepresentation());
        }
        attributeGenerator.put("lang", this.lang);
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractTextElement, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.start = MediaAttributeHelper.consumeNormalPlayTime(attributeHelper, "start");
        this.end = MediaAttributeHelper.consumeNormalPlayTime(attributeHelper, "end");
        this.lang = attributeHelper.consume("lang", false);
    }
}
