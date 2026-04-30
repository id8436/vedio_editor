package com.google.gdata.data.photos;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.photos.impl.ExifTag;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class ExifTags extends ExtensionPoint implements Extension, Extensible {
    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(ExifTags.class, ExifTag.getDefaultDescription());
        extensionProfile.declareArbitraryXmlExtension(ExifTags.class);
        super.declareExtensions(extensionProfile);
    }

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(ExifTags.class, Namespaces.EXIF_NAMESPACE, "tags");
    }

    public Collection<ExifTag> getExifTags() {
        return getRepeatingExtension(ExifTag.class);
    }

    public ExifTag getExifTag(String str) {
        for (ExifTag exifTag : getExifTags()) {
            if (exifTag.getName().equals(str)) {
                return exifTag;
            }
        }
        return null;
    }

    public String getExifTagValue(String str) {
        ExifTag exifTag = getExifTag(str);
        if (exifTag == null) {
            return null;
        }
        return exifTag.getValue();
    }

    public void setExifTagValue(String str, Number number) {
        if (number != null && number.floatValue() != 0.0f) {
            setExifTagValue(str, number.toString());
        } else {
            setExifTagValue(str, (String) null);
        }
    }

    public void setExifTagValue(String str, String str2) {
        ExifTag exifTag = getExifTag(str);
        if (exifTag != null) {
            removeRepeatingExtension(exifTag);
        }
        if (str2 != null) {
            addRepeatingExtension(new ExifTag(str, str2));
        }
    }

    public String getCameraMake() {
        return getExifTagValue("make");
    }

    public void setCameraMake(String str) {
        setExifTagValue("make", str);
    }

    public String getCameraModel() {
        return getExifTagValue("model");
    }

    public void setCameraModel(String str) {
        setExifTagValue("model", str);
    }

    public Integer getIsoEquivalent() throws ParseException {
        String exifTagValue = getExifTagValue("iso");
        if (exifTagValue == null) {
            return null;
        }
        try {
            return Integer.valueOf(exifTagValue);
        } catch (NumberFormatException e2) {
            throw new ParseException("Invalid Iso field " + exifTagValue, e2);
        }
    }

    public void setIsoEquivalent(Integer num) {
        setExifTagValue("iso", num);
    }

    public Float getExposureTime() throws ParseException {
        String exifTagValue = getExifTagValue("exposure");
        if (exifTagValue == null) {
            return null;
        }
        try {
            return Float.valueOf(exifTagValue);
        } catch (NumberFormatException e2) {
            throw new ParseException("Invalid exposure field " + exifTagValue, e2);
        }
    }

    public void setExposureTime(Float f2) {
        setExifTagValue("exposure", f2);
    }

    public Float getApetureFNumber() throws ParseException {
        String exifTagValue = getExifTagValue("fstop");
        if (exifTagValue == null) {
            return null;
        }
        try {
            return Float.valueOf(exifTagValue);
        } catch (NumberFormatException e2) {
            throw new ParseException("Invalid fstop field " + exifTagValue, e2);
        }
    }

    public void setApetureFNumber(Float f2) {
        setExifTagValue("fstop", f2);
    }

    public Float getDistance() throws ParseException {
        String exifTagValue = getExifTagValue("distance");
        if (exifTagValue == null) {
            return null;
        }
        try {
            return Float.valueOf(exifTagValue);
        } catch (NumberFormatException e2) {
            throw new ParseException("Invalid distance field " + exifTagValue, e2);
        }
    }

    public void setDistance(Float f2) {
        setExifTagValue("distance", f2);
    }

    public Date getTime() throws ParseException {
        String exifTagValue = getExifTagValue("time");
        if (exifTagValue == null) {
            return null;
        }
        try {
            return new Date(Long.parseLong(exifTagValue));
        } catch (NumberFormatException e2) {
            throw new ParseException("Invalid time field " + exifTagValue, e2);
        }
    }

    public void setTime(Date date) {
        setExifTagValue("time", date == null ? null : Long.toString(date.getTime()));
    }

    public Float getFocalLength() throws ParseException {
        String exifTagValue = getExifTagValue("focallength");
        if (exifTagValue == null) {
            return null;
        }
        try {
            return Float.valueOf(exifTagValue);
        } catch (NumberFormatException e2) {
            throw new ParseException("Invalid focal length " + exifTagValue, e2);
        }
    }

    public void setFocalLength(Float f2) {
        setExifTagValue("focallength", f2);
    }

    public Boolean getFlashUsed() {
        String exifTagValue = getExifTagValue("flash");
        if (exifTagValue == null) {
            return null;
        }
        return Boolean.valueOf(exifTagValue);
    }

    public void setFlashUsed(Boolean bool) {
        setExifTagValue("flash", bool == null ? null : bool.toString());
    }

    public String getImageUniqueID() {
        return getExifTagValue("imageUniqueID");
    }

    public void setImageUniqueID(String str) {
        setExifTagValue("imageUniqueID", str);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.startElement(Namespaces.EXIF_NAMESPACE, "tags", null, null);
        Iterator<ExifTag> it = getExifTags().iterator();
        while (it.hasNext()) {
            it.next().generate(xmlWriter, extensionProfile);
        }
        xmlWriter.endElement();
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(final ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new XmlParser.ElementHandler() { // from class: com.google.gdata.data.photos.ExifTags.1
            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public XmlParser.ElementHandler getChildHandler(String str3, String str4, Attributes attributes2) throws ParseException, IOException {
                if (!Namespaces.EXIF.equals(str3)) {
                    return ExifTags.this.getExtensionHandler(extensionProfile, ExifTags.class, str3, str4, attributes2);
                }
                ExifTag exifTag = new ExifTag(str4);
                ExifTags.this.addRepeatingExtension(exifTag);
                return exifTag.getHandler(extensionProfile, str3, str4, attributes2);
            }
        };
    }
}
