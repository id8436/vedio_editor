package com.google.gdata.data.photos;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GphotoOriginalVideo.XML_NAME, nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoOriginalVideo extends ExtensionPoint {
    private static final String CHANNELS = "channels";
    private static final String DURATION = "duration";
    private static final String HEIGHT = "height";
    private static final String SAMPLINGRATE = "samplingrate";
    private static final String TYPE = "type";
    private static final String WIDTH = "width";
    static final String XML_NAME = "originalvideo";
    private Integer channels = null;
    private Long duration = null;
    private Integer height = null;
    private Float samplingrate = null;
    private String type = null;
    private Integer width = null;

    public GphotoOriginalVideo() {
    }

    public GphotoOriginalVideo(Integer num, Long l, Integer num2, Float f2, String str, Integer num3) {
        setChannels(num);
        setDuration(l);
        setHeight(num2);
        setSamplingrate(f2);
        setType(str);
        setWidth(num3);
        setImmutable(true);
    }

    public Integer getChannels() {
        return this.channels;
    }

    public void setChannels(Integer num) {
        throwExceptionIfImmutable();
        this.channels = num;
    }

    public boolean hasChannels() {
        return getChannels() != null;
    }

    public Long getDuration() {
        return this.duration;
    }

    public void setDuration(Long l) {
        throwExceptionIfImmutable();
        this.duration = l;
    }

    public boolean hasDuration() {
        return getDuration() != null;
    }

    public Integer getHeight() {
        return this.height;
    }

    public void setHeight(Integer num) {
        throwExceptionIfImmutable();
        this.height = num;
    }

    public boolean hasHeight() {
        return getHeight() != null;
    }

    public Float getSamplingrate() {
        return this.samplingrate;
    }

    public void setSamplingrate(Float f2) {
        throwExceptionIfImmutable();
        this.samplingrate = f2;
    }

    public boolean hasSamplingrate() {
        return getSamplingrate() != null;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        throwExceptionIfImmutable();
        this.type = str;
    }

    public boolean hasType() {
        return getType() != null;
    }

    public Integer getWidth() {
        return this.width;
    }

    public void setWidth(Integer num) {
        throwExceptionIfImmutable();
        this.width = num;
    }

    public boolean hasWidth() {
        return getWidth() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoOriginalVideo.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(CHANNELS, (Object) this.channels);
        attributeGenerator.put("duration", (Object) this.duration);
        attributeGenerator.put("height", (Object) this.height);
        attributeGenerator.put(SAMPLINGRATE, (Object) this.samplingrate);
        attributeGenerator.put("type", this.type);
        attributeGenerator.put("width", (Object) this.width);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.channels = Integer.valueOf(attributeHelper.consumeInteger(CHANNELS, false));
        this.duration = Long.valueOf(attributeHelper.consumeLong("duration", false));
        this.height = Integer.valueOf(attributeHelper.consumeInteger("height", false));
        this.samplingrate = Float.valueOf(attributeHelper.consumeFloat(SAMPLINGRATE, false));
        this.type = attributeHelper.consume("type", false);
        this.width = Integer.valueOf(attributeHelper.consumeInteger("width", false));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        GphotoOriginalVideo gphotoOriginalVideo = (GphotoOriginalVideo) obj;
        return eq(this.channels, gphotoOriginalVideo.channels) && eq(this.duration, gphotoOriginalVideo.duration) && eq(this.height, gphotoOriginalVideo.height) && eq(this.samplingrate, gphotoOriginalVideo.samplingrate) && eq(this.type, gphotoOriginalVideo.type) && eq(this.width, gphotoOriginalVideo.width);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.channels != null) {
            iHashCode = (iHashCode * 37) + this.channels.hashCode();
        }
        if (this.duration != null) {
            iHashCode = (iHashCode * 37) + this.duration.hashCode();
        }
        if (this.height != null) {
            iHashCode = (iHashCode * 37) + this.height.hashCode();
        }
        if (this.samplingrate != null) {
            iHashCode = (iHashCode * 37) + this.samplingrate.hashCode();
        }
        if (this.type != null) {
            iHashCode = (iHashCode * 37) + this.type.hashCode();
        }
        if (this.width != null) {
            return (iHashCode * 37) + this.width.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GphotoOriginalVideo channels=" + this.channels + " duration=" + this.duration + " height=" + this.height + " samplingrate=" + this.samplingrate + " type=" + this.type + " width=" + this.width + "}";
    }
}
