package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import com.google.gdata.client.spreadsheet.ListQuery;

/* JADX INFO: loaded from: classes2.dex */
public class SpeedFilter extends Filter {
    public SpeedFilter() {
        super("Time Remap", "timeremap", "motion", "motion", Utils.MediaType.video);
        this.mParameters.put(DCXProjectKeys.kDCXKey_Clip_speed, new FilterParameter(DCXProjectKeys.kDCXKey_Clip_speed, DCXProjectKeys.kDCXKey_Clip_speed, 100.0f, "-10000", "10000"));
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.filter.Filter, com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        super.toXmlElement(xmlElement);
        XmlElement child = xmlElement.getChild("filter").getChild("effect");
        XmlElement child2 = child.getChild("parameter");
        XmlElement xmlElement2 = new XmlElement("parameter");
        xmlElement2.setAttribute("authoringApp", "PremierePro");
        xmlElement2.addChild(new XmlElement("parameterid", ListQuery.REVERSE));
        xmlElement2.addChild(new XmlElement("name", ListQuery.REVERSE));
        xmlElement2.addChild(new XmlElement("value", "FALSE"));
        child2.addChild(xmlElement2);
        XmlElement xmlElement3 = new XmlElement("parameter");
        xmlElement3.setAttribute("authoringApp", "PremierePro");
        xmlElement3.addChild(new XmlElement("parameterid", "frameblending"));
        xmlElement3.addChild(new XmlElement("name", "frameblending"));
        xmlElement3.addChild(new XmlElement("value", "FALSE"));
        child2.addChild(xmlElement3);
        XmlElement xmlElement4 = new XmlElement("parameter");
        xmlElement4.setAttribute("authoringApp", "PremierePro");
        xmlElement4.addChild(new XmlElement("parameterid", "variablespeed"));
        xmlElement4.addChild(new XmlElement("name", "variablespeed"));
        xmlElement4.addChild(new XmlElement("valuemin", "0"));
        xmlElement4.addChild(new XmlElement("valuemax", "1"));
        xmlElement4.addChild(new XmlElement("value", "0"));
        child.addChild(xmlElement4);
        XmlElement xmlElement5 = new XmlElement("parameter");
        xmlElement5.setAttribute("authoringApp", "PremierePro");
        xmlElement5.addChild(new XmlElement("parameterid", "mappedduration"));
        xmlElement5.addChild(new XmlElement("name", "mappedduration"));
        XmlElement xmlElement6 = new XmlElement("value");
        XmlElement xmlElement7 = new XmlElement("timecode");
        XmlElement xmlElement8 = new XmlElement("rate");
        xmlElement8.addChild(new XmlElement("timebase", "0"));
        xmlElement7.addChild(xmlElement8);
        xmlElement7.addChild(new XmlElement("string", "0"));
        xmlElement7.addChild(new XmlElement("frame", "0"));
        xmlElement7.addChild(new XmlElement("displayformat", "NDF"));
        xmlElement6.addChild(xmlElement7);
        xmlElement5.addChild(xmlElement6);
        child.addChild(xmlElement5);
    }
}
