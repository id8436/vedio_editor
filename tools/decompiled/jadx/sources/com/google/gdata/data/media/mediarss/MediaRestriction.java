package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "restriction", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaRestriction extends AbstractElementWithContent {
    private Relationship relationship;
    private Type type;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Relationship {
        ALLOW,
        DENY
    }

    /* JADX INFO: loaded from: classes3.dex */
    public enum Type {
        COUNTRY,
        URI
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ String getContent() {
        return super.getContent();
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent
    public /* bridge */ /* synthetic */ void setContent(String str) {
        super.setContent(str);
    }

    public Relationship getRelationship() {
        return this.relationship;
    }

    public void setRelationship(Relationship relationship) {
        this.relationship = relationship;
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public void setContentAsCountryCodeList(List<String> list) {
        if (list.isEmpty()) {
            setContent(null);
            return;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append(' ');
            }
            sb.append(str);
        }
        setContent(sb.toString());
    }

    public List<String> getContentAsCountryCodeList() {
        if (getContent() == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(getContent(), " ");
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken().trim());
        }
        return arrayList;
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.put("type", this.type, new AttributeHelper.LowerCaseEnumToAttributeValue());
        attributeGenerator.put("relationship", this.relationship, new AttributeHelper.LowerCaseEnumToAttributeValue());
    }

    @Override // com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.type = (Type) attributeHelper.consumeEnum("type", false, Type.class);
        this.relationship = (Relationship) attributeHelper.consumeEnum("relationship", false, Relationship.class);
    }
}
