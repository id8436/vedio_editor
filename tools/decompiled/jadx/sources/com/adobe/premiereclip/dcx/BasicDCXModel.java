package com.adobe.premiereclip.dcx;

import com.adobe.sync.SyncController;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class BasicDCXModel implements SyncController.IDCXModelInterface, Comparable<BasicDCXModel> {
    private static SimpleDateFormat formatter;
    private Date mCreationTS;
    private boolean mDirtyFlag;
    private String mDocumentID;
    private String mDocumentPath;
    private String mDocumentTitle;
    private Date mLastModifiedTS;
    private String mRenditionPath;
    private String projectMode;
    private String projectType;

    static {
        formatter = null;
        formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        formatter.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public BasicDCXModel() {
        Date date = new Date(System.currentTimeMillis());
        this.mCreationTS = date;
        this.mLastModifiedTS = date;
        this.mDirtyFlag = false;
        this.projectMode = DCXProjectKeys.kDCXKey_Project_projectModeFreeform;
    }

    public BasicDCXModel(BasicDCXModel basicDCXModel) {
        this.mDocumentID = basicDCXModel.getDocumentID();
        this.mDocumentPath = basicDCXModel.getDocumentPath();
        this.mDocumentTitle = basicDCXModel.getDocumentTitle();
        this.mCreationTS = basicDCXModel.getCreationTS();
        this.mLastModifiedTS = basicDCXModel.getLastModifiedTS();
        this.mRenditionPath = basicDCXModel.getRenditionPath();
        this.mDirtyFlag = basicDCXModel.isDirty();
        this.projectMode = basicDCXModel.projectMode;
        this.projectType = basicDCXModel.getProjectType();
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public void setProjectMode(String str) {
        this.projectMode = str;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public void setProjectType(String str) {
        this.projectType = str;
    }

    public String getProjectMode() {
        return this.projectMode;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public String getDocumentID() {
        return this.mDocumentID;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public void setDocumentID(String str) {
        this.mDocumentID = str;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public String getDocumentPath() {
        return this.mDocumentPath;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public void setDocumentPath(String str) {
        this.mDocumentPath = str;
    }

    public Date getCreationTS() {
        return this.mCreationTS;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public void setCreationTS(Date date) {
        this.mCreationTS = date;
    }

    public Date getLastModifiedTS() {
        return this.mLastModifiedTS;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public void setLastModifiedTS(Date date) {
        this.mLastModifiedTS = date;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public String getDocumentTitle() {
        return this.mDocumentTitle;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public void setDocumentTitle(String str) {
        this.mDocumentTitle = str;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public String getRenditionPath() {
        return this.mRenditionPath;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public String getProjectType() {
        return this.projectType;
    }

    @Override // com.adobe.sync.SyncController.IDCXModelInterface
    public void setRenditionPath(String str) {
        this.mRenditionPath = str;
    }

    public boolean isDirty() {
        return this.mDirtyFlag;
    }

    void setAsDirty(boolean z) {
        this.mDirtyFlag = z;
    }

    public int hashCode() {
        return getDocumentPath() != null ? getDocumentPath().hashCode() : super.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof BasicDCXModel) {
            return getDocumentPath().equals(((BasicDCXModel) obj).getDocumentPath());
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(BasicDCXModel basicDCXModel) {
        return getCreationTS().compareTo(basicDCXModel.getCreationTS());
    }
}
