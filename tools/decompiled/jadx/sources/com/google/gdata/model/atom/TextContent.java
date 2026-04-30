package com.google.gdata.model.atom;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.common.collect.ImmutableMap;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.data.ITextConstruct;
import com.google.gdata.data.ITextContent;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.ElementValidator;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.model.XmlBlob;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.base.StringUtil;
import com.google.gdata.util.common.html.HtmlToText;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public class TextContent extends Content implements ITextConstruct, ITextContent {
    public static final String KIND = "text";
    private static final int UNKNOWN_TYPE = -1;
    public static final ElementKey<String, TextContent> CONSTRUCT = ElementKey.of(null, String.class, TextContent.class);
    public static final ElementKey<String, TextContent> KEY = ElementKey.of(Content.KEY.getId(), String.class, TextContent.class);
    public static final ElementKey<String, XmlBlob> DIV = ElementKey.of(new QName(Namespaces.xhtmlNs, TtmlNode.TAG_DIV), String.class, XmlBlob.class);
    private static final ImmutableMap<String, Integer> TYPE_MAP = ImmutableMap.builder().put("plain", 1).put("text", 1).put(MimeTypes.TEXT_PLAIN, 1).put(BehanceSDKPublishConstants.KEY_HTML, 2).put(MimeTypes.TEXT_HTML, 2).put("xhtml", 3).build();

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(CONSTRUCT)) {
            Content.registerMetadata(metadataRegistry);
            metadataRegistry.build(CONSTRUCT).setValidator(new TextContentValidator()).addElement(DIV);
            metadataRegistry.build(KEY);
            metadataRegistry.adapt(Content.KEY, "text", KEY);
        }
    }

    class TextContentValidator implements ElementValidator {
        private TextContentValidator() {
        }

        @Override // com.google.gdata.model.ElementValidator
        public void validate(ValidationContext validationContext, Element element, ElementMetadata<?, ?> elementMetadata) {
            int type = TextContent.getType(element);
            switch (type) {
                case -1:
                    validationContext.addError(element, CoreErrorDomain.ERR.invalidTextContentType.withInternalReason("Invalid type: " + type));
                    return;
                case 0:
                default:
                    throw new IllegalStateException("Shouldn't be possible, TYPE_MAP can only map to text, html, or xhtml.");
                case 1:
                case 2:
                    if (!element.hasTextValue()) {
                        validationContext.addError(element, CoreErrorDomain.ERR.missingTextContent);
                    }
                    if (element.getElementCount() != 0) {
                        validationContext.addError(element, CoreErrorDomain.ERR.invalidChildElement.withInternalReason("Child elements not allowed on text content"));
                        return;
                    }
                    return;
                case 3:
                    if (!element.hasElement(TextContent.DIV)) {
                        validationContext.addError(element, CoreErrorDomain.ERR.missingExtensionElement.withInternalReason("xhtml text content must have a div element"));
                        return;
                    } else {
                        if (element.getElementCount() != 1) {
                            validationContext.addError(element, CoreErrorDomain.ERR.invalidChildElement.withInternalReason("xhtml must only have a single child element"));
                            return;
                        }
                        return;
                    }
            }
        }
    }

    public static TextContent create(int i, String str, XmlBlob xmlBlob) {
        switch (i) {
            case 1:
                return plainText(str);
            case 2:
                return html(str);
            case 3:
                return xhtml(xmlBlob);
            default:
                throw new IllegalArgumentException("Invalid type: " + i);
        }
    }

    public static TextContent plainText(String str) {
        TextContent textContent = new TextContent();
        textContent.setText(str);
        return textContent;
    }

    public static TextContent html(String str) {
        TextContent textContent = new TextContent();
        textContent.setHtml(str);
        return textContent;
    }

    public static TextContent xhtml(XmlBlob xmlBlob) {
        TextContent textContent = new TextContent();
        textContent.setXhtml(xmlBlob);
        return textContent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getType(Element element) {
        String str = (String) element.getAttributeValue(Content.TYPE);
        Integer numValueOf = Integer.valueOf(str == null ? 1 : TYPE_MAP.get(str).intValue());
        if (numValueOf == null) {
            return -1;
        }
        return numValueOf.intValue();
    }

    public TextContent() {
        super(CONSTRUCT);
    }

    protected TextContent(ElementKey<?, ?> elementKey) {
        super(elementKey);
    }

    protected TextContent(ElementKey<?, ?> elementKey, Content content) {
        super(elementKey, content);
    }

    @Override // com.google.gdata.model.atom.Content, com.google.gdata.data.IContent
    public int getType() {
        int type = getType(this);
        if (type == -1) {
            return 1;
        }
        return type;
    }

    public boolean isEmpty() {
        return StringUtil.isEmpty(getText()) && getElementCount() == 0;
    }

    @Override // com.google.gdata.data.ITextConstruct
    public String getPlainText() {
        switch (getType()) {
            case 1:
                return getText();
            case 2:
                return HtmlToText.htmlToPlainText(getText());
            case 3:
                return getXhtml().getBlob();
            default:
                throw new IllegalStateException("Shouldn't be possible, getType can only return TEXT, HTML, or XHTML.");
        }
    }

    public String getText() {
        return (String) getTextValue(KEY);
    }

    public String getHtml() {
        return getText();
    }

    public XmlBlob getXhtml() {
        if (getType() != 3) {
            return null;
        }
        XmlBlob xmlBlob = (XmlBlob) getElement(DIV);
        if (xmlBlob == null) {
            XmlBlob xmlBlob2 = new XmlBlob(DIV);
            setXhtml(xmlBlob2);
            return xmlBlob2;
        }
        return xmlBlob;
    }

    public void setText(String str) {
        if (Service.getVersion().isBefore(Service.Versions.V2)) {
            setAttributeValue(Content.TYPE, "text");
        } else {
            setAttributeValue(Content.TYPE, (Object) null);
        }
        setTextValue(str);
    }

    public void setHtml(String str) {
        setAttributeValue(Content.TYPE, BehanceSDKPublishConstants.KEY_HTML);
        setTextValue(str);
    }

    public void setXhtml(XmlBlob xmlBlob) {
        setAttributeValue(Content.TYPE, "xhtml");
        setElement(DIV, xmlBlob);
    }

    @Override // com.google.gdata.model.Element
    public Element resolve(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        int type = getType();
        if (type == 1 && Service.getVersion().isBefore(Service.Versions.V2) && getAttributeValue(Content.TYPE) == null) {
            setAttributeValue(Content.TYPE, "text");
        }
        if ((type == 1 || type == 2) && getTextValue() == null) {
            setTextValue("");
        }
        return super.resolve(elementMetadata, validationContext);
    }

    @Override // com.google.gdata.data.ITextContent
    public ITextConstruct getContent() {
        return this;
    }
}
