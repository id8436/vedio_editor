package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "uploaded", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtUploaded extends AbstractExtension {
    private DateTime dateTime;

    public YtUploaded() {
    }

    public YtUploaded(DateTime dateTime) {
        this.dateTime = dateTime;
    }

    public DateTime getDateTime() {
        return this.dateTime;
    }

    public void setDateTime(DateTime dateTime) {
        this.dateTime = dateTime;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        try {
            this.dateTime = DateTime.parseDateTime(attributeHelper.consumeContent(true));
        } catch (NumberFormatException e2) {
            throw new ParseException("Invalid date time format.");
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.dateTime != null) {
            attributeGenerator.setContent(this.dateTime.toString());
        }
    }
}
