package com.google.gdata.data.youtube;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = NotificationCompat.CATEGORY_STATUS, nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtStatus extends AbstractExtension {
    private Value status;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Value {
        PENDING,
        ACCEPTED,
        REJECTED,
        REQUESTED
    }

    public YtStatus() {
    }

    public YtStatus(Value value) {
        this.status = value;
    }

    public Value getStatus() {
        return this.status;
    }

    public void setStatus(Value value) {
        this.status = value;
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
            this.status = Value.valueOf(attributeHelper.consumeContent(true).toUpperCase());
        } catch (IllegalArgumentException e2) {
            throw new ParseException("Invalid status value");
        }
    }
}
