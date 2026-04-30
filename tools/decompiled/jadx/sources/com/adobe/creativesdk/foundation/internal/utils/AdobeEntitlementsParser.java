package com.adobe.creativesdk.foundation.internal.utils;

import android.util.Xml;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.IOException;
import java.io.StringReader;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeEntitlementsParser {
    String data;
    Set<String> productLeids;
    Pattern photoshopPattern = Pattern.compile(".*Photoshop.*");
    Pattern illustratorPattern = Pattern.compile(".*Illustrator.*");
    Pattern inDesignPattern = Pattern.compile(".*InDesign.*");

    public AdobeEntitlementsParser(String str) {
        this.data = str;
    }

    public Set<String> getProductLeids() {
        if (this.data == null) {
            return null;
        }
        if (this.productLeids == null) {
            this.productLeids = new HashSet();
        } else {
            this.productLeids.clear();
        }
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        try {
            xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            xmlPullParserNewPullParser.setInput(new StringReader(this.data));
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 2) {
                    if (xmlPullParserNewPullParser.getName().equals("leid")) {
                        String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "name");
                        if (attributeValue != null && this.photoshopPattern.matcher(attributeValue).matches()) {
                            this.productLeids.add("Photoshop");
                        } else if (attributeValue != null && this.illustratorPattern.matcher(attributeValue).matches()) {
                            this.productLeids.add(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetIllustrator);
                        } else if (attributeValue != null && this.inDesignPattern.matcher(attributeValue).matches()) {
                            this.productLeids.add(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetInDesign);
                        }
                    }
                }
            }
        } catch (IOException e2) {
            AdobeLogger.log(Level.ERROR, AdobeEntitlementsParser.class.getName(), "Error while parsing entitlements xml", e2);
        } catch (XmlPullParserException e3) {
            AdobeLogger.log(Level.ERROR, AdobeEntitlementsParser.class.getName(), "Error while parsing entitlements xml", e3);
        }
        return this.productLeids;
    }
}
