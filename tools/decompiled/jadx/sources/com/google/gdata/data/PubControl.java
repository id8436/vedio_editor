package com.google.gdata.data;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class PubControl extends ExtensionPoint {
    private XmlNamespace atomPubNs = Namespaces.getAtomPubNs();
    private Boolean draft;

    public boolean isDraft() {
        return this.draft != null && this.draft.booleanValue();
    }

    public void setDraft(Boolean bool) {
        this.draft = bool;
    }

    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.startElement(Namespaces.getAtomPubNs(), "control", null, null);
        if (isDraft()) {
            xmlWriter.simpleElement(Namespaces.getAtomPubNs(), "draft", null, "yes");
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement();
    }

    public class AtomHandler extends ExtensionPoint.ExtensionHandler {
        public AtomHandler(ExtensionProfile extensionProfile) {
            super(PubControl.this, extensionProfile, PubControl.class);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str.equals(PubControl.this.atomPubNs.getUri())) {
                if (str2.equals("draft")) {
                    return new DraftHandler();
                }
                return null;
            }
            return super.getChildHandler(str, str2, attributes);
        }
    }

    class DraftHandler extends XmlParser.ElementHandler {
        private DraftHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (PubControl.this.draft != null) {
                throw new ParseException(CoreErrorDomain.ERR.duplicateDraft);
            }
            if (this.value.equals("yes")) {
                PubControl.this.draft = true;
            } else {
                if (this.value.equals("no")) {
                    PubControl.this.draft = false;
                    return;
                }
                throw new ParseException(CoreErrorDomain.ERR.invalidDraft);
            }
        }
    }
}
