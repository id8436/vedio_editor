package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "content", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaContent extends AbstractMediaResource {
    private int bitrate;
    private int channels;
    private int duration;
    private Expression expression;
    private long fileSize;
    private int framerate;
    private boolean isDefault;
    private String language;
    private String medium;
    private int samplingrate;
    private String type;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Expression {
        SAMPLE,
        FULL,
        NONSTOP
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(MediaContent.class);
        defaultDescription.setRepeatable(z);
        return defaultDescription;
    }

    public int getBitrate() {
        return this.bitrate;
    }

    public void setBitrate(int i) {
        this.bitrate = i;
    }

    public int getChannels() {
        return this.channels;
    }

    public void setChannels(int i) {
        this.channels = i;
    }

    public int getDuration() {
        return this.duration;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public Expression getExpression() {
        return this.expression;
    }

    public void setExpression(Expression expression) {
        this.expression = expression;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public void setFileSize(long j) {
        this.fileSize = j;
    }

    public int getFramerate() {
        return this.framerate;
    }

    public void setFramerate(int i) {
        this.framerate = i;
    }

    public boolean isDefault() {
        return this.isDefault;
    }

    public void setDefault(boolean z) {
        this.isDefault = z;
    }

    public String getMedium() {
        return this.medium;
    }

    public void setMedium(String str) {
        this.medium = str;
    }

    public int getSamplingrate() {
        return this.samplingrate;
    }

    public void setSamplingrate(int i) {
        this.samplingrate = i;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractMediaResource, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.fileSize > 0) {
            attributeGenerator.put("fileSize", this.fileSize);
        }
        attributeGenerator.put("type", this.type);
        attributeGenerator.put("medium", this.medium);
        if (this.isDefault) {
            attributeGenerator.put("isDefault", this.isDefault);
        }
        attributeGenerator.put("expression", this.expression, new AttributeHelper.LowerCaseEnumToAttributeValue());
        if (this.bitrate > 0) {
            attributeGenerator.put("bitrate", this.bitrate);
        }
        if (this.framerate > 0) {
            attributeGenerator.put("framerate", this.framerate);
        }
        if (this.samplingrate > 0) {
            attributeGenerator.put("samplingrate", this.samplingrate);
        }
        if (this.channels > 0) {
            attributeGenerator.put("channels", this.channels);
        }
        if (this.duration > 0) {
            attributeGenerator.put("duration", this.duration);
        }
        attributeGenerator.put("language", this.language);
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractMediaResource, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.fileSize = attributeHelper.consumeLong("fileSize", false);
        this.type = attributeHelper.consume("type", false);
        this.medium = attributeHelper.consume("medium", false);
        this.isDefault = attributeHelper.consumeBoolean("isDefault", false);
        this.expression = (Expression) attributeHelper.consumeEnum("expression", false, Expression.class);
        this.bitrate = attributeHelper.consumeInteger("bitrate", false);
        this.framerate = attributeHelper.consumeInteger("framerate", false);
        this.samplingrate = attributeHelper.consumeInteger("samplingrate", false);
        this.channels = attributeHelper.consumeInteger("channels", false);
        this.duration = attributeHelper.consumeInteger("duration", false);
        this.language = attributeHelper.consume("language", false);
    }
}
