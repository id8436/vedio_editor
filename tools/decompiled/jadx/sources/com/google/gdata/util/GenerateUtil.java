package com.google.gdata.util;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class GenerateUtil {
    public static void generateAtom(XmlWriter xmlWriter, IEntry iEntry, ExtensionProfile extensionProfile) throws IOException {
        if (iEntry instanceof BaseEntry) {
            ((BaseEntry) iEntry).generateAtom(xmlWriter, extensionProfile);
        }
    }

    public static void generateAtom(XmlWriter xmlWriter, IFeed iFeed, ExtensionProfile extensionProfile) throws IOException {
        if (iFeed instanceof BaseFeed) {
            ((BaseFeed) iFeed).generateAtom(xmlWriter, extensionProfile);
        }
    }
}
