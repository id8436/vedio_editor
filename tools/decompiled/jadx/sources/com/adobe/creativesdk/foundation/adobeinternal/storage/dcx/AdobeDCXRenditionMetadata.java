package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXRenditionMetadata extends AdobeDCXMutableMetadata {
    private Set<String> _addedComponents;

    public static AdobeDCXRenditionMetadata renditionMetadataForCompositeBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str) {
        return new AdobeDCXRenditionMetadata(adobeDCXCompositeBranch, str);
    }

    public AdobeDCXRenditionMetadata(AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str) {
        super(adobeDCXCompositeBranch.getMetadata(), "converted", null);
        try {
            setPropertyWithPath(AdobeDCXMetadataPath.getFormat(), str);
        } catch (AdobeDCXMetadataException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeDCXRenditionMetadata.Construtor", e2.getMessage());
        }
        this._addedComponents = new HashSet();
    }

    boolean addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str, String str2, String str3, String str4) throws AdobeDCXException {
        String componentId = adobeDCXComponent.getComponentId();
        if (str3 != null) {
            componentId = componentId.concat(String.format("/%s", str3));
        }
        if (this._addedComponents.contains(componentId)) {
            return true;
        }
        this._addedComponents.add(componentId);
        String pathForComponent = adobeDCXCompositeBranch.getPathForComponent(adobeDCXComponent);
        if (pathForComponent == null) {
            return false;
        }
        return addFile(pathForComponent, str, str2, str3, str4);
    }

    boolean addComponentWithoutDescription(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str, String str2) throws AdobeDCXException {
        return addComponent(adobeDCXComponent, adobeDCXCompositeBranch, str, null, str2, null);
    }

    boolean addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str, String str2) throws AdobeDCXException {
        return addComponent(adobeDCXComponent, adobeDCXCompositeBranch, null, null, str, str2);
    }

    boolean addFile(String str, String str2, String str3, String str4, String str5) throws AdobeDCXException {
        return false;
    }

    boolean addFile(String str, String str2, String str3) throws AdobeDCXException {
        return addFile(str, str2, null, str3, null);
    }
}
