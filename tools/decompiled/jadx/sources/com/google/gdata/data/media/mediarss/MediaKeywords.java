package com.google.gdata.data.media.mediarss;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "keywords", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaKeywords extends AbstractExtension {
    private final List<String> keywords = new ArrayList();

    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(MediaKeywords.class);
    }

    public List<String> getKeywords() {
        return this.keywords;
    }

    public void addKeyword(String str) {
        this.keywords.add(str);
    }

    public void addKeywords(Collection<String> collection) {
        this.keywords.addAll(collection);
    }

    public void clearKeywords() {
        this.keywords.clear();
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = true;
        for (String str : this.keywords) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append(", ");
            }
            stringBuffer.append(str);
        }
        attributeGenerator.setContent(stringBuffer.toString());
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        String strConsumeContent = attributeHelper.consumeContent(false);
        this.keywords.clear();
        if (strConsumeContent != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(strConsumeContent, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            while (stringTokenizer.hasMoreTokens()) {
                this.keywords.add(stringTokenizer.nextToken().trim());
            }
        }
    }
}
