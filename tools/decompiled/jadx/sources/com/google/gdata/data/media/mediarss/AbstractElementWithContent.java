package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes3.dex */
abstract class AbstractElementWithContent extends AbstractExtension {
    private String content;

    AbstractElementWithContent() {
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(this.content);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.content = attributeHelper.consumeContent(false);
    }
}
