package com.google.gdata.data;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.data.OtherContent.AtomHandler;
import com.google.gdata.data.OutOfLineContent.AtomHandler;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.mortbay.jetty.MimeTypes;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Content implements IContent {

    public class ChildHandlerInfo {
        public Content content;
        public XmlParser.ElementHandler handler;
    }

    public abstract void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException;

    public abstract void generateRss(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException;

    @Override // com.google.gdata.data.IContent
    public abstract String getLang();

    @Override // com.google.gdata.data.IContent
    public abstract int getType();

    public static ChildHandlerInfo getChildHandler(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException, IOException {
        String value = attributes.getValue("", "type");
        ChildHandlerInfo childHandlerInfo = new ChildHandlerInfo();
        if (attributes.getValue("", "src") == null) {
            if (value == null || value.equals("text") || value.equals(MimeTypes.TEXT_PLAIN) || value.equals(BehanceSDKPublishConstants.KEY_HTML) || value.equals(MimeTypes.TEXT_HTML) || value.equals("xhtml")) {
                TextContent textContent = new TextContent();
                TextConstruct.ChildHandlerInfo childHandler = TextConstruct.getChildHandler(attributes);
                textContent.setContent(childHandler.textConstruct);
                childHandlerInfo.handler = childHandler.handler;
                childHandlerInfo.content = textContent;
            } else {
                OtherContent otherContent = new OtherContent();
                otherContent.getClass();
                childHandlerInfo.handler = otherContent.new AtomHandler(extensionProfile, attributes);
                childHandlerInfo.content = otherContent;
            }
        } else {
            OutOfLineContent outOfLineContent = new OutOfLineContent();
            outOfLineContent.getClass();
            childHandlerInfo.handler = outOfLineContent.new AtomHandler();
            childHandlerInfo.content = outOfLineContent;
        }
        return childHandlerInfo;
    }
}
