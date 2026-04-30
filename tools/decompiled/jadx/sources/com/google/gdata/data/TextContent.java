package com.google.gdata.data;

import com.google.gdata.data.TextConstruct;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class TextContent extends Content implements ITextContent {
    protected TextConstruct content;

    public TextContent() {
    }

    public TextContent(TextConstruct textConstruct) {
        this.content = textConstruct;
    }

    @Override // com.google.gdata.data.Content, com.google.gdata.data.IContent
    public int getType() {
        return 1;
    }

    @Override // com.google.gdata.data.Content, com.google.gdata.data.IContent
    public String getLang() {
        if (this.content == null) {
            return null;
        }
        return this.content.getLang();
    }

    @Override // com.google.gdata.data.ITextContent
    public TextConstruct getContent() {
        return this.content;
    }

    public void setContent(TextConstruct textConstruct) {
        this.content = textConstruct;
    }

    @Override // com.google.gdata.data.Content
    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.content != null) {
            this.content.generateAtom(xmlWriter, "content");
        }
    }

    @Override // com.google.gdata.data.Content
    public void generateRss(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.content != null) {
            this.content.generateRss(xmlWriter, "description", TextConstruct.RssFormat.FULL_HTML);
        }
    }
}
