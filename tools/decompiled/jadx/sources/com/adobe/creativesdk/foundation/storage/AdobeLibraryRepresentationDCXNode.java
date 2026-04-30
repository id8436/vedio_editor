package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageDCXServiceMapping;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class AdobeLibraryRepresentationDCXNode extends AdobeLibraryMutableRepresentation {
    private AdobeDCXNode mDcxNode;
    private AdobeLibraryElement mElement;
    private AdobeLibraryComposite mHostLibrary;

    class StEditComponentOperation {
        private AdobeLibraryRepresentationDCXNode mRep;

        StEditComponentOperation(AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode) {
            this.mRep = null;
            if (adobeLibraryRepresentationDCXNode.getComponent() != null) {
                this.mRep = adobeLibraryRepresentationDCXNode;
                adobeLibraryRepresentationDCXNode.setMutableComponent(adobeLibraryRepresentationDCXNode.getComponent().getMutableCopy());
            }
        }

        void update() {
            AdobeDCXComponent adobeDCXComponentUpdateComponent;
            if (this.mRep != null && this.mRep.getMutableComponent() != null) {
                try {
                    adobeDCXComponentUpdateComponent = this.mRep.mHostLibrary.getDcxComposite().getCurrent().updateComponent(this.mRep.getMutableComponent(), null, false);
                } catch (AdobeDCXException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
                    adobeDCXComponentUpdateComponent = null;
                }
                this.mRep.setMutableComponent(null);
                if (adobeDCXComponentUpdateComponent != null) {
                    this.mRep.setComponent(adobeDCXComponentUpdateComponent);
                }
            }
        }
    }

    public AdobeLibraryRepresentationDCXNode(AdobeDCXMutableManifestNode adobeDCXMutableManifestNode) {
        AdobeStorageErrorUtils.verifyState(false, "this is not a valid constructor when using the new direct modify representations. Use appendRepresentation or insertRepresentation in AdobeLibraryComposite.");
    }

    public AdobeLibraryRepresentationDCXNode(AdobeDCXNode adobeDCXNode, AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement) {
        this.mDcxNode = adobeDCXNode;
        this.mHostLibrary = adobeLibraryComposite;
        this.mElement = adobeLibraryElement;
        setMutableComponent(null);
    }

    public AdobeLibraryRepresentationDCXNode(AdobeDCXMutableComponent adobeDCXMutableComponent, AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement) {
        super(adobeDCXMutableComponent);
        this.mDcxNode = null;
        this.mHostLibrary = adobeLibraryComposite;
        this.mElement = adobeLibraryElement;
    }

    public AdobeLibraryRepresentationDCXNode(AdobeDCXComponent adobeDCXComponent, AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement) {
        super(adobeDCXComponent);
        this.mDcxNode = null;
        this.mHostLibrary = adobeLibraryComposite;
        this.mElement = adobeLibraryElement;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public AdobeLibraryMutableRepresentation getMutableCopy() {
        AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation;
        if (getNode() != null) {
            adobeLibraryMutableRepresentation = new AdobeLibraryMutableRepresentation(getNode().getMutableCopy());
        } else {
            adobeLibraryMutableRepresentation = new AdobeLibraryMutableRepresentation(getComponent().getMutableCopy());
        }
        adobeLibraryMutableRepresentation.setFilePath(this.mFilePath);
        adobeLibraryMutableRepresentation.setSourceHref(this.mSourceHref);
        return adobeLibraryMutableRepresentation;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public AdobeDCXManifestNode getNode() {
        return this.mDcxNode.getMutableManifestNode();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public Object getNodeDictValueForKey(String str) {
        if (this.mDcxNode != null) {
            return this.mDcxNode.get(str);
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public List<String> getAllNodeDictKeys() {
        return this.mDcxNode != null ? this.mDcxNode.getCustomKeys() : new ArrayList();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public AdobeDCXNode getDCXNode() {
        return this.mDcxNode;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation
    public Object getMutableNode() {
        return this.mDcxNode;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public String getNodeType() {
        return this.mDcxNode.getType();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public String getNodeId() {
        if (this.mDcxNode != null) {
            return this.mDcxNode.getNodeId();
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public URI getContentURL() {
        if (isExternalLink()) {
            try {
                return new URI((String) getDCXNode().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkURLKey));
            } catch (URISyntaxException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
            }
        } else {
            AdobeStorageErrorUtils.verifyState(getComponent() != null, "getContentURLForRepresentation is only valid for file based representations.");
            AdobeStorageResourceItem adobeStorageResourceItemResourceForComponent = AdobeStorageDCXServiceMapping.resourceForComponent(getComponent(), this.mHostLibrary.getDcxComposite(), null, false);
            AdobeCloudServiceSession adobeCloudServiceSession = (AdobeCloudServiceSession) this.mHostLibrary.mCollection._syncManager.serviceSession();
            if (adobeCloudServiceSession != null) {
                AdobeNetworkHttpService serviceForSchemaId = adobeCloudServiceSession.getServiceForSchemaId("libraries");
                if (adobeStorageResourceItemResourceForComponent != null && serviceForSchemaId != null) {
                    try {
                        return new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(adobeStorageResourceItemResourceForComponent.href.toString(), serviceForSchemaId.getBaseURL().toString()));
                    } catch (URISyntaxException e3) {
                        AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e3);
                    }
                }
            }
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public boolean getContentPath(Handler handler, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback) {
        this.mHostLibrary.lock();
        boolean zInternalFilePathForRepresentation = this.mHostLibrary.internalFilePathForRepresentation(this, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler, null);
        this.mHostLibrary.unlock();
        return zInternalFilePathForRepresentation;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public boolean haveLocalFile() {
        return this.mHostLibrary.haveLocalFileForRepresentation(this);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setRelationship(String str) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            StEditComponentOperation stEditComponentOperation = new StEditComponentOperation(this);
            super.setRelationship(str);
            if (this.mElement != null) {
                this.mElement.elementRepresentationsChanged();
            }
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
            }
            stEditComponentOperation.update();
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setFullSize(boolean z) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            StEditComponentOperation stEditComponentOperation = new StEditComponentOperation(this);
            super.setFullSize(z);
            if (this.mElement != null) {
                this.mElement.elementRepresentationsChanged();
            }
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
            }
            stEditComponentOperation.update();
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setWidth(int i) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            StEditComponentOperation stEditComponentOperation = new StEditComponentOperation(this);
            super.setWidth(i);
            if (this.mElement != null) {
                this.mElement.elementRepresentationsChanged();
            }
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
            }
            stEditComponentOperation.update();
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setHeight(int i) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            StEditComponentOperation stEditComponentOperation = new StEditComponentOperation(this);
            super.setHeight(i);
            if (this.mElement != null) {
                this.mElement.elementRepresentationsChanged();
            }
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
            }
            stEditComponentOperation.update();
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void setContentLength(long j) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            StEditComponentOperation stEditComponentOperation = new StEditComponentOperation(this);
            super.setContentLength(j);
            if (this.mElement != null) {
                this.mElement.elementRepresentationsChanged();
            }
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
            }
            stEditComponentOperation.update();
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public boolean setValue(Object obj, String str, String str2) throws AdobeLibraryException {
        if (this.mHostLibrary != null && this.mHostLibrary.addErrorIfReadOnly()) {
            return false;
        }
        this.mHostLibrary.lock();
        this.mHostLibrary.beginChanges();
        StEditComponentOperation stEditComponentOperation = new StEditComponentOperation(this);
        boolean value = super.setValue(obj, str, str2);
        if (this.mElement != null) {
            this.mElement.elementRepresentationsChanged();
        }
        this.mHostLibrary.unlock();
        try {
            this.mHostLibrary.endChanges();
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
        }
        stEditComponentOperation.update();
        return value;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation, com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
    public void clearOrder() {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            StEditComponentOperation stEditComponentOperation = new StEditComponentOperation(this);
            super.clearOrder();
            if (this.mElement != null) {
                this.mElement.elementRepresentationsChanged();
            }
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryRepresentationDCXNode.class.getSimpleName(), null, e2);
            }
            stEditComponentOperation.update();
        }
    }
}
