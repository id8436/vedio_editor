package com.google.gdata.wireformats.output;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.IAtom;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.util.common.xml.XmlWriter;
import com.google.gdata.wireformats.AltFormat;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class RssGenerator extends XmlGenerator<IAtom> {
    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public AltFormat getAltFormat() {
        return AltFormat.RSS;
    }

    @Override // com.google.gdata.wireformats.output.OutputGenerator
    public Class<IAtom> getSourceType() {
        return IAtom.class;
    }

    @Override // com.google.gdata.wireformats.output.XmlGenerator
    public void generateXml(XmlWriter xmlWriter, OutputProperties outputProperties, IAtom iAtom) throws IOException {
        if (iAtom instanceof IFeed) {
            IFeed iFeed = (IFeed) iAtom;
            if (iFeed instanceof BaseFeed) {
                ((BaseFeed) iFeed).generateRss(xmlWriter, outputProperties.getExtensionProfile());
                return;
            }
            throw new IllegalArgumentException("Feed was not an instance of BaseFeed");
        }
        if (iAtom instanceof IEntry) {
            IEntry iEntry = (IEntry) iAtom;
            if (iEntry instanceof BaseEntry) {
                ((BaseEntry) iEntry).generateRss(xmlWriter, outputProperties.getExtensionProfile());
                return;
            }
            throw new IllegalArgumentException("Entry was not an instance of BaseEntry");
        }
        throw new IllegalStateException("Unexpected source type: " + iAtom);
    }
}
