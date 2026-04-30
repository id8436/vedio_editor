package com.google.gdata.wireformats.output;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.IAtom;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.xml.XmlWriter;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class AtomGenerator extends XmlGenerator<IAtom> {
    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return AltFormat.ATOM;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<IAtom> getSourceType() {
        return IAtom.class;
    }

    @Override // com.google.gdata.wireformats.output.XmlGenerator
    public void generateXml(XmlWriter xmlWriter, OutputProperties outputProperties, IAtom iAtom) throws IOException {
        xmlWriter.setDefaultNamespace(Namespaces.atomNs);
        ExtensionProfile extensionProfile = outputProperties.getExtensionProfile();
        if (iAtom instanceof IFeed) {
            IFeed iFeed = (IFeed) iAtom;
            if (iFeed instanceof BaseFeed) {
                ((BaseFeed) iFeed).generateAtom(xmlWriter, extensionProfile);
                return;
            }
            throw new IllegalArgumentException("Feed was not an instance of data.BaseFeed");
        }
        if (iAtom instanceof IEntry) {
            IEntry iEntry = (IEntry) iAtom;
            if (iEntry instanceof BaseEntry) {
                ((BaseEntry) iEntry).generateAtom(xmlWriter, extensionProfile);
                return;
            }
            throw new IllegalArgumentException("Entry was not an instance of data.BaseEntry");
        }
        if (iAtom != null) {
            throw new IllegalStateException("Unexpected source type: " + iAtom.getClass());
        }
    }
}
