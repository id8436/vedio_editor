package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "relationship", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtRelationship extends AbstractExtension {
    private Status status;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Status {
        SINGLE,
        TAKEN,
        OPEN
    }

    public YtRelationship() {
    }

    public YtRelationship(Status status) {
        this.status = status;
    }

    public Status getStatus() {
        return this.status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.status != null) {
            attributeGenerator.setContent(this.status.toString().toLowerCase());
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        try {
            this.status = Status.valueOf(attributeHelper.consumeContent(true).toUpperCase());
        } catch (IllegalArgumentException e2) {
            throw new ParseException("Invalid relationship value");
        }
    }
}
