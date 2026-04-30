package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.Xmlable;

/* JADX INFO: loaded from: classes2.dex */
public class Marker extends Xmlable {
    private String comment;
    private long inPoint;
    private String name;
    private long outPoint;

    public Marker(long j, long j2, String str, String str2) {
        this.inPoint = j;
        this.outPoint = j2;
        this.name = str;
        this.comment = str2;
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("marker");
        xmlElement2.addChild(new XmlElement("comment", this.comment));
        xmlElement2.addChild(new XmlElement("name", this.name));
        xmlElement2.addChild(new XmlElement("in", String.valueOf(this.inPoint)));
        xmlElement2.addChild(new XmlElement("out", String.valueOf(this.outPoint)));
        xmlElement.addChild(xmlElement2);
    }
}
