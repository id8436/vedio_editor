package com.google.gdata.data;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;

/* JADX INFO: loaded from: classes3.dex */
public class Rfc3339Handler extends XmlParser.ElementHandler {
    private DateTime dateTime;

    public DateTime getDateTime() {
        return this.dateTime;
    }

    @Override // com.google.gdata.util.XmlParser.ElementHandler
    public void processEndElement() throws ParseException {
        try {
            this.dateTime = DateTime.parseDateTime(this.value);
        } catch (NumberFormatException e2) {
            throw new ParseException(CoreErrorDomain.ERR.invalidDatetime.withInternalReason("Invalid date/time format: '" + this.value + "'."));
        }
    }
}
