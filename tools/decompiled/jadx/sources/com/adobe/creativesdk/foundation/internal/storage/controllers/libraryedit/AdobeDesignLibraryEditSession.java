package com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit;

import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v4.util.Pair;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeInternal;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationException;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationRemoveCollaboratorCallback;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.IAdobeCCFilesRenameDialogDismissController;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeDesignLibraryEditSession {
    private String _newLibraryID;
    private EditSummary _summary;
    IAdobeEditLibraryCallback editResponseCallback;
    FragmentManager fm;
    AdobeDesignLibraryEditOperation operation;
    private volatile int repsCountDownloaded = 0;
    private volatile boolean alreadyHandled = false;
    private final String AdobeColorNameSpaceKey = "color";
    private final String AdobeColorThemeNameSpaceKey = "colortheme";
    private final String AdobeCharacterStyleNameSpaceKey = "characterstyle";
    private AdobeLibraryManager _libraryManager = AdobeLibraryManager.getSharedInstance();

    static /* synthetic */ int access$108(AdobeDesignLibraryEditSession adobeDesignLibraryEditSession) {
        int i = adobeDesignLibraryEditSession.repsCountDownloaded;
        adobeDesignLibraryEditSession.repsCountDownloaded = i + 1;
        return i;
    }

    public AdobeDesignLibraryEditSession(FragmentManager fragmentManager, AdobeDesignLibraryEditOperation adobeDesignLibraryEditOperation, IAdobeEditLibraryCallback iAdobeEditLibraryCallback) {
        this.operation = adobeDesignLibraryEditOperation;
        this.editResponseCallback = iAdobeEditLibraryCallback;
        this.fm = fragmentManager;
    }

    public AdobeDesignLibraryEditSession(String str, FragmentManager fragmentManager, AdobeDesignLibraryEditOperation adobeDesignLibraryEditOperation, IAdobeEditLibraryCallback iAdobeEditLibraryCallback) {
        this.operation = adobeDesignLibraryEditOperation;
        this.editResponseCallback = iAdobeEditLibraryCallback;
        this.fm = fragmentManager;
        this._newLibraryID = str;
    }

    public void startEditSession() throws AdobeDCXException {
        switch (this.operation) {
            case ADOBE_LIBRARY_ITEM_EDIT_OPERATION_ERASE:
                handleEraseOperation();
                break;
            case ADOBE_LIBRARY_ITEM_EDIT_OPERATION_MOVE:
                handleMoveOperation(false);
                break;
            case ADOBE_LIBRARY_ITEM_EDIT_OPERATION_COPY:
                handleMoveOperation(true);
                break;
            case ADOBE_LIBRARY_COMP_EDIT_OPERATION_DELETE:
                handleLibCompDeleteOperation();
                break;
            case ADOBE_PUBLIC_LIBRARY_COMP_EDIT_OPERATION_DELETE:
                handlePublicLibCompDeleteOperation();
                break;
        }
    }

    public void startEditSession(IAdobeCCFilesRenameDialogDismissController iAdobeCCFilesRenameDialogDismissController) {
        switch (this.operation) {
            case ADOBE_LIBRARY_ITEM_EDIT_OPERATION_RENAME:
                handleItemRenameOperation(iAdobeCCFilesRenameDialogDismissController);
                break;
            case ADOBE_LIBRARY_COMP_EDIT_OPERATION_RENAME:
                handleLibCompRenameOperation(iAdobeCCFilesRenameDialogDismissController);
                break;
        }
    }

    private void handleLibCompRenameOperation(IAdobeCCFilesRenameDialogDismissController iAdobeCCFilesRenameDialogDismissController) {
        this._summary = new EditSummary();
        this._summary.operation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_RENAME;
        AdobeLibraryElementRenameDialogFragment adobeLibraryElementRenameDialogFragment = new AdobeLibraryElementRenameDialogFragment();
        adobeLibraryElementRenameDialogFragment.setParameters(null, AdobeLibraryManager.getSharedInstance().getLibraryWithId(this._newLibraryID), new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                AdobeDesignLibraryEditSession.this._summary.setEditSucceeded(((Boolean) obj).booleanValue());
                AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
                AdobeDesignLibraryEditSession.this.editResponseCallback.onComplete();
            }
        });
        adobeLibraryElementRenameDialogFragment.setDismissController(iAdobeCCFilesRenameDialogDismissController);
        adobeLibraryElementRenameDialogFragment.show(this.fm, "LibCompRename");
    }

    private void handleLibCompDeleteOperation() {
        this._summary = new EditSummary();
        this._summary.operation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_DELETE;
        notifyCompEditStarted();
        try {
            final AdobeLibraryComposite libraryWithId = AdobeLibraryManager.getSharedInstance().getLibraryWithId(this._newLibraryID);
            AdobeCollaborationType collaboration = libraryWithId.getCollaboration();
            if (libraryWithId.isReadOnly() || collaboration.equals(AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER)) {
                AdobeCollaborationSession.getSharedSession().removeCollaborator("/assets/adobe-libraries/" + libraryWithId.getLibraryId(), AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID(), new IAdobeCollaborationRemoveCollaboratorCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession.2
                    @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationRemoveCollaboratorCallback
                    public void onComplete() {
                        ((AdobeLibraryCompositeInternal) libraryWithId).markSelfUnShare();
                        AdobeDesignLibraryEditSession.this._summary.setEditSucceeded(true);
                        AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
                        AdobeDesignLibraryEditSession.this.editResponseCallback.onComplete();
                        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COLLECTION_REFRESH_DUE_TO_SHARE_MODIFY, null);
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.collaboration.delegates.IAdobeCollaborationErrorCallback
                    public void onError(AdobeCollaborationException adobeCollaborationException) {
                        AdobeDesignLibraryEditSession.this._summary.setEditSucceeded(false);
                        AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
                        AdobeDesignLibraryEditSession.this.editResponseCallback.onComplete();
                    }
                });
            } else {
                AdobeLibraryManager.getSharedInstance().deleteLibraryWithId(this._newLibraryID);
                this._summary.setEditSucceeded(true);
                AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
                this.editResponseCallback.onComplete();
            }
        } catch (AdobeLibraryException e2) {
            this._summary.setEditSucceeded(false);
            e2.printStackTrace();
            AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
            this.editResponseCallback.onComplete();
        }
    }

    private void handlePublicLibCompDeleteOperation() {
        this._summary = new EditSummary();
        this._summary.operation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_COMP_EDIT_OPERATION_DELETE;
        notifyCompEditStarted();
        try {
            AdobeLibraryManager.getSharedInstance().deleteLibraryWithId(this._newLibraryID);
        } catch (AdobeLibraryException e2) {
            e2.printStackTrace();
        }
        this._summary.setEditSucceeded(true);
        AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
        this.editResponseCallback.onComplete();
        AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
        this.editResponseCallback.onComplete();
    }

    private void handleItemRenameOperation(IAdobeCCFilesRenameDialogDismissController iAdobeCCFilesRenameDialogDismissController) {
        this._summary = new EditSummary();
        this._summary.operation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_RENAME;
        AdobeLibraryElementRenameDialogFragment adobeLibraryElementRenameDialogFragment = new AdobeLibraryElementRenameDialogFragment();
        if (AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets() != null) {
            adobeLibraryElementRenameDialogFragment.setParameters(AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets().get(0).getLibraryElement(), AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets().get(0).getLibraryComposite(), new Observer() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession.3
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    AdobeDesignLibraryEditSession.this._summary.setEditSucceeded(((Boolean) obj).booleanValue());
                    AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
                    AdobeDesignLibraryEditSession.this.editResponseCallback.onComplete();
                }
            });
            adobeLibraryElementRenameDialogFragment.setDismissController(iAdobeCCFilesRenameDialogDismissController);
            adobeLibraryElementRenameDialogFragment.show(this.fm, "AssetRename");
        }
    }

    private void downloadRepresentations(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryComposite adobeLibraryComposite2, AdobeLibraryElement adobeLibraryElement, AdobeLibraryElement adobeLibraryElement2, IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, Handler handler) {
        this.repsCountDownloaded = 0;
        this.alreadyHandled = false;
        List<AdobeLibraryRepresentation> representations = adobeLibraryElement.getRepresentations();
        if (representations != null && representations.size() != 0) {
            Iterator<AdobeLibraryRepresentation> it = representations.iterator();
            while (it.hasNext()) {
                new Thread(new C1RepRunnable(it.next(), adobeLibraryComposite2, adobeLibraryElement2, representations, handler, iAdobeRequestCompletionCallback)).start();
            }
            return;
        }
        iAdobeRequestCompletionCallback.onCompletion();
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession$1EnclosedObj, reason: invalid class name */
    class C1EnclosedObj {
        boolean isDone = false;

        C1EnclosedObj() {
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession$1RepRunnable, reason: invalid class name */
    class C1RepRunnable implements Runnable {
        AdobeLibraryRepresentation _rep;
        final /* synthetic */ AdobeLibraryElement val$addedElement;
        final /* synthetic */ IAdobeRequestCompletionCallback val$completionCallback;
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ AdobeLibraryComposite val$oldComposite;
        final /* synthetic */ List val$reps;

        C1RepRunnable(AdobeLibraryRepresentation adobeLibraryRepresentation, AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement, List list, Handler handler, IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback) {
            this.val$oldComposite = adobeLibraryComposite;
            this.val$addedElement = adobeLibraryElement;
            this.val$reps = list;
            this.val$handler = handler;
            this.val$completionCallback = iAdobeRequestCompletionCallback;
            this._rep = adobeLibraryRepresentation;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            final C1EnclosedObj c1EnclosedObj = AdobeDesignLibraryEditSession.this.new C1EnclosedObj();
            final ReentrantLock reentrantLock = new ReentrantLock();
            final Condition conditionNewCondition = reentrantLock.newCondition();
            if (!this._rep.isExternalLink() && this._rep.getComponent() != null) {
                this.val$oldComposite.getFilePathForRepresentation(this._rep, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession.1RepRunnable.1
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(String str) {
                        reentrantLock.lock();
                        conditionNewCondition.signal();
                        try {
                            if (C1RepRunnable.this._rep.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition)) {
                                while (C1RepRunnable.this.val$addedElement.getPrimaryRepresentation() == null) {
                                    try {
                                        Thread.sleep(500L);
                                    } catch (InterruptedException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                            }
                            C1RepRunnable.this.val$addedElement.addRepresentationWithContentType(C1RepRunnable.this._rep.getType(), str, null, false, C1RepRunnable.this._rep.getRelationship(), null, null, true);
                            AdobeDesignLibraryEditSession.access$108(AdobeDesignLibraryEditSession.this);
                        } catch (AdobeLibraryException e3) {
                            e3.printStackTrace();
                        }
                        c1EnclosedObj.isDone = true;
                        reentrantLock.unlock();
                    }
                }, new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession.1RepRunnable.2
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeLibraryException adobeLibraryException) {
                        reentrantLock.lock();
                        AdobeDesignLibraryEditSession.access$108(AdobeDesignLibraryEditSession.this);
                        conditionNewCondition.signal();
                        c1EnclosedObj.isDone = true;
                        reentrantLock.unlock();
                    }
                }, null);
            } else {
                reentrantLock.lock();
                try {
                    if (!this._rep.isExternalLink()) {
                        Pair jsonDataForRepresentation = AdobeDesignLibraryEditSession.this.getJsonDataForRepresentation(this._rep);
                        this.val$addedElement.addRepresentationWithContentType(this._rep.getNodeType(), this._rep.getRelationship()).setValue(jsonDataForRepresentation.second, "data", (String) jsonDataForRepresentation.first);
                    } else {
                        this.val$addedElement.addRepresentationWithContentType(this._rep.getType(), null, this._rep.getContentURL().toString(), true, this._rep.getRelationship(), null, null, true);
                    }
                    AdobeDesignLibraryEditSession.access$108(AdobeDesignLibraryEditSession.this);
                } catch (AdobeLibraryException e2) {
                    e2.printStackTrace();
                }
                conditionNewCondition.signal();
                c1EnclosedObj.isDone = true;
                reentrantLock.unlock();
            }
            reentrantLock.lock();
            while (!c1EnclosedObj.isDone) {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                }
            }
            synchronized (AdobeDesignLibraryEditSession.this) {
                if (!AdobeDesignLibraryEditSession.this.alreadyHandled && AdobeDesignLibraryEditSession.this.repsCountDownloaded == this.val$reps.size()) {
                    AdobeDesignLibraryEditSession.this.alreadyHandled = true;
                    this.val$handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession.1RepRunnable.3
                        @Override // java.lang.Runnable
                        public void run() {
                            C1RepRunnable.this.val$completionCallback.onCompletion();
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Pair<String, Object> getJsonDataForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) {
        switch (adobeLibraryRepresentation.getNodeType()) {
            case "application/vnd.adobe.color+json":
                return new Pair<>("color", adobeLibraryRepresentation.getValueForKey("data", "color"));
            case "application/vnd.adobe.colortheme+json":
                return new Pair<>("colortheme", adobeLibraryRepresentation.getValueForKey("data", "colortheme"));
            case "application/vnd.adobe.characterstyle+json":
                return new Pair<>("characterstyle", adobeLibraryRepresentation.getValueForKey("data", "characterstyle"));
            default:
                return null;
        }
    }

    private void handleMoveOperation(final boolean z) {
        this._summary = new EditSummary();
        if (z) {
            this._summary.operation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_COPY;
        } else {
            this._summary.operation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_MOVE;
        }
        Handler handler = new Handler();
        AdobeLibraryComposite libraryWithId = this._libraryManager.getLibraryWithId(this._newLibraryID);
        if (AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets() != null) {
            notifyEditStarted();
            final AdobeLibraryComposite libraryComposite = AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets().get(0).getLibraryComposite();
            if (libraryComposite.getLibraryId().equals(this._newLibraryID)) {
                this._summary.setMoveOperationInSameLocation();
                AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
                this.editResponseCallback.onComplete();
            } else {
                final AdobeLibraryElement libraryElement = AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets().get(0).getLibraryElement();
                try {
                    downloadRepresentations(libraryWithId, libraryComposite, libraryElement, ((AdobeLibraryCompositeInternal) libraryWithId).addElement(libraryElement.getName(), libraryElement.getType()), new IAdobeRequestCompletionCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit.AdobeDesignLibraryEditSession.4
                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
                        public void onCompletion() {
                            AdobeDesignLibraryEditSession.this._summary.setEditSucceeded(true);
                            if (!z) {
                                try {
                                    libraryComposite.removeElement(libraryElement);
                                    AdobeDesignLibraryEditSession.this._summary.setEditSucceeded(true);
                                } catch (AdobeLibraryException e2) {
                                    AdobeDesignLibraryEditSession.this._summary.setEditSucceeded(false);
                                }
                            }
                            AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
                            AdobeDesignLibraryEditSession.this.editResponseCallback.onComplete();
                        }
                    }, handler);
                } catch (AdobeLibraryException e2) {
                    this._summary.setEditSucceeded(false);
                    AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
                    this.editResponseCallback.onComplete();
                }
            }
        }
    }

    private void notifyEditStarted() {
        AdobeDesignLibraryEditManager.setEditInProgress(true);
        AdobeDesignLibraryEditManager.setEditStarted(true);
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_ITEM_EDIT_STARTED);
    }

    private void notifyCompEditStarted() {
        AdobeDesignLibraryEditManager.setEditInProgress(true);
        AdobeDesignLibraryEditManager.setEditStarted(true);
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_LIBRARY_COMP_EDIT_STARTED);
    }

    private void handleEraseOperation() throws AdobeDCXException {
        this._summary = new EditSummary();
        this._summary.operation = AdobeDesignLibraryEditOperation.ADOBE_LIBRARY_ITEM_EDIT_OPERATION_ERASE;
        if (AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets() != null) {
            notifyEditStarted();
            try {
                AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets().get(0).getLibraryComposite().archiveElement(AdobeEditSelectedLibraryElementsController.sharedController().getTargetAssets().get(0).getLibraryElement());
                this._summary.setEditSucceeded(true);
            } catch (AdobeLibraryException e2) {
                this._summary.setEditSucceeded(false);
            }
            AdobeDesignLibraryEditManager.setEditCompletionHandled(false);
            this.editResponseCallback.onComplete();
        }
    }

    public EditSummary getEditSummary() {
        return this._summary;
    }

    public class EditSummary {
        private boolean _moveOperationInSameLocation = false;
        private boolean editSucceeded = false;
        public AdobeDesignLibraryEditOperation operation;

        public void setMoveOperationInSameLocation() {
            this._moveOperationInSameLocation = true;
        }

        public boolean hasMoveOperationInSameLocation() {
            if (!this._moveOperationInSameLocation) {
                return false;
            }
            this._moveOperationInSameLocation = false;
            return true;
        }

        public boolean isEditSucceeded() {
            return this.editSucceeded;
        }

        public void setEditSucceeded(boolean z) {
            this.editSucceeded = z;
        }
    }
}
