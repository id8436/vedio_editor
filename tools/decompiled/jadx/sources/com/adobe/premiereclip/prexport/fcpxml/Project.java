package com.adobe.premiereclip.prexport.fcpxml;

/* JADX INFO: loaded from: classes2.dex */
public class Project extends Bin {
    public Project(String str) {
        super(str);
        this.mXmlTagName = "project";
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Bin, com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        super.toXmlElement(xmlElement);
        xmlElement.getChild(this.mXmlTagName).setAttribute("exportedBy", "premiereclip");
    }
}
