package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryMutableRepresentation extends AdobeLibraryRepresentation {
    AdobeDCXMutableComponent mMutableComponent;
    AdobeDCXMutableManifestNode mMutableNode;

    public AdobeLibraryMutableRepresentation() {
    }

    public AdobeLibraryMutableRepresentation(AdobeDCXComponent adobeDCXComponent) {
        super(adobeDCXComponent);
    }

    public AdobeLibraryMutableRepresentation(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode) {
        super(adobeDCXMutableManifestNode);
        this.mMutableNode = adobeDCXMutableManifestNode;
        this.mMutableComponent = null;
    }

    public AdobeLibraryMutableRepresentation(AdobeDCXMutableComponent adobeDCXMutableComponent) {
        super(adobeDCXMutableComponent);
        this.mMutableComponent = adobeDCXMutableComponent;
        this.mMutableNode = null;
    }

    private static AdobeDCXMutableManifestNode createManifestNodeWithContentType(String str) {
        AdobeDCXMutableManifestNode adobeDCXMutableManifestNodeCreateNodeWithId = AdobeDCXMutableManifestNode.createNodeWithId(UUID.randomUUID().toString());
        adobeDCXMutableManifestNodeCreateNodeWithId.setType(str);
        return adobeDCXMutableManifestNodeCreateNodeWithId;
    }

    private static AdobeDCXMutableComponent createComponentWithContentType(String str, String str2) {
        UUID uuidRandomUUID = UUID.randomUUID();
        String extension = FilenameUtils.getExtension(str2);
        if (extension == null) {
            extension = "";
        }
        return new AdobeDCXMutableComponent(uuidRandomUUID.toString(), String.format("%s.%s", uuidRandomUUID.toString(), extension), null, str, null, AdobeDCXConstants.AdobeDCXAssetStateModified);
    }

    private static AdobeLibraryMutableRepresentation initWithContentType(String str, String str2) {
        AdobeStorageErrorUtils.verifyArgument(str != null, "type");
        AdobeStorageErrorUtils.verifyArgument(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(str) ? false : true, "Cannot create external link representation directly.");
        AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation = new AdobeLibraryMutableRepresentation(createManifestNodeWithContentType(str));
        adobeLibraryMutableRepresentation.setRelationship(str2);
        return adobeLibraryMutableRepresentation;
    }

    private static AdobeLibraryMutableRepresentation initWithFilePath(String str, String str2, String str3) {
        AdobeStorageErrorUtils.verifyArgument(str2 != null, "type");
        AdobeStorageErrorUtils.verifyArgument(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(str2) ? false : true, "Cannot create external link representation directly.");
        AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation = new AdobeLibraryMutableRepresentation(createComponentWithContentType(str2, str));
        adobeLibraryMutableRepresentation.mFilePath = str;
        adobeLibraryMutableRepresentation.setRelationship(str3);
        return adobeLibraryMutableRepresentation;
    }

    private static AdobeLibraryMutableRepresentation initWithSourceHref(String str, String str2, String str3, boolean z) {
        AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation;
        AdobeStorageErrorUtils.verifyArgument(str2 != null, "type");
        AdobeStorageErrorUtils.verifyArgument(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(str2) ? false : true, "Cannot create external link representation directly.");
        if (z) {
            adobeLibraryMutableRepresentation = new AdobeLibraryMutableRepresentation(createManifestNodeWithContentType(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType));
            adobeLibraryMutableRepresentation.mMutableNode.setValue(str2, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkContentTypeKey);
            adobeLibraryMutableRepresentation.mMutableNode.setValue(str, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkURLKey);
        } else {
            adobeLibraryMutableRepresentation = new AdobeLibraryMutableRepresentation(createComponentWithContentType(str2, str));
            adobeLibraryMutableRepresentation.mSourceHref = str;
        }
        adobeLibraryMutableRepresentation.setRelationship(str3);
        return adobeLibraryMutableRepresentation;
    }

    public static AdobeLibraryMutableRepresentation createRepresentationWithContentType(String str, String str2) {
        return initWithContentType(str, str2);
    }

    public static AdobeLibraryMutableRepresentation createRepresentationWithFilePath(String str, String str2, String str3) {
        return initWithFilePath(str, str2, str3);
    }

    public static AdobeLibraryMutableRepresentation createRepresentationWithSourceHref(String str, String str2, String str3, boolean z) {
        return initWithSourceHref(str, str2, str3, z);
    }

    public static AdobeLibraryMutableRepresentation createRepresentationWithSourceHref(String str, String str2, String str3) {
        return initWithSourceHref(str, str2, str3, false);
    }

    public AdobeDCXMutableComponent getMutableComponent() {
        return this.mMutableComponent;
    }

    public Object getMutableNode() {
        return this.mMutableNode;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public Object getNodeDictValueForKey(String str) {
        if (this.mMutableNode != null) {
            return this.mMutableNode.getDictionary().opt(str);
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public List<String> getAllNodeDictKeys() {
        if (this.mMutableNode == null) {
            return new ArrayList();
        }
        Iterator<String> itKeys = this.mMutableNode.getDictionary().keys();
        ArrayList arrayList = new ArrayList();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        return arrayList;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public String getNodeType() {
        return this.mMutableNode.getType();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setRelationship(String str) {
        if (getMutableNode() != null) {
            if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).setValue(str, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationRelationshipKey);
                return;
            } else {
                if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                    ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(str, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationRelationshipKey);
                    return;
                }
                return;
            }
        }
        this.mMutableComponent.setRelationship(str);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setFullSize(boolean z) {
        if (getMutableNode() != null) {
            AdobeStorageErrorUtils.verifyState(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(getNodeType()), "Cannot set fullSize on an element that is not file based.");
            if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).setValue(Integer.valueOf(z ? 1 : 0), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationFullSizeKey);
                return;
            } else {
                if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                    ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(Integer.valueOf(z ? 1 : 0), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationFullSizeKey);
                    return;
                }
                return;
            }
        }
        this.mMutableComponent.setValue(Integer.valueOf(z ? 1 : 0), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationFullSizeKey);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setWidth(int i) {
        AdobeStorageErrorUtils.verifyArgument(i >= 0, "The width must be greater than or equal to 0.");
        if (getMutableNode() != null) {
            AdobeStorageErrorUtils.verifyState(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(getNodeType()), "Cannot set width on an element that is not file based.");
            if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).setValue(Integer.valueOf(i), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationWidthKey);
                return;
            } else {
                if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                    ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(Integer.valueOf(i), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationWidthKey);
                    return;
                }
                return;
            }
        }
        this.mMutableComponent.setWidth(i);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setHeight(int i) {
        AdobeStorageErrorUtils.verifyArgument(i >= 0, "The height must be greater than or equal to 0.");
        if (getMutableNode() != null) {
            AdobeStorageErrorUtils.verifyState(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType.equals(getNodeType()), "Cannot set height on an element that is not file based.");
            if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).setValue(Integer.valueOf(i), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationHeightKey);
                return;
            } else {
                if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                    ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(Integer.valueOf(i), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationHeightKey);
                    return;
                }
                return;
            }
        }
        this.mMutableComponent.setHeight(i);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setContentLength(long j) {
        AdobeStorageErrorUtils.verifyState(isExternalLink(), "The contentLength property can only be set on external link representations.");
        AdobeStorageErrorUtils.verifyArgument(j > 0, "The content length must be greater than 0.");
        if (getMutableNode() != null) {
            if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).setValue(Long.valueOf(j), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkContentLengthKey);
            } else if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(Long.valueOf(j), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkContentLengthKey);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public boolean setValue(Object obj, String str, String str2) throws AdobeLibraryException {
        if (str2 == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorNamespaceNotFoundForKey, null, null, null);
        }
        if (str2.equals("library")) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorRepresentationReservedKey, null, null, null);
        }
        if (getMutableNode() != null) {
            if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).setValue(obj, String.format("%s#%s", str2, str));
            } else if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(obj, String.format("%s#%s", str2, str));
            }
        } else {
            this.mMutableComponent.setValue(obj, String.format("%s#%s", str2, str));
        }
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setOrder(int i) {
        if (getMutableNode() != null) {
            if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).setValue(Integer.valueOf(i), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationOrderKey);
                return;
            } else {
                if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                    ((AdobeDCXMutableManifestNode) getMutableNode()).setValue(Integer.valueOf(i), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationOrderKey);
                    return;
                }
                return;
            }
        }
        this.mMutableComponent.setValue(Integer.valueOf(i), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationOrderKey);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void clearOrder() {
        if (getMutableNode() != null) {
            if (getMutableNode() instanceof AdobeDCXNode) {
                ((AdobeDCXNode) getMutableNode()).remove(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationOrderKey);
                return;
            } else {
                if (getMutableNode() instanceof AdobeDCXMutableManifestNode) {
                    ((AdobeDCXMutableManifestNode) getMutableNode()).remove(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationOrderKey);
                    return;
                }
                return;
            }
        }
        this.mMutableComponent.remove(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationOrderKey);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setFilePath(String str) {
        super.setFilePath(str);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setSourceHref(String str) {
        super.setSourceHref(str);
    }

    public void setMutableComponent(AdobeDCXMutableComponent adobeDCXMutableComponent) {
        this.mMutableComponent = adobeDCXMutableComponent;
    }
}
