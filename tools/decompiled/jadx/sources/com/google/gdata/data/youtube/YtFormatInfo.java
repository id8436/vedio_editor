package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "formatInfo", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtFormatInfo extends AbstractExtension {
    private static final String DROP_FRAME = "dropFrame";
    private static final String FORMAT = "format";
    private static final String FRAME_RATE = "frameRate";
    private static final String TIME_OFFSET = "timeOffset";
    private boolean dropFrame;
    private String format;
    private String frameRate;
    private String timeOffset;

    public YtFormatInfo() {
        this.dropFrame = false;
    }

    public YtFormatInfo(String str, String str2, String str3, boolean z) {
        this.format = str;
        this.frameRate = str2;
        this.timeOffset = str3;
        this.dropFrame = z;
    }

    public String getFormat() {
        return this.format;
    }

    public void setFormat(String str) {
        this.format = str;
    }

    public String getFrameRate() {
        return this.frameRate;
    }

    public void setFrameRate(String str) {
        this.frameRate = str;
    }

    public String getTimeOffset() {
        return this.timeOffset;
    }

    public void setTimeOffset(String str) {
        this.timeOffset = str;
    }

    public boolean getDropFrame() {
        return this.dropFrame;
    }

    public void setDropFrame(boolean z) {
        this.dropFrame = z;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.format = attributeHelper.consume(FORMAT, false);
        this.frameRate = attributeHelper.consume("frameRate", false);
        this.timeOffset = attributeHelper.consume(TIME_OFFSET, false);
        this.dropFrame = attributeHelper.consumeBoolean(DROP_FRAME, false);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.format != null) {
            attributeGenerator.put(FORMAT, this.format);
        }
        if (this.frameRate != null) {
            attributeGenerator.put("frameRate", this.frameRate);
        }
        if (this.timeOffset != null) {
            attributeGenerator.put(TIME_OFFSET, this.timeOffset);
        }
        if (this.dropFrame) {
            attributeGenerator.put(DROP_FRAME, this.dropFrame);
        }
    }
}
