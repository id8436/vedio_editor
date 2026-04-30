package com.google.gdata.data.extensions;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = When.WHEN, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class When extends ExtensionPoint implements Extension {
    private static final String END_TIME = "endTime";
    private static final String START_TIME = "startTime";
    private static final String VALUE_STRING = "valueString";
    static final String WHEN = "when";
    protected DateTime endTime;
    protected String rel;
    protected DateTime startTime;
    protected String valueString;

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        this.rel = str;
    }

    public DateTime getStartTime() {
        return this.startTime;
    }

    public void setStartTime(DateTime dateTime) {
        this.startTime = dateTime;
    }

    public DateTime getEndTime() {
        return this.endTime;
    }

    public void setEndTime(DateTime dateTime) {
        this.endTime = dateTime;
    }

    public String getValueString() {
        return this.valueString;
    }

    public void setValueString(String str) {
        this.valueString = str;
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(When.class);
        defaultDescription.setRepeatable(z);
        return defaultDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() throws IllegalStateException {
        if (this.startTime == null) {
            throwExceptionForMissingAttribute("startTime");
        }
        if (this.endTime != null) {
            if (this.startTime.compareTo(this.endTime) > 0) {
                throw new IllegalStateException("g:when/@startTime must be less than or equal to g:when/@endTime.");
            }
            if (this.startTime.isDateOnly() != this.endTime.isDateOnly()) {
                throw new IllegalStateException((this.startTime.isDateOnly() ? "Date" : "Date/time") + " value expected.");
            }
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("startTime", (Object) this.startTime);
        attributeGenerator.put(END_TIME, (Object) this.endTime);
        attributeGenerator.put(VALUE_STRING, this.valueString);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.startTime = attributeHelper.consumeDateTime("startTime", true);
        this.endTime = attributeHelper.consumeDateTime(END_TIME, false);
        this.valueString = attributeHelper.consume(VALUE_STRING, false);
    }
}
