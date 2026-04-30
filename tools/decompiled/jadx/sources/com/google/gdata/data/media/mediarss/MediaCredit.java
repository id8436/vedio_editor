package com.google.gdata.data.media.mediarss;

import com.google.gdata.client.appsforyourdomain.AppsGroupsService;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "credit", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaCredit extends AbstractElementWithContent {
    public static final String DEFAULT_SCHEME = "urn:ebu";
    private String role;
    private String scheme;

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ String getContent() {
        return super.getContent();
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ void setContent(String str) {
        super.setContent(str);
    }

    public String getRole() {
        return this.role;
    }

    public void setRole(String str) {
        this.role = str;
    }

    public String getScheme() {
        return this.scheme;
    }

    public void setScheme(String str) {
        this.scheme = str;
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.put(AppsGroupsService.APPS_PROP_GROUP_ROLE, this.role);
        attributeGenerator.put("scheme", this.scheme);
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.role = attributeHelper.consume(AppsGroupsService.APPS_PROP_GROUP_ROLE, false);
        this.scheme = attributeHelper.consume("scheme", false);
    }
}
