package com.google.gdata.data.media.mediarss;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.HtmlTextConstruct;
import com.google.gdata.data.PlainTextConstruct;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractTextElement extends AbstractExtension {
    private TextConstruct content;

    public boolean isEmpty() {
        return this.content.isEmpty();
    }

    public TextConstruct getContent() {
        return this.content;
    }

    public void setHtmlContent(String str) {
        this.content = new HtmlTextConstruct(str);
    }

    public void setPlainTextContent(String str) {
        this.content = new PlainTextConstruct(str);
    }

    public String getPlainTextContent() {
        if (this.content == null) {
            return null;
        }
        return this.content.getPlainText();
    }

    @Override // com.google.gdata.data.AbstractExtension
    public void putAttributes(AttributeGenerator attributeGenerator) {
        if (this.content != null) {
            attributeGenerator.put("type", this.content.getType() == 1 ? "plain" : BehanceSDKPublishConstants.KEY_HTML);
            if (this.content != null) {
                if (this.content instanceof HtmlTextConstruct) {
                    attributeGenerator.setContent(((HtmlTextConstruct) this.content).getHtml());
                } else {
                    attributeGenerator.setContent(this.content.getPlainText());
                }
            }
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public final XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        AttributeHelper attributeHelper = new AttributeHelper(attributes);
        String strConsume = attributeHelper.consume("type", false);
        consumeAttributes(attributeHelper);
        if (strConsume == null || strConsume.equals("plain")) {
            PlainTextConstruct plainTextConstruct = new PlainTextConstruct();
            this.content = plainTextConstruct;
            plainTextConstruct.getClass();
            return new PlainTextConstruct.AtomHandler(plainTextConstruct, attributeHelper) { // from class: com.google.gdata.data.media.mediarss.AbstractTextElement.1
                final /* synthetic */ AttributeHelper val$attrsHelper;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                    this.val$attrsHelper = attributeHelper;
                    plainTextConstruct.getClass();
                }

                @Override // com.google.gdata.data.PlainTextConstruct.AtomHandler, com.google.gdata.util.XmlParser.ElementHandler
                public void processEndElement() throws ParseException {
                    super.processEndElement();
                    this.val$attrsHelper.assertAllConsumed();
                }
            };
        }
        if (strConsume.equals(BehanceSDKPublishConstants.KEY_HTML)) {
            HtmlTextConstruct htmlTextConstruct = new HtmlTextConstruct();
            this.content = htmlTextConstruct;
            htmlTextConstruct.getClass();
            return new HtmlTextConstruct.AtomHandler(htmlTextConstruct, attributeHelper) { // from class: com.google.gdata.data.media.mediarss.AbstractTextElement.2
                final /* synthetic */ AttributeHelper val$attrsHelper;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                    this.val$attrsHelper = attributeHelper;
                    htmlTextConstruct.getClass();
                }

                @Override // com.google.gdata.data.HtmlTextConstruct.AtomHandler, com.google.gdata.util.XmlParser.ElementHandler
                public void processEndElement() throws ParseException {
                    super.processEndElement();
                    this.val$attrsHelper.assertAllConsumed();
                }
            };
        }
        throw new ParseException(CoreErrorDomain.ERR.unsupportedTextType);
    }
}
