package com.google.gdata.data.youtube;

import com.google.gdata.client.spreadsheet.ListQuery;
import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ListQuery.ORDERBY_POSITION, nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtPosition extends AbstractExtension {
    private int position;

    public YtPosition() {
    }

    public YtPosition(int i) {
        this.position = i;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public int getPosition() {
        return this.position;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.setContent(Integer.toString(this.position + 1));
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        try {
            int i = Integer.parseInt(attributeHelper.consumeContent(true));
            if (i <= 0) {
                throw new ParseException("Position should be >= 1");
            }
            this.position = i - 1;
        } catch (NumberFormatException e2) {
            throw new ParseException("Position should be an integer");
        }
    }
}
