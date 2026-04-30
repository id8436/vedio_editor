package com.adobe.premiereclip.prexport.fcpxml.clip;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import com.google.common.net.HttpHeaders;

/* JADX INFO: loaded from: classes2.dex */
public class TitleTrackClip extends VideoTrackClip {
    private String mTitleString;

    public TitleTrackClip(String str, long j) {
        super("", null, 0L, j);
        this.mTitleString = str;
    }

    private void addValueEntryElement(XmlElement xmlElement, String str, String str2) {
        XmlElement xmlElement2 = new XmlElement("valueentry");
        xmlElement2.addChild(new XmlElement("name", str));
        xmlElement2.addChild(new XmlElement("value", str2));
        xmlElement.addChild(xmlElement2);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip, com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("generatoritem");
        xmlElement2.setAttribute("id", "Text");
        xmlElement2.addChild(new XmlElement("name", "Text"));
        xmlElement2.addChild(new XmlElement("duration", String.valueOf(this.mDuration)));
        XmlElement xmlElement3 = new XmlElement("rate");
        xmlElement3.addChild(new XmlElement("ntsc", XmlElement.convertBooltoString(true)));
        xmlElement3.addChild(new XmlElement("timebase", String.valueOf(Utils.VideoTimebase.P_30.getNumVal())));
        xmlElement2.addChild(xmlElement3);
        xmlElement2.addChild(new XmlElement("in", String.valueOf(this.mInPoint)));
        xmlElement2.addChild(new XmlElement("out", String.valueOf(this.mOutPoint)));
        xmlElement2.addChild(new XmlElement("start", String.valueOf(this.mStart)));
        xmlElement2.addChild(new XmlElement("end", String.valueOf(this.mEnd)));
        xmlElement2.addChild(new XmlElement("alphatype", Utils.VideoAlphaTypeStrings[Utils.VideoAlphaType.black.getNumVal()]));
        XmlElement xmlElement4 = new XmlElement("effect");
        xmlElement4.addChild(new XmlElement("name", "Text"));
        xmlElement4.addChild(new XmlElement("effectid", "Text"));
        xmlElement4.addChild(new XmlElement("effectcategory", "Text"));
        xmlElement4.addChild(new XmlElement("effecttype", "generator"));
        xmlElement4.addChild(new XmlElement("mediatype", Utils.MediaTypeStrings[Utils.MediaType.video.getNumVal()]));
        XmlElement xmlElement5 = new XmlElement("parameter");
        xmlElement5.addChild(new XmlElement("parameterid", "str"));
        xmlElement5.addChild(new XmlElement("name", "Text"));
        xmlElement5.addChild(new XmlElement("value", this.mTitleString));
        xmlElement4.addChild(xmlElement5);
        XmlElement xmlElement6 = new XmlElement("parameter");
        xmlElement6.addChild(new XmlElement("parameterid", "fontname"));
        xmlElement6.addChild(new XmlElement("name", "Font"));
        xmlElement6.addChild(new XmlElement("value", "Lucida Grande"));
        xmlElement4.addChild(xmlElement6);
        XmlElement xmlElement7 = new XmlElement("parameter");
        xmlElement7.addChild(new XmlElement("parameterid", "fontsize"));
        xmlElement7.addChild(new XmlElement("name", "Size"));
        xmlElement7.addChild(new XmlElement("valuemin", "0"));
        xmlElement7.addChild(new XmlElement("valuemax", "1000"));
        xmlElement7.addChild(new XmlElement("value", "36"));
        xmlElement4.addChild(xmlElement7);
        XmlElement xmlElement8 = new XmlElement("parameter");
        xmlElement8.addChild(new XmlElement("parameterid", "fontstyle"));
        xmlElement8.addChild(new XmlElement("name", "Style"));
        xmlElement8.addChild(new XmlElement("valuemin", "1"));
        xmlElement8.addChild(new XmlElement("valuemax", "4"));
        XmlElement xmlElement9 = new XmlElement("valuelist", "36");
        addValueEntryElement(xmlElement9, "Plain", "1");
        addValueEntryElement(xmlElement9, "Bold", "2");
        addValueEntryElement(xmlElement9, "Italic", "3");
        addValueEntryElement(xmlElement9, "Bold/Italic", "4");
        xmlElement8.addChild(xmlElement9);
        xmlElement8.addChild(new XmlElement("value", "1"));
        xmlElement4.addChild(xmlElement8);
        XmlElement xmlElement10 = new XmlElement("parameter");
        xmlElement10.addChild(new XmlElement("parameterid", "fontalign"));
        xmlElement10.addChild(new XmlElement("name", "Alignment"));
        xmlElement10.addChild(new XmlElement("valuemin", "1"));
        xmlElement10.addChild(new XmlElement("valuemax", "3"));
        XmlElement xmlElement11 = new XmlElement("valuelist", "36");
        addValueEntryElement(xmlElement11, "Left", "1");
        addValueEntryElement(xmlElement11, "Center", "2");
        addValueEntryElement(xmlElement11, "Right", "3");
        xmlElement10.addChild(xmlElement11);
        xmlElement10.addChild(new XmlElement("value", "2"));
        xmlElement4.addChild(xmlElement10);
        XmlElement xmlElement12 = new XmlElement("parameter");
        xmlElement12.addChild(new XmlElement("parameterid", "fontcolor"));
        xmlElement12.addChild(new XmlElement("name", "Font Color"));
        XmlElement xmlElement13 = new XmlElement("value");
        xmlElement13.addChild(new XmlElement("alpha", "255"));
        xmlElement13.addChild(new XmlElement(AdobePSDCompositeConstants.AdobePSDCompositeColorRedKey, "255"));
        xmlElement13.addChild(new XmlElement(AdobePSDCompositeConstants.AdobePSDCompositeColorGreenKey, "255"));
        xmlElement13.addChild(new XmlElement(AdobePSDCompositeConstants.AdobePSDCompositeColorBlueKey, "255"));
        xmlElement12.addChild(xmlElement13);
        xmlElement4.addChild(xmlElement12);
        XmlElement xmlElement14 = new XmlElement("parameter");
        xmlElement14.addChild(new XmlElement("parameterid", "origin"));
        xmlElement14.addChild(new XmlElement("name", HttpHeaders.ORIGIN));
        XmlElement xmlElement15 = new XmlElement("value");
        xmlElement15.addChild(new XmlElement("horiz", "0"));
        xmlElement15.addChild(new XmlElement("vert", "0"));
        xmlElement14.addChild(xmlElement15);
        xmlElement4.addChild(xmlElement14);
        XmlElement xmlElement16 = new XmlElement("parameter");
        xmlElement16.addChild(new XmlElement("parameterid", "fonttrack"));
        xmlElement16.addChild(new XmlElement("name", "Tracking"));
        xmlElement16.addChild(new XmlElement("valuemin", "-200"));
        xmlElement16.addChild(new XmlElement("valuemax", "200"));
        xmlElement16.addChild(new XmlElement("value", "1"));
        xmlElement4.addChild(xmlElement16);
        XmlElement xmlElement17 = new XmlElement("parameter");
        xmlElement17.addChild(new XmlElement("parameterid", "leading"));
        xmlElement17.addChild(new XmlElement("name", "Leading"));
        xmlElement17.addChild(new XmlElement("valuemin", "-100"));
        xmlElement17.addChild(new XmlElement("valuemax", "100"));
        xmlElement17.addChild(new XmlElement("value", "0"));
        xmlElement4.addChild(xmlElement17);
        XmlElement xmlElement18 = new XmlElement("parameter");
        xmlElement18.addChild(new XmlElement("parameterid", "aspect"));
        xmlElement18.addChild(new XmlElement("name", "Aspect"));
        xmlElement18.addChild(new XmlElement("valuemin", "0.1"));
        xmlElement18.addChild(new XmlElement("valuemax", "5"));
        xmlElement18.addChild(new XmlElement("value", "1"));
        xmlElement4.addChild(xmlElement18);
        XmlElement xmlElement19 = new XmlElement("parameter");
        xmlElement19.addChild(new XmlElement("parameterid", "autokern"));
        xmlElement19.addChild(new XmlElement("name", "Auto Kerning"));
        xmlElement19.addChild(new XmlElement("value", XmlElement.convertBooltoString(true)));
        xmlElement4.addChild(xmlElement19);
        XmlElement xmlElement20 = new XmlElement("parameter");
        xmlElement20.addChild(new XmlElement("parameterid", "subpixel"));
        xmlElement20.addChild(new XmlElement("name", "Subpixel"));
        xmlElement20.addChild(new XmlElement("value", XmlElement.convertBooltoString(true)));
        xmlElement4.addChild(xmlElement20);
        xmlElement2.addChild(xmlElement4);
        XmlElement xmlElement21 = new XmlElement("sourcetrack");
        xmlElement21.addChild(new XmlElement("mediatype", Utils.MediaTypeStrings[Utils.MediaType.video.getNumVal()]));
        xmlElement2.addChild(xmlElement21);
        xmlElement.addChild(xmlElement2);
    }
}
