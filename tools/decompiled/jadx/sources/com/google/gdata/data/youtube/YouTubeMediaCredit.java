package com.google.gdata.data.youtube;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.media.mediarss.MediaCredit;
import com.google.gdata.data.media.mediarss.MediaRssNamespace;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "credit", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class YouTubeMediaCredit extends MediaCredit {
    private String typeString;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Type {
        PARTNER
    }

    public Type getType() {
        if (this.typeString == null) {
            return null;
        }
        try {
            return Type.valueOf(this.typeString.toUpperCase());
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }

    public void setType(Type type) {
        this.typeString = type == null ? null : type.toString().toLowerCase();
    }

    public String getTypeString() {
        return this.typeString;
    }

    public void setTypeString(String str) {
        this.typeString = str;
    }

    @Override // com.google.gdata.data.media.mediarss.MediaCredit, com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.typeString != null) {
            attributeGenerator.put("yt:type", this.typeString);
        }
    }

    @Override // com.google.gdata.data.media.mediarss.MediaCredit, com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.typeString = attributeHelper.consume("type", false);
    }
}
