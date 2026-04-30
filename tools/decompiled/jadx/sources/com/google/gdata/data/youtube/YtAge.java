package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "age", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtAge extends AbstractExtension {
    private int age;

    public YtAge() {
    }

    public YtAge(int i) {
        this.age = i;
    }

    public void setAge(int i) {
        this.age = i;
    }

    public int getAge() {
        return this.age;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.age > 0) {
            attributeGenerator.setContent(Integer.toString(this.age));
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        try {
            this.age = Integer.parseInt(attributeHelper.consumeContent(true));
        } catch (NumberFormatException e2) {
            throw new ParseException("Age should be an integer");
        }
    }
}
