package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.Xmlable;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Filter extends Xmlable {
    private String mCategory;
    private String mId;
    private Utils.MediaType mMediaType;
    private String mName;
    protected HashMap<String, FilterParameter> mParameters = new HashMap<>();
    private String mType;

    public Filter(String str, String str2, String str3, String str4, Utils.MediaType mediaType) {
        this.mName = str;
        this.mId = str2;
        this.mCategory = str3;
        this.mType = str4;
        this.mMediaType = mediaType;
    }

    public void setParamValue(String str, String str2) {
        if (this.mParameters.containsKey(str)) {
            this.mParameters.get(str).setValue(str2);
        }
    }

    public void setParamValue(String str, float f2) {
        if (this.mParameters.containsKey(str)) {
            this.mParameters.get(str).setValue(f2);
        }
    }

    public void setParamValue(String str, String str2, long j) {
        if (this.mParameters.containsKey(str)) {
            this.mParameters.get(str).setValue(str2, j);
        }
    }

    public void setParamValue(String str, float f2, long j) {
        if (this.mParameters.containsKey(str)) {
            this.mParameters.get(str).setValue(f2, j);
        }
    }

    public String getParamValue(String str) {
        return this.mParameters.containsKey(str) ? this.mParameters.get(str).getValue() : "";
    }

    public void setParamValue(String str, float f2, float f3) {
        if (!this.mParameters.containsKey(str)) {
            this.mParameters.put(str, new HorizVertFilterParameter(str, str, (int) f2, (int) f3));
        }
        this.mParameters.get(str).setValue(f2, f3);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("filter");
        XmlElement xmlElement3 = new XmlElement("effect");
        xmlElement3.addChild(new XmlElement("name", this.mName));
        xmlElement3.addChild(new XmlElement("effectid", this.mId));
        if (!this.mCategory.equals("")) {
            xmlElement3.addChild(new XmlElement("effectcategory", this.mCategory));
        }
        if (!this.mType.equals("")) {
            xmlElement3.addChild(new XmlElement("effecttype", this.mType));
        }
        xmlElement3.addChild(new XmlElement("mediatype", Utils.MediaTypeStrings[this.mMediaType.getNumVal()]));
        xmlElement2.addChild(xmlElement3);
        if (this.mParameters.size() > 0) {
            for (Map.Entry<String, FilterParameter> entry : this.mParameters.entrySet()) {
                String key = entry.getKey();
                FilterParameter value = entry.getValue();
                XmlElement xmlElement4 = new XmlElement("parameter");
                xmlElement4.setAttribute("authoringApp", "PremierePro");
                xmlElement4.addChild(new XmlElement("parameterid", value.getId()));
                xmlElement4.addChild(new XmlElement("name", key));
                XmlElement xmlElement5 = new XmlElement("value");
                List<XmlElement> valueElements = value.getValueElements();
                if (!valueElements.isEmpty()) {
                    Iterator<XmlElement> it = valueElements.iterator();
                    while (it.hasNext()) {
                        xmlElement5.addChild(it.next());
                    }
                } else {
                    if (!value.getMinValue().equals("")) {
                        xmlElement4.addChild(new XmlElement("valuemin", value.getMinValue()));
                    }
                    if (!value.getMaxValue().equals("")) {
                        xmlElement4.addChild(new XmlElement("valuemax", value.getMaxValue()));
                    }
                    xmlElement5.setValue(value.getValue());
                }
                xmlElement4.addChild(xmlElement5);
                Iterator<KeyFrame> it2 = value.getKeyframes().iterator();
                while (it2.hasNext()) {
                    it2.next().toXmlElement(xmlElement4);
                }
                xmlElement3.addChild(xmlElement4);
            }
        }
        xmlElement.addChild(xmlElement2);
    }
}
