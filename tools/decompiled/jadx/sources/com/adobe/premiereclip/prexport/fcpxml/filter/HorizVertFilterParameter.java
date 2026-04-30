package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;

/* JADX INFO: loaded from: classes2.dex */
public class HorizVertFilterParameter extends FilterParameter {
    public HorizVertFilterParameter(String str, String str2, int i, int i2) {
        super(str, str2, "", "", "");
        setValue(i, i2);
    }

    public void setValue(int i, int i2) {
        this.mValueElements.clear();
        new XmlElement("horiz").setValue(String.valueOf(i));
        XmlElement xmlElement = new XmlElement("vert");
        xmlElement.setValue(String.valueOf(i2));
        this.mValueElements.add(xmlElement);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.filter.FilterParameter
    public void setValue(float f2, float f3) {
        this.mValueElements.clear();
        XmlElement xmlElement = new XmlElement("horiz");
        xmlElement.setValue(String.valueOf(f2));
        this.mValueElements.add(xmlElement);
        XmlElement xmlElement2 = new XmlElement("vert");
        xmlElement2.setValue(String.valueOf(f3));
        this.mValueElements.add(xmlElement2);
    }
}
