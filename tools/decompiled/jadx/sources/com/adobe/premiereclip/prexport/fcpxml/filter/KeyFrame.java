package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.Xmlable;

/* JADX INFO: loaded from: classes2.dex */
public class KeyFrame extends Xmlable {
    private String mValue;
    private long mWhen;

    public KeyFrame(long j, String str) {
        this.mWhen = j;
        this.mValue = str;
    }

    public KeyFrame(long j, float f2) {
        this.mWhen = j;
        this.mValue = String.valueOf(f2);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("keyframe");
        xmlElement2.addChild(new XmlElement("when", String.valueOf(this.mWhen)));
        xmlElement2.addChild(new XmlElement("value", this.mValue));
        xmlElement.addChild(xmlElement2);
    }
}
