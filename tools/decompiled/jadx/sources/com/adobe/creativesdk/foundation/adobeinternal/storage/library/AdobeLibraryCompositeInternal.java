package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryCompositeInternal extends AdobeLibraryComposite {
    boolean _isUnShared;

    public AdobeLibraryCompositeInternal(String str, AdobeLibraryCollection adobeLibraryCollection) throws AdobeLibraryException {
        super(str, adobeLibraryCollection);
        this._isUnShared = false;
    }

    public AdobeLibraryCompositeInternal(String str, AdobeLibraryCollection adobeLibraryCollection, String str2) throws AdobeLibraryException {
        super(str, adobeLibraryCollection, str2);
        this._isUnShared = false;
    }

    public AdobeLibraryCompositeInternal(AdobeDCXComposite adobeDCXComposite, AdobeLibraryCollection adobeLibraryCollection, String str) throws AdobeLibraryException {
        super(adobeDCXComposite, adobeLibraryCollection, str);
        this._isUnShared = false;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeDCXComposite getDcxComposite() {
        return super.getDcxComposite();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public void lock() {
        super.lock();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public void unlock() {
        super.unlock();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public void beginChanges() {
        super.beginChanges();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean endChanges() throws AdobeLibraryException {
        return super.endChanges();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean discardChanges() {
        return super.discardChanges();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public void setName(String str) throws AdobeLibraryException {
        super.setName(str);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeDCXNode getElementNode(AdobeLibraryElement adobeLibraryElement) {
        return super.getElementNode(adobeLibraryElement);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryElement addElement(AdobeLibraryElement adobeLibraryElement) throws AdobeLibraryException {
        return super.addElement(adobeLibraryElement);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryElement addElement(String str, String str2) throws AdobeLibraryException {
        return super.addElement(str, str2);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryElement copyElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        return super.copyElement(adobeLibraryElement, adobeLibraryComposite);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryElement insertElement(AdobeLibraryElement adobeLibraryElement, int i, AdobeLibraryDelegate adobeLibraryDelegate) throws AdobeLibraryException {
        return super.insertElement(adobeLibraryElement, i, adobeLibraryDelegate);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryElement updateElement(AdobeLibraryMutableElement adobeLibraryMutableElement) throws AdobeLibraryException {
        return super.updateElement(adobeLibraryMutableElement);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryElement moveElementAfter(AdobeLibraryElement adobeLibraryElement, AdobeLibraryElement adobeLibraryElement2) throws AdobeLibraryException {
        return super.moveElementAfter(adobeLibraryElement, adobeLibraryElement2);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryElement moveElementBefore(AdobeLibraryElement adobeLibraryElement, AdobeLibraryElement adobeLibraryElement2) throws AdobeLibraryException {
        return super.moveElementBefore(adobeLibraryElement, adobeLibraryElement2);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryRepresentation addRepresentation(AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation, AdobeLibraryElement adobeLibraryElement) throws AdobeLibraryException {
        return super.addRepresentation(adobeLibraryMutableRepresentation, adobeLibraryElement);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryRepresentation removeRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) throws AdobeLibraryException {
        return super.removeRepresentation(adobeLibraryRepresentation);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryRepresentation updateRepresentation(AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation) throws AdobeLibraryException {
        return super.updateRepresentation(adobeLibraryMutableRepresentation);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public ArrayList<AdobeLibraryCategory> getCategories() {
        return super.getCategories();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryCategory getCategoryWithId(String str) {
        return super.getCategoryWithId(str);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryCategory addCategory(AdobeLibraryCategory adobeLibraryCategory, boolean z) throws AdobeLibraryException {
        return super.addCategory(adobeLibraryCategory, z);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryCategory addCategory(AdobeLibraryCategory adobeLibraryCategory) throws AdobeLibraryException {
        return super.addCategory(adobeLibraryCategory);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryCategory updateCategory(AdobeLibraryCategory adobeLibraryCategory) throws AdobeLibraryException {
        return super.updateCategory(adobeLibraryCategory);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryCategory removeCategory(AdobeLibraryCategory adobeLibraryCategory, boolean z, String str) throws AdobeLibraryException {
        return super.removeCategory(adobeLibraryCategory, z, str);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    protected boolean removeRenditionCacheForElement(String str) {
        return super.removeRenditionCacheForElement(str);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryRepresentation getPrimaryRepresentationForElement(AdobeLibraryElement adobeLibraryElement) {
        return super.getPrimaryRepresentationForElement(adobeLibraryElement);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean getFilePathForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, Handler handler) {
        return super.getFilePathForRepresentation(adobeLibraryRepresentation, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public ArrayList<AdobeLibraryRepresentation> getRepresentationsForElement(AdobeLibraryElement adobeLibraryElement) {
        return super.getRepresentationsForElement(adobeLibraryElement);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public AdobeLibraryElement removeElement(AdobeLibraryElement adobeLibraryElement) throws AdobeLibraryException {
        return super.removeElement(adobeLibraryElement);
    }

    public boolean isCompositeValid() {
        return this.mDcxComposite != null;
    }

    public static AdobeDCXNode getElementsDCXNodeOfCompositeBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) throws AdobeLibraryException {
        return AdobeLibraryComposite.getElementsDCXNodeOfCompositeBranch(adobeDCXCompositeBranch);
    }

    public static AdobeDCXNode getRemovedElementsDCXNodeOfCompositeBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) throws AdobeLibraryException {
        return AdobeLibraryComposite.getRemovedElementsDCXNodeOfCompositeBranch(adobeDCXCompositeMutableBranch);
    }

    public static AdobeDCXManifestNode getElementsNodeOfCompositeBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) throws AdobeLibraryException {
        return AdobeLibraryComposite.getElementsNodeOfCompositeBranch(adobeDCXCompositeBranch);
    }

    public void markSelfUnShare() {
        this._isUnShared = true;
    }

    public boolean isSelfUnshared() {
        return this._isUnShared;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean hasUnsyncedChanges() {
        return super.hasUnsyncedChanges();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean isPendingDelete() {
        return super.isPendingDelete();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean deleteLibrary() throws AdobeLibraryException {
        return super.deleteLibrary();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean internalGetRenditionPath(String str, int i, boolean z, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, Handler handler, ArrayList<AdobeNetworkHttpTaskHandle> arrayList) {
        return super.internalGetRenditionPath(str, i, z, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler, arrayList);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean downloadRenditionFromExternalLink(AdobeLibraryElement adobeLibraryElement, AdobeLibraryRepresentation adobeLibraryRepresentation, int i, Handler handler, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback) {
        return super.downloadRenditionFromExternalLink(adobeLibraryElement, adobeLibraryRepresentation, i, handler, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean shouldDownloadExternalAssetForRepresentation(AdobeDCXNode adobeDCXNode) {
        return super.shouldDownloadExternalAssetForRepresentation(adobeDCXNode);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public boolean internalFilePathForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, Handler handler, ArrayList<AdobeNetworkHttpTaskHandle> arrayList) {
        return super.internalFilePathForRepresentation(adobeLibraryRepresentation, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler, arrayList);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite
    public void refreshWithComposite(AdobeDCXComposite adobeDCXComposite, String str) {
        super.refreshWithComposite(adobeDCXComposite, str);
    }
}
