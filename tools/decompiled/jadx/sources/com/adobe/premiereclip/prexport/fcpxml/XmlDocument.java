package com.adobe.premiereclip.prexport.fcpxml;

/* JADX INFO: loaded from: classes2.dex */
public class XmlDocument extends XmlElement {
    @Override // com.adobe.premiereclip.prexport.fcpxml.XmlElement
    public String toString(String str, String str2, int i) {
        return "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + super.toString(str, str2, -1);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.XmlElement
    public String toString() {
        return toString("", "", -1);
    }
}
