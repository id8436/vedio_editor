package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPIterator;
import com.adobe.xmp.impl.XMPIteratorImpl;
import com.adobe.xmp.options.IteratorOptions;
import com.adobe.xmp.properties.XMPPropertyInfo;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXMetadataIterator {
    int _options;
    AdobeDCXMetadataPath _path;
    String _value;
    XMPIterator iter;

    public AdobeDCXMetadataIterator(AdobeDCXMetadata adobeDCXMetadata, boolean z) {
        try {
            if (!z) {
                this.iter = adobeDCXMetadata.getXMPMeta().iterator(new IteratorOptions().setJustChildren(true));
            } else {
                this.iter = adobeDCXMetadata.getXMPMeta().iterator();
            }
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadataIterator.Constructor", e2.getMessage());
        }
    }

    public static AdobeDCXMetadataIterator iteratorFromXMP(AdobeDCXMetadata adobeDCXMetadata) {
        return new AdobeDCXMetadataIterator(adobeDCXMetadata, false);
    }

    public static AdobeDCXMetadataIterator deepIteratorFromXMP(AdobeDCXMetadata adobeDCXMetadata) {
        return new AdobeDCXMetadataIterator(adobeDCXMetadata, true);
    }

    public AdobeDCXMetadataIterator(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXMetadataPath adobeDCXMetadataPath, boolean z) {
        try {
            if (!z) {
                this.iter = adobeDCXMetadata.getXMPMeta().iterator(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), new IteratorOptions().setJustChildren(true));
            } else {
                this.iter = adobeDCXMetadata.getXMPMeta().iterator(AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getSchema()), AdobeDCXUtils.convertToUTF8(adobeDCXMetadataPath.getName()), null);
            }
        } catch (XMPException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXMetadataIterator.Constructor", e2.getMessage());
        }
    }

    public static AdobeDCXMetadataIterator iteratorFromXMP(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXMetadataPath adobeDCXMetadataPath) {
        return new AdobeDCXMetadataIterator(adobeDCXMetadata, adobeDCXMetadataPath, false);
    }

    public static AdobeDCXMetadataIterator deepIteratorFromXMP(AdobeDCXMetadata adobeDCXMetadata, AdobeDCXMetadataPath adobeDCXMetadataPath) {
        return new AdobeDCXMetadataIterator(adobeDCXMetadata, adobeDCXMetadataPath, true);
    }

    public boolean next() {
        int i = 0;
        if (this.iter.hasNext()) {
            XMPPropertyInfo xMPPropertyInfo = (XMPPropertyInfo) this.iter.next();
            String path = xMPPropertyInfo.getPath();
            String baseNS = ((XMPIteratorImpl) this.iter).getBaseNS();
            String value = xMPPropertyInfo.getValue();
            int options = xMPPropertyInfo.getOptions().getOptions();
            int i2 = 0;
            while (true) {
                if (i2 >= path.length() || path.charAt(i2) == '/') {
                    break;
                }
                if (path.charAt(i2) == ':') {
                    i = i2 + 1;
                    break;
                }
                i2++;
            }
            this._path = new AdobeDCXMetadataPath(AdobeDCXUtils.convertToUTF8(baseNS), AdobeDCXUtils.convertToUTF8(path.substring(i)));
            this._value = AdobeDCXUtils.convertToUTF8(value);
            this._options = options;
            return true;
        }
        this._path = null;
        this._value = null;
        this._options = 0;
        return false;
    }

    public void skipSubtree() {
        this.iter.skipSubtree();
    }

    public void skipSiblings() {
        this.iter.skipSiblings();
    }
}
