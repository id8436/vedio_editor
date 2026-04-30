package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractMediaResource extends ExtensionPoint implements Extension {
    private int height;
    private String url;
    private int width;

    AbstractMediaResource() {
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("url", this.url);
        if (this.height > 0) {
            attributeGenerator.put("height", this.height);
        }
        if (this.width > 0) {
            attributeGenerator.put("width", this.width);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.url = attributeHelper.consume("url", false);
        this.height = attributeHelper.consumeInteger("height", false);
        this.width = attributeHelper.consumeInteger("width", false);
    }
}
