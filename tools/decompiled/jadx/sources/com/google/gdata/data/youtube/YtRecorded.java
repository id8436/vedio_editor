package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "recorded", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtRecorded extends AbstractExtension {
    private DateTime date;

    public YtRecorded() {
    }

    public YtRecorded(DateTime dateTime) {
        setDate(dateTime);
    }

    public void setDate(DateTime dateTime) {
        if (dateTime != null && !dateTime.isDateOnly()) {
            throw new IllegalStateException("Object should be only a date, not a date and a time");
        }
        this.date = dateTime;
    }

    public DateTime getDate() {
        return this.date;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.date != null) {
            attributeGenerator.setContent(this.date.toString());
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        try {
            this.date = DateTime.parseDate(attributeHelper.consumeContent(true));
        } catch (NumberFormatException e2) {
            throw new ParseException("Invalid date. Expected format: YYYY-MM-DD");
        }
    }
}
