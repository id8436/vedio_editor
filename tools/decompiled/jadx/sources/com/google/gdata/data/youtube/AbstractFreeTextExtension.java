package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractFreeTextExtension extends AbstractExtension {
    private String content;

    protected AbstractFreeTextExtension() {
    }

    protected AbstractFreeTextExtension(String str) {
        this.content = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.content != null) {
            attributeGenerator.setContent(this.content);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.content = attributeHelper.consumeContent(false);
        if (this.content == null) {
            this.content = "";
        }
    }
}
