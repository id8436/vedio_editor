package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushMergeDelegate;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryMerger implements IAdobeDCXPushMergeDelegate {
    static final /* synthetic */ boolean $assertionsDisabled;
    AdobeDCXComposite mComposite;

    static {
        $assertionsDisabled = !AdobeLibraryMerger.class.desiredAssertionStatus();
    }

    public static boolean currentBranchChangedFromPushed(AdobeDCXComposite adobeDCXComposite) {
        long jLongValue = ((Long) adobeDCXComposite.getCurrent().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue();
        long jLongValue2 = ((Long) adobeDCXComposite.getPushed().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue();
        if (!$assertionsDisabled && (jLongValue == 0 || jLongValue2 == 0)) {
            throw new AssertionError("Could not find modified time for current or pushed library branch. Obsolete library.");
        }
        if (jLongValue == 0 || jLongValue2 == 0) {
            return false;
        }
        return jLongValue > jLongValue2;
    }

    public static void determineChangesInBranch(AdobeDCXComposite adobeDCXComposite, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXCompositeBranch adobeDCXCompositeBranch2, IAdobeLibraryMergerCallback iAdobeLibraryMergerCallback, ArrayList arrayList) {
        AdobeDCXNode elementsDCXNodeOfCompositeBranch;
        AdobeDCXNode elementsDCXNodeOfCompositeBranch2;
        List<AdobeDCXNode> childrenOfNode;
        List<AdobeDCXNode> childrenOfNode2;
        if (adobeDCXCompositeBranch2 == null) {
            adobeDCXCompositeBranch2 = adobeDCXComposite.getBase();
        }
        if (adobeDCXCompositeBranch2 != null) {
            try {
                elementsDCXNodeOfCompositeBranch = AdobeLibraryCompositeInternal.getElementsDCXNodeOfCompositeBranch(adobeDCXCompositeBranch);
            } catch (AdobeLibraryException e2) {
                e2.printStackTrace();
                elementsDCXNodeOfCompositeBranch = null;
            }
            if (elementsDCXNodeOfCompositeBranch != null && (childrenOfNode2 = adobeDCXCompositeBranch.getChildrenOfNode(elementsDCXNodeOfCompositeBranch)) != null) {
                for (AdobeDCXNode adobeDCXNode : childrenOfNode2) {
                    AdobeDCXNode nodeWithId = adobeDCXCompositeBranch2.getNodeWithId(adobeDCXNode.getNodeId());
                    if (nodeWithId == null) {
                        if (iAdobeLibraryMergerCallback != null && !iAdobeLibraryMergerCallback.onElementAdded(adobeDCXNode.getNodeId(), adobeDCXNode.getType())) {
                            return;
                        }
                    } else if (((Long) adobeDCXNode.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue() != ((Long) nodeWithId.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue()) {
                        if (iAdobeLibraryMergerCallback != null && !iAdobeLibraryMergerCallback.onElementModified(adobeDCXNode.getNodeId(), adobeDCXNode.getType())) {
                            return;
                        }
                    } else if (nodeWithId.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey) != null && iAdobeLibraryMergerCallback != null && !iAdobeLibraryMergerCallback.onElementAdded(adobeDCXNode.getNodeId(), adobeDCXNode.getType())) {
                        return;
                    }
                }
            }
            try {
                elementsDCXNodeOfCompositeBranch2 = AdobeLibraryCompositeInternal.getElementsDCXNodeOfCompositeBranch(adobeDCXCompositeBranch2);
            } catch (AdobeLibraryException e3) {
                e3.printStackTrace();
                elementsDCXNodeOfCompositeBranch2 = null;
            }
            if (elementsDCXNodeOfCompositeBranch2 != null && (childrenOfNode = adobeDCXCompositeBranch2.getChildrenOfNode(elementsDCXNodeOfCompositeBranch2)) != null) {
                for (AdobeDCXNode adobeDCXNode2 : childrenOfNode) {
                    if (isFilterInType(adobeDCXNode2, arrayList)) {
                        AdobeDCXNode nodeWithId2 = adobeDCXCompositeBranch.getNodeWithId(adobeDCXNode2.getNodeId());
                        Object obj = adobeDCXNode2.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey);
                        Object obj2 = nodeWithId2 != null ? nodeWithId2.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey) : null;
                        if (nodeWithId2 == null || (obj == null && obj2 != null)) {
                            if (iAdobeLibraryMergerCallback != null && !iAdobeLibraryMergerCallback.onElementDeleted(adobeDCXNode2.getNodeId(), adobeDCXNode2.getType())) {
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    private static boolean isFilterInType(AdobeDCXNode adobeDCXNode, ArrayList arrayList) {
        return adobeDCXNode.getType() != null && (arrayList == null || arrayList.size() == 0 || arrayList.contains(adobeDCXNode.getType()));
    }

    public static boolean ensureBranchDataValid(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) {
        boolean z;
        boolean z2;
        boolean z3;
        int i = 0;
        try {
            AdobeDCXNode elementsDCXNodeOfCompositeBranch = AdobeLibraryCompositeInternal.getElementsDCXNodeOfCompositeBranch(adobeDCXCompositeMutableBranch);
            if (elementsDCXNodeOfCompositeBranch != null) {
                List<AdobeDCXNode> childrenOfNode = adobeDCXCompositeMutableBranch.getChildrenOfNode(elementsDCXNodeOfCompositeBranch);
                int i2 = 0;
                z = false;
                while (i2 < childrenOfNode.size()) {
                    try {
                        AdobeDCXNode adobeDCXNode = childrenOfNode.get(i2);
                        if (adobeDCXNode.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey) != null) {
                            adobeDCXNode.remove(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey);
                            z3 = true;
                        } else {
                            z3 = z;
                        }
                        i2++;
                        z = z3;
                    } catch (AdobeLibraryException e2) {
                        e = e2;
                        AdobeLogger.log(Level.ERROR, "ensureBranchDataValid", e.getMessage());
                    }
                }
            } else {
                z = false;
            }
            AdobeDCXNode removedElementsDCXNodeOfCompositeBranch = AdobeLibraryCompositeInternal.getRemovedElementsDCXNodeOfCompositeBranch(adobeDCXCompositeMutableBranch);
            if (removedElementsDCXNodeOfCompositeBranch != null) {
                List<AdobeDCXNode> childrenOfNode2 = adobeDCXCompositeMutableBranch.getChildrenOfNode(removedElementsDCXNodeOfCompositeBranch);
                while (i < childrenOfNode2.size()) {
                    AdobeDCXNode adobeDCXNode2 = childrenOfNode2.get(i);
                    if (adobeDCXNode2.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey) == null) {
                        adobeDCXNode2.setValue(Long.valueOf(AdobeLibraryUtils.getCurrentTimeInMilliseconds()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey);
                        z2 = true;
                    } else {
                        z2 = z;
                    }
                    i++;
                    z = z2;
                }
            }
        } catch (AdobeLibraryException e3) {
            e = e3;
            z = false;
        }
        return z;
    }

    public static List<AdobeDCXComponent> determineComponentsWithoutLocalCopy(AdobeDCXComposite adobeDCXComposite) {
        String pathForComponent;
        ArrayList arrayList = new ArrayList();
        for (AdobeDCXComponent adobeDCXComponent : adobeDCXComposite.getCurrent().getAllComponents()) {
            try {
                pathForComponent = adobeDCXComposite.getCurrent().getPathForComponent(adobeDCXComponent);
            } catch (AdobeDCXException e2) {
                e2.printStackTrace();
                pathForComponent = null;
            }
            if (adobeDCXComponent == null || pathForComponent == null) {
                arrayList.add(adobeDCXComponent);
            }
        }
        return arrayList;
    }

    public static AdobeDCXCompositeMutableBranch mergePulledBranchWithCurrent(AdobeDCXComposite adobeDCXComposite, AdobeDCXCompositeBranch adobeDCXCompositeBranch, IAdobeLibraryMergerCallback iAdobeLibraryMergerCallback, ArrayList arrayList, AdobeLibraryCollection adobeLibraryCollection) throws AdobeLibraryException {
        AdobeDCXNode elementsDCXNodeOfCompositeBranch;
        AdobeDCXNode elementsDCXNodeOfCompositeBranch2;
        AdobeDCXNode removedElementsDCXNodeOfCompositeBranch;
        AdobeDCXNode removedElementsDCXNodeOfCompositeBranch2;
        AdobeDCXNode adobeDCXNode;
        AdobeDCXNode adobeDCXNodeReplaceNode;
        AdobeDCXNode adobeDCXNode2;
        AdobeDCXException e2;
        int size;
        List<AdobeDCXNode> childrenOfNode;
        List<AdobeDCXNode> childrenOfNode2;
        AdobeDCXCompositeMutableBranch mutableCopy = adobeDCXCompositeBranch.getMutableCopy();
        if (mutableCopy == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInternalMergeDownloadedLibrary, null, null, adobeDCXComposite.getCompositeId());
        }
        AdobeDCXCompositeBranch base = adobeDCXComposite.getBase();
        if (!$assertionsDisabled && base == null) {
            throw new AssertionError("No base branch during merge!");
        }
        determineChangesInBranch(adobeDCXComposite, adobeDCXCompositeBranch, null, iAdobeLibraryMergerCallback, arrayList);
        String name = adobeDCXComposite.getCurrent().getName();
        if (name.compareTo(base.getName()) != 0) {
            mutableCopy.setName(name);
        }
        ArrayList<AdobeDCXNode> arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        try {
            elementsDCXNodeOfCompositeBranch = AdobeLibraryCompositeInternal.getElementsDCXNodeOfCompositeBranch(adobeDCXComposite.getCurrent());
        } catch (AdobeLibraryException e3) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryMerger.class.getSimpleName(), null, e3);
            elementsDCXNodeOfCompositeBranch = null;
        }
        try {
            elementsDCXNodeOfCompositeBranch2 = AdobeLibraryCompositeInternal.getElementsDCXNodeOfCompositeBranch(mutableCopy);
        } catch (AdobeLibraryException e4) {
            e4.printStackTrace();
            elementsDCXNodeOfCompositeBranch2 = null;
        }
        try {
            removedElementsDCXNodeOfCompositeBranch = AdobeLibraryCompositeInternal.getRemovedElementsDCXNodeOfCompositeBranch(adobeDCXComposite.getCurrent());
        } catch (AdobeLibraryException e5) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryMerger.class.getSimpleName(), null, e5);
            removedElementsDCXNodeOfCompositeBranch = null;
        }
        try {
            removedElementsDCXNodeOfCompositeBranch2 = AdobeLibraryCompositeInternal.getRemovedElementsDCXNodeOfCompositeBranch(mutableCopy);
        } catch (AdobeLibraryException e6) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryMerger.class.getSimpleName(), null, e6);
            removedElementsDCXNodeOfCompositeBranch2 = null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 2) {
                AdobeDCXNode adobeDCXNode3 = i2 == 0 ? elementsDCXNodeOfCompositeBranch : removedElementsDCXNodeOfCompositeBranch;
                if (adobeDCXNode3 != null && (childrenOfNode2 = adobeDCXComposite.getCurrent().getChildrenOfNode(adobeDCXNode3)) != null) {
                    for (AdobeDCXNode adobeDCXNode4 : childrenOfNode2) {
                        AdobeDCXNode nodeWithId = base.getNodeWithId(adobeDCXNode4.getNodeId());
                        AdobeDCXNode nodeWithId2 = mutableCopy.getNodeWithId(adobeDCXNode4.getNodeId());
                        if (nodeWithId != null) {
                            long jLongValue = ((Long) adobeDCXNode4.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue();
                            long jLongValue2 = ((Long) nodeWithId.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue();
                            if (nodeWithId2 != null) {
                                long jLongValue3 = ((Long) nodeWithId2.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue();
                                if (jLongValue != jLongValue2) {
                                    if (jLongValue3 != jLongValue2) {
                                        arrayList3.add(adobeDCXNode4);
                                    } else {
                                        arrayList2.add(adobeDCXNode4);
                                    }
                                } else if (jLongValue3 == jLongValue2) {
                                    long jLongValue4 = 0;
                                    Object obj = adobeDCXNode4.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey);
                                    Object obj2 = nodeWithId.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey);
                                    Object obj3 = nodeWithId2.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedKey);
                                    if (obj != null) {
                                        jLongValue4 = ((Long) obj).longValue();
                                    }
                                    long jLongValue5 = obj2 != null ? ((Long) obj2).longValue() : 0L;
                                    long jLongValue6 = obj3 != null ? ((Long) obj3).longValue() : 0L;
                                    if (jLongValue4 != jLongValue5) {
                                        if (jLongValue6 == jLongValue5) {
                                            arrayList2.add(adobeDCXNode4);
                                        } else if (jLongValue4 != 0 || jLongValue6 != 0) {
                                            if (jLongValue4 == 0 || jLongValue6 == 0) {
                                                if (jLongValue4 == 0) {
                                                    arrayList2.add(adobeDCXNode4);
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (jLongValue != jLongValue2) {
                                arrayList3.add(adobeDCXNode4);
                            }
                        } else {
                            if (!$assertionsDisabled && nodeWithId2 != null) {
                                throw new AssertionError("AdobeLibraryManager:mergePulledBranchWithCurrent - Element in current and pulled but not in base!");
                            }
                            arrayList2.add(adobeDCXNode4);
                        }
                    }
                }
                AdobeDCXNode adobeDCXNode5 = i2 == 0 ? elementsDCXNodeOfCompositeBranch2 : removedElementsDCXNodeOfCompositeBranch2;
                if (adobeDCXNode5 != null && (childrenOfNode = mutableCopy.getChildrenOfNode(adobeDCXNode5)) != null) {
                    for (AdobeDCXNode adobeDCXNode6 : childrenOfNode) {
                        AdobeDCXNode nodeWithId3 = adobeDCXComposite.getCurrent().getNodeWithId(adobeDCXNode6.getNodeId());
                        AdobeDCXNode nodeWithId4 = base.getNodeWithId(adobeDCXNode6.getNodeId());
                        if (nodeWithId4 != null && nodeWithId3 == null && ((Long) adobeDCXNode6.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue() == ((Long) nodeWithId4.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey)).longValue()) {
                            Iterator<AdobeDCXComponent> it = mutableCopy.getComponentsOfNode(adobeDCXNode6).iterator();
                            while (it.hasNext()) {
                                mutableCopy.removeComponent(it.next());
                            }
                            mutableCopy.removeNode(adobeDCXNode6);
                        }
                    }
                }
                i = i2 + 1;
            } else {
                AdobeDCXException e7 = null;
                for (AdobeDCXNode adobeDCXNode7 : arrayList2) {
                    AdobeDCXNode nodeWithId5 = mutableCopy.getNodeWithId(adobeDCXNode7.getNodeId());
                    boolean zIsInRemovedElementsNode = isInRemovedElementsNode(adobeDCXNode7, adobeDCXComposite.getCurrent());
                    if (nodeWithId5 == null) {
                        try {
                            adobeDCXNodeReplaceNode = mutableCopy.copyNode(adobeDCXNode7, zIsInRemovedElementsNode ? removedElementsDCXNodeOfCompositeBranch2 : elementsDCXNodeOfCompositeBranch2, mutableCopy.getChildrenOfNode(r8).size());
                            AdobeDCXNode adobeDCXNode8 = adobeDCXNodeReplaceNode;
                            e2 = e7;
                            adobeDCXNode2 = adobeDCXNode8;
                        } catch (AdobeDCXException e8) {
                            e2 = e8;
                            adobeDCXNode2 = null;
                            e2.printStackTrace();
                        }
                    } else {
                        adobeDCXNodeReplaceNode = mutableCopy.replaceNode(adobeDCXNode7);
                        try {
                            if (zIsInRemovedElementsNode != isInRemovedElementsNode(nodeWithId5, mutableCopy)) {
                                if (zIsInRemovedElementsNode) {
                                    size = mutableCopy.getChildrenOfNode(removedElementsDCXNodeOfCompositeBranch2).size();
                                } else {
                                    size = mutableCopy.getChildrenOfNode(elementsDCXNodeOfCompositeBranch2).size();
                                }
                                adobeDCXNodeReplaceNode = mutableCopy.moveNode(adobeDCXNodeReplaceNode, zIsInRemovedElementsNode ? removedElementsDCXNodeOfCompositeBranch2 : elementsDCXNodeOfCompositeBranch2, size);
                            }
                            AdobeDCXNode adobeDCXNode82 = adobeDCXNodeReplaceNode;
                            e2 = e7;
                            adobeDCXNode2 = adobeDCXNode82;
                        } catch (AdobeDCXException e9) {
                            adobeDCXNode2 = adobeDCXNodeReplaceNode;
                            e2 = e9;
                            e2.printStackTrace();
                        }
                    }
                    if (adobeDCXNode2 == null) {
                        AdobeLogger.log(Level.DEBUG, AdobeLibraryMerger.class.getSimpleName(), "Error adding new or modfied element to merged branch", null);
                    }
                    e7 = e2;
                }
                Iterator it2 = arrayList3.iterator();
                while (true) {
                    AdobeDCXException adobeDCXException = e7;
                    if (it2.hasNext()) {
                        AdobeDCXNode adobeDCXNode9 = (AdobeDCXNode) it2.next();
                        boolean zIsInRemovedElementsNode2 = isInRemovedElementsNode(adobeDCXNode9, adobeDCXComposite.getCurrent());
                        try {
                            AdobeDCXNode adobeDCXNodeCopyNode = mutableCopy.copyNode(adobeDCXNode9, zIsInRemovedElementsNode2 ? removedElementsDCXNodeOfCompositeBranch2 : elementsDCXNodeOfCompositeBranch2, mutableCopy.getChildrenOfNode(r7).size(), AdobeStorageUtils.generateUuid(), null);
                            e7 = adobeDCXException;
                            adobeDCXNode = adobeDCXNodeCopyNode;
                        } catch (AdobeDCXException e10) {
                            e7 = e10;
                            adobeDCXNode = null;
                        }
                        if (adobeDCXNode != null) {
                            if (!zIsInRemovedElementsNode2 && iAdobeLibraryMergerCallback != null) {
                                iAdobeLibraryMergerCallback.onElementAdded(adobeDCXNode.getNodeId(), adobeDCXNode.getType());
                            }
                        } else {
                            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddElement, e7, null, null);
                        }
                    } else {
                        return mutableCopy;
                    }
                }
            }
        }
    }

    private static boolean isInRemovedElementsNode(AdobeDCXNode adobeDCXNode, AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
        AdobeDCXNode adobeDCXNodeFindParentOfNode = adobeDCXCompositeBranch.findParentOfNode(adobeDCXNode, null);
        return adobeDCXNodeFindParentOfNode != null && AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedElementsNodeName.equals(adobeDCXNodeFindParentOfNode.getName());
    }

    AdobeLibraryMerger(AdobeDCXComposite adobeDCXComposite) {
        if (!$assertionsDisabled && adobeDCXComposite == null) {
            throw new AssertionError("AdobeLibraryMerger created with no composite!");
        }
        this.mComposite = adobeDCXComposite;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushMergeDelegate
    public String stateForMergedComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComponent adobeDCXComponent2) {
        String pathForComponent;
        String pathForComponent2 = null;
        try {
            pathForComponent = this.mComposite.getCurrent().getPathForComponent(adobeDCXComponent);
        } catch (AdobeDCXException e2) {
            e2.printStackTrace();
            pathForComponent = null;
        }
        try {
            pathForComponent2 = this.mComposite.getPushed().getPathForComponent(adobeDCXComponent2);
        } catch (AdobeDCXException e3) {
            e3.printStackTrace();
        }
        if (pathForComponent != null && pathForComponent2 != null && pathForComponent.compareTo(pathForComponent2) == 0) {
            return AdobeDCXConstants.AdobeDCXAssetStateUnmodified;
        }
        return AdobeDCXConstants.AdobeDCXAssetStateModified;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushMergeDelegate
    public String compositeStateForMergedBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXCompositeBranch adobeDCXCompositeBranch2) {
        return AdobeDCXConstants.AdobeDCXAssetStateModified;
    }
}
