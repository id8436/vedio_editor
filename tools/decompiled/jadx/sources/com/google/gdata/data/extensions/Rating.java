package com.google.gdata.data.extensions;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Rating extends ExtensionPoint {
    protected Float average;
    protected Integer max;
    protected Integer min;
    protected Integer numRaters;
    protected Integer rating;
    protected String rel;

    public final class Rel {
        public static final String OVERALL = null;
        public static final String PRICE = "http://schemas.google.com/g/2005#price";
        public static final String QUALITY = "http://schemas.google.com/g/2005#quality";
    }

    public Rating() {
        this(null);
    }

    public Rating(Integer num) {
        this.rating = num;
    }

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        this.rel = str;
    }

    public Integer getValue() {
        return this.rating;
    }

    public void setValue(Integer num) {
        this.rating = num;
    }

    public Integer getMin() {
        return this.min;
    }

    public void setMin(Integer num) {
        this.min = num;
    }

    public Integer getMax() {
        return this.max;
    }

    public void setMax(Integer num) {
        this.max = num;
    }

    public Integer getNumRaters() {
        return this.numRaters;
    }

    public void setNumRaters(Integer num) {
        this.numRaters = num;
    }

    public Float getAverage() {
        return this.average;
    }

    public void setAverage(Float f2) {
        this.average = f2;
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Rating.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("rating");
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.rating != null) {
            arrayList.add(new XmlWriter.Attribute("value", this.rating.toString()));
        }
        if (this.min != null) {
            arrayList.add(new XmlWriter.Attribute("min", this.min.toString()));
        }
        if (this.max != null) {
            arrayList.add(new XmlWriter.Attribute("max", this.max.toString()));
        }
        if (this.numRaters != null) {
            arrayList.add(new XmlWriter.Attribute("numRaters", this.numRaters.toString()));
        }
        if (this.average != null) {
            arrayList.add(new XmlWriter.Attribute("average", String.format(Locale.US, "%2.2f", this.average)));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "rating", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "rating");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Rating.this, extensionProfile, Rating.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws NumberFormatException {
            if (str.equals("")) {
                if (str2.equals("value")) {
                    Rating.this.rating = Integer.valueOf(Integer.parseInt(str3));
                    return;
                }
                if (str2.equals("max")) {
                    Rating.this.max = Integer.valueOf(Integer.parseInt(str3));
                    return;
                }
                if (str2.equals("min")) {
                    Rating.this.min = Integer.valueOf(Integer.parseInt(str3));
                    return;
                }
                if (str2.equals("rel")) {
                    Rating.this.rel = str3;
                    return;
                }
                if (str2.equals("numRaters")) {
                    Rating.this.numRaters = Integer.valueOf(Integer.parseInt(str3));
                } else if (str2.equals("average")) {
                    Rating.this.average = Float.valueOf(str3);
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Rating.this.rating == null && Rating.this.average == null) {
                throw new ParseException(CoreErrorDomain.ERR.valueOrAverageRequired);
            }
            if (Rating.this.rating != null && ((Rating.this.min != null && Rating.this.rating.intValue() < Rating.this.min.intValue()) || (Rating.this.max != null && Rating.this.rating.intValue() > Rating.this.max.intValue()))) {
                throw new ParseException(CoreErrorDomain.ERR.invalidValueRatingAttribute);
            }
            if (Rating.this.average != null) {
                if ((Rating.this.min != null && Rating.this.average.floatValue() < Rating.this.min.intValue()) || (Rating.this.max != null && Rating.this.average.floatValue() > Rating.this.max.intValue())) {
                    throw new ParseException(CoreErrorDomain.ERR.invalidAverageRatingAttribute);
                }
            }
        }
    }
}
