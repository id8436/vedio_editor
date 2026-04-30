package com.adobe.creativesdk.foundation.storage;

import android.graphics.BitmapFactory;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXElement;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXIndexWrapper;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryAnalyticsConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryAnalyticsOperation;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
class AdobeLibraryElementDCXNode extends AdobeLibraryMutableElement {
    private AdobeDCXNode mDcxNode;
    private AdobeLibraryComposite mHostLibrary;

    public AdobeLibraryElementDCXNode(AdobeDCXNode adobeDCXNode, AdobeLibraryComposite adobeLibraryComposite) {
        super(null);
        this.mDcxNode = adobeDCXNode;
        this.mHostLibrary = adobeLibraryComposite;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeLibraryMutableElement getMutableCopy() {
        return new AdobeLibraryMutableElement(getNode().getMutableCopy());
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeDCXManifestNode getNode() {
        return this.mDcxNode.getMutableManifestNode();
    }

    public Object getDictValueForKey(String str) {
        if (this.mDcxNode != null) {
            return this.mDcxNode.get(str);
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public String getName() {
        return this.mDcxNode.getName();
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement, com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void setName(String str) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementUpdate, this.mHostLibrary, this, null).trackAction(null);
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            this.mDcxNode.setName(str);
            updateModified();
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryElementDCXNode.class.getSimpleName(), null, e2);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement, com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public Object getNodeDictValueForKey(String str) {
        if (this.mDcxNode != null) {
            return this.mDcxNode.get(str);
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement, com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public List<String> getAllNodeDictKeys() {
        return this.mDcxNode.getCustomKeys();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeDCXNode getDCXNode() {
        return this.mDcxNode;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement
    public Object getMutableNode() {
        return this.mDcxNode;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement, com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public String getNodeType() {
        return this.mDcxNode.getType();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public String getElementId() {
        return this.mDcxNode.getNodeId();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public List<AdobeLibraryRepresentation> getRepresentations() {
        if (this.mHostLibrary == null || this.mHostLibrary.getDcxComposite() == null) {
            return null;
        }
        this.mHostLibrary.lock();
        AdobeDCXNode elementNode = this.mHostLibrary.getElementNode(this);
        if (elementNode == null) {
            this.mHostLibrary.unlock();
            return null;
        }
        List<AdobeDCXNode> childrenOfNode = this.mHostLibrary.getDcxComposite().getCurrent().getChildrenOfNode(elementNode);
        List<AdobeDCXComponent> componentsOfNode = this.mHostLibrary.getDcxComposite().getCurrent().getComponentsOfNode(elementNode);
        ArrayList<AdobeLibraryRepresentation> arrayList = new ArrayList<>((componentsOfNode != null ? componentsOfNode.size() : 0) + (childrenOfNode != null ? childrenOfNode.size() : 0));
        if (childrenOfNode != null) {
            Iterator<AdobeDCXNode> it = childrenOfNode.iterator();
            while (it.hasNext()) {
                arrayList.add(new AdobeLibraryRepresentationDCXNode(it.next(), this.mHostLibrary, this));
            }
        }
        if (componentsOfNode != null) {
            Iterator<AdobeDCXComponent> it2 = componentsOfNode.iterator();
            while (it2.hasNext()) {
                arrayList.add(new AdobeLibraryRepresentationDCXNode(it2.next(), this.mHostLibrary, this));
            }
        }
        sortRepresentations(arrayList);
        this.mHostLibrary.unlock();
        return arrayList;
    }

    private void sortRepresentations(ArrayList<AdobeLibraryRepresentation> arrayList) {
        boolean z;
        boolean z2;
        if (arrayList.size() >= 2) {
            do {
                int i = 1;
                z = false;
                while (i < arrayList.size()) {
                    AdobeLibraryRepresentation adobeLibraryRepresentation = arrayList.get(i - 1);
                    AdobeLibraryRepresentation adobeLibraryRepresentation2 = arrayList.get(i);
                    if (adobeLibraryRepresentation2.getOrder() < adobeLibraryRepresentation.getOrder()) {
                        arrayList.set(i - 1, adobeLibraryRepresentation2);
                        arrayList.set(i, adobeLibraryRepresentation);
                        z2 = true;
                    } else {
                        z2 = z;
                    }
                    i++;
                    z = z2;
                }
            } while (z);
        }
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeLibraryRepresentation getFirstRepresentationOfType(String str) {
        this.mHostLibrary.lock();
        if (this.mDcxNode == null) {
            this.mHostLibrary.unlock();
            return null;
        }
        List<AdobeDCXComponent> componentsOfNode = this.mHostLibrary.getDcxComposite().getCurrent().getComponentsOfNode(this.mDcxNode);
        if (componentsOfNode != null) {
            for (AdobeDCXComponent adobeDCXComponent : componentsOfNode) {
                String type = adobeDCXComponent.getType();
                if (type != null && type.equals(str)) {
                    AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode = new AdobeLibraryRepresentationDCXNode(adobeDCXComponent, this.mHostLibrary, this);
                    this.mHostLibrary.unlock();
                    return adobeLibraryRepresentationDCXNode;
                }
            }
        }
        List<AdobeDCXNode> childrenOfNode = this.mHostLibrary.getDcxComposite().getCurrent().getChildrenOfNode(this.mDcxNode);
        if (childrenOfNode != null) {
            for (AdobeDCXNode adobeDCXNode : childrenOfNode) {
                String type2 = adobeDCXNode.getType();
                if (type2 != null && type2.equals(str)) {
                    AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode2 = new AdobeLibraryRepresentationDCXNode(adobeDCXNode, this.mHostLibrary, this);
                    this.mHostLibrary.unlock();
                    return adobeLibraryRepresentationDCXNode2;
                }
            }
        }
        this.mHostLibrary.unlock();
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeLibraryRepresentation getPrimaryRepresentation() {
        this.mHostLibrary.lock();
        if (this.mDcxNode == null) {
            this.mHostLibrary.unlock();
            return null;
        }
        List<AdobeDCXComponent> componentsOfNode = this.mHostLibrary.getDcxComposite().getCurrent().getComponentsOfNode(this.mDcxNode);
        if (componentsOfNode != null) {
            for (AdobeDCXComponent adobeDCXComponent : componentsOfNode) {
                String relationship = adobeDCXComponent.getRelationship();
                if (relationship != null && relationship.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode = new AdobeLibraryRepresentationDCXNode(adobeDCXComponent, this.mHostLibrary, this);
                    this.mHostLibrary.unlock();
                    return adobeLibraryRepresentationDCXNode;
                }
            }
        }
        List<AdobeDCXNode> childrenOfNode = this.mHostLibrary.getDcxComposite().getCurrent().getChildrenOfNode(this.mDcxNode);
        if (childrenOfNode != null) {
            for (AdobeDCXNode adobeDCXNode : childrenOfNode) {
                String str = (String) adobeDCXNode.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationRelationshipKey);
                if (str == null) {
                    str = (String) adobeDCXNode.get("relationship");
                }
                if (str != null && str.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode2 = new AdobeLibraryRepresentationDCXNode(adobeDCXNode, this.mHostLibrary, this);
                    this.mHostLibrary.unlock();
                    return adobeLibraryRepresentationDCXNode2;
                }
            }
        }
        this.mHostLibrary.unlock();
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeLibraryRepresentation getRepresentationWithId(String str) {
        this.mHostLibrary.lock();
        if (this.mDcxNode == null) {
            this.mHostLibrary.unlock();
            return null;
        }
        AdobeDCXComponent componentWithId = this.mHostLibrary.getDcxComposite().getCurrent().getComponentWithId(str);
        if (componentWithId != null) {
            AdobeDCXNode adobeDCXNodeFindParentNodeOfComponent = this.mHostLibrary.getDcxComposite().getCurrent().findParentNodeOfComponent(componentWithId);
            AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode = new AdobeLibraryRepresentationDCXNode(componentWithId, this.mHostLibrary, adobeDCXNodeFindParentNodeOfComponent != null ? new AdobeLibraryElementDCXNode(adobeDCXNodeFindParentNodeOfComponent, this.mHostLibrary) : null);
            this.mHostLibrary.unlock();
            return adobeLibraryRepresentationDCXNode;
        }
        AdobeDCXNode nodeWithId = this.mHostLibrary.getDcxComposite().getCurrent().getNodeWithId(str);
        if (nodeWithId != null) {
            AdobeDCXNode adobeDCXNodeFindParentOfNode = this.mHostLibrary.getDcxComposite().getCurrent().findParentOfNode(nodeWithId, new AdobeDCXIndexWrapper());
            AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode2 = new AdobeLibraryRepresentationDCXNode(nodeWithId, this.mHostLibrary, adobeDCXNodeFindParentOfNode != null ? new AdobeLibraryElementDCXNode(adobeDCXNodeFindParentOfNode, this.mHostLibrary) : null);
            this.mHostLibrary.unlock();
            return adobeLibraryRepresentationDCXNode2;
        }
        this.mHostLibrary.unlock();
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void elementRepresentationsChanged() {
        updateModified();
        this.mHostLibrary.removeRenditionCacheForElement(getElementId());
    }

    public boolean validateAddRepresentation(String str) throws AdobeLibraryException {
        if (this.mDcxNode == null || this.mHostLibrary == null || this.mHostLibrary.getDcxComposite() == null || this.mHostLibrary.getDcxComposite().getCurrent() == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, null, null, null);
        }
        if (this.mHostLibrary.addErrorIfReadOnly()) {
            return false;
        }
        boolean zEquals = str.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary);
        List<AdobeLibraryRepresentation> representations = getRepresentations();
        if ((representations == null || representations.isEmpty()) && !zEquals) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementMustHaveOnePrimaryRepresentation, null, null, null);
        }
        if (zEquals && representations != null && representations.isEmpty()) {
            Iterator<AdobeLibraryRepresentation> it = representations.iterator();
            while (it.hasNext()) {
                if (it.next().getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementMustHaveOnePrimaryRepresentation, null, null, null);
                }
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation internalAddRepresentationAsNodeWithContentType(java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.Integer r19, java.lang.Integer r20, boolean r21) throws com.adobe.creativesdk.foundation.storage.AdobeLibraryException {
        /*
            Method dump skipped, instruction units count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryElementDCXNode.internalAddRepresentationAsNodeWithContentType(java.lang.String, java.lang.String, java.lang.String, java.lang.Integer, java.lang.Integer, boolean):com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation");
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeLibraryRepresentation addRepresentationWithContentType(String str, String str2) throws AdobeLibraryException {
        return internalAddRepresentationAsNodeWithContentType(str, null, str2, null, null, false);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeLibraryRepresentation addRepresentationWithContentType(String str, String str2, String str3, boolean z, String str4, Integer num, Integer num2, boolean z2) throws AdobeLibraryException, AdobeDCXException {
        AdobeDCXComponent adobeDCXComponentAddComponent;
        AdobeStorageErrorUtils.verifyArgument(str != null, "type");
        AdobeStorageErrorUtils.verifyArgument(!str.equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType), "Cannot create external link representation directly.");
        if (!validateAddRepresentation(str4)) {
            return null;
        }
        if (z) {
            AdobeStorageErrorUtils.verifyArgument(str3 != null, "sourceHref");
            return internalAddRepresentationAsNodeWithContentType(str, str3, str4, num, num2, z2);
        }
        AdobeLibraryAnalyticsOperation adobeLibraryAnalyticsOperation = new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementCreate, this.mHostLibrary, this, str4);
        this.mHostLibrary.lock();
        this.mHostLibrary.beginChanges();
        String strGenerateUuid = AdobeStorageUtils.generateUuid();
        String extension = FilenameUtils.getExtension(str2 != null ? str2 : str3);
        if (extension == null) {
            extension = "";
        }
        AdobeDCXMutableComponent adobeDCXMutableComponent = new AdobeDCXMutableComponent(strGenerateUuid, String.format("%s.%s", strGenerateUuid, extension), null, str, null, AdobeDCXConstants.AdobeDCXAssetStateModified);
        if (adobeDCXMutableComponent != null) {
            if (num != null) {
                adobeDCXMutableComponent.setWidth(num.intValue());
            }
            if (num2 != null) {
                adobeDCXMutableComponent.setHeight(num2.intValue());
            }
            if (z2) {
                adobeDCXMutableComponent.setValue(1, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationFullSizeKey);
            }
            adobeDCXMutableComponent.setRelationship(str4);
            if (str4.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) && num == null && num2 == null && !z2) {
                BitmapFactory.Options imageSize = AdobeLibraryUtils.getImageSize(str2);
                if (imageSize.outWidth > 0 || imageSize.outHeight > 0) {
                    if (imageSize.outWidth > 0) {
                        adobeDCXMutableComponent.setWidth(imageSize.outWidth);
                    }
                    if (imageSize.outHeight > 0) {
                        adobeDCXMutableComponent.setHeight(imageSize.outHeight);
                    }
                }
            }
            try {
                adobeDCXComponentAddComponent = this.mHostLibrary.getDcxComposite().getCurrent().addComponent((AdobeDCXComponent) adobeDCXMutableComponent, this.mDcxNode, str2, true, str3);
                e = null;
            } catch (AdobeDCXException e2) {
                e = e2;
                adobeDCXComponentAddComponent = null;
            }
            if (adobeDCXComponentAddComponent == null) {
                this.mHostLibrary.unlock();
                this.mHostLibrary.endChanges();
                AdobeLibraryErrorCode adobeLibraryErrorCode = AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddRepresentation;
                if (str2 == null) {
                    str2 = str3;
                }
                AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(adobeLibraryErrorCode, e, str2, null);
                adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError);
                throw adobeLibraryExceptionCreateLibraryError;
            }
            elementRepresentationsChanged();
            AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode = new AdobeLibraryRepresentationDCXNode(adobeDCXComponentAddComponent, this.mHostLibrary, this);
            this.mHostLibrary.unlock();
            this.mHostLibrary.endChanges();
            adobeLibraryAnalyticsOperation.trackAction(null);
            return adobeLibraryRepresentationDCXNode;
        }
        this.mHostLibrary.unlock();
        this.mHostLibrary.endChanges();
        adobeLibraryAnalyticsOperation.trackAction(null);
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeLibraryRepresentation removeRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) throws AdobeLibraryException {
        AdobeDCXComponent adobeDCXComponentRemoveComponent;
        AdobeDCXNode adobeDCXNodeRemoveNode;
        if (this.mHostLibrary == null || this.mHostLibrary.addErrorIfReadOnly()) {
            return null;
        }
        this.mHostLibrary.lock();
        this.mHostLibrary.beginChanges();
        if (adobeLibraryRepresentation.getDCXNode() != null && (adobeDCXNodeRemoveNode = this.mHostLibrary.getDcxComposite().getCurrent().removeNode(adobeLibraryRepresentation.getDCXNode())) != null) {
            elementRepresentationsChanged();
            AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode = new AdobeLibraryRepresentationDCXNode(adobeDCXNodeRemoveNode, (AdobeLibraryComposite) null, (AdobeLibraryElement) null);
            this.mHostLibrary.unlock();
            this.mHostLibrary.endChanges();
            return adobeLibraryRepresentationDCXNode;
        }
        if (adobeLibraryRepresentation.getComponent() != null && (adobeDCXComponentRemoveComponent = this.mHostLibrary.getDcxComposite().getCurrent().removeComponent(adobeLibraryRepresentation.getComponent())) != null) {
            elementRepresentationsChanged();
            this.mHostLibrary.getDcxComposite().removeUnusedLocalFiles();
            AdobeLibraryRepresentationDCXNode adobeLibraryRepresentationDCXNode2 = new AdobeLibraryRepresentationDCXNode(adobeDCXComponentRemoveComponent, (AdobeLibraryComposite) null, (AdobeLibraryElement) null);
            this.mHostLibrary.unlock();
            this.mHostLibrary.endChanges();
            return adobeLibraryRepresentationDCXNode2;
        }
        this.mHostLibrary.unlock();
        this.mHostLibrary.endChanges();
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void removeAllRepresentations() throws AdobeLibraryException {
        if (this.mHostLibrary == null || !this.mHostLibrary.addErrorIfReadOnly()) {
            Iterator<AdobeLibraryRepresentation> it = getRepresentations().iterator();
            while (it.hasNext()) {
                removeRepresentation(it.next());
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement, com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void addTag(String str) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementUpdate, this.mHostLibrary, this, null).trackAction(null);
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            super.addTag(str);
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryElementDCXNode.class.getSimpleName(), null, e2);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement, com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void addTags(List<String> list) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementUpdate, this.mHostLibrary, this, null).trackAction(null);
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            super.addTags(list);
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryElementDCXNode.class.getSimpleName(), null, e2);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement, com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public void removeTag(String str) {
        if (this.mHostLibrary == null || !this.mHostLibrary.isReadOnly()) {
            new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementUpdate, this.mHostLibrary, this, null).trackAction(null);
            this.mHostLibrary.lock();
            this.mHostLibrary.beginChanges();
            super.removeTag(str);
            this.mHostLibrary.unlock();
            try {
                this.mHostLibrary.endChanges();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryElementDCXNode.class.getSimpleName(), null, e2);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public AdobeDCXElement getDCXElement() throws AdobeLibraryException {
        AdobeDCXException adobeDCXException;
        AdobeDCXElement elementWithId;
        this.mHostLibrary.lock();
        try {
            elementWithId = this.mHostLibrary.getDcxComposite().getCurrent().getElementWithId(getElementId());
            adobeDCXException = null;
        } catch (AdobeDCXException e2) {
            adobeDCXException = e2;
            elementWithId = null;
        }
        if (elementWithId == null && adobeDCXException != null) {
            this.mHostLibrary.unlock();
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, adobeDCXException, null, null);
        }
        this.mHostLibrary.unlock();
        return elementWithId;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryElement
    public boolean releaseDCXElement(AdobeDCXElement adobeDCXElement) throws AdobeLibraryException {
        boolean zAbandonElement = false;
        if (this.mHostLibrary != null && this.mHostLibrary.addErrorIfReadOnly()) {
            return false;
        }
        if (this.mHostLibrary == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, null, null, null);
        }
        this.mHostLibrary.lock();
        try {
            zAbandonElement = this.mHostLibrary.getDcxComposite().getCurrent().abandonElement(adobeDCXElement);
            e = null;
        } catch (AdobeDCXException e2) {
            e = e2;
        }
        if (!zAbandonElement) {
            this.mHostLibrary.unlock();
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, e, null, null);
        }
        this.mHostLibrary.unlock();
        return true;
    }
}
