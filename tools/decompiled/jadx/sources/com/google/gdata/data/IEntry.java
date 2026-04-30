package com.google.gdata.data;

/* JADX INFO: loaded from: classes3.dex */
public interface IEntry extends IAtom {
    boolean getCanEdit();

    IContent getContent();

    ILink getEditLink();

    DateTime getEdited();

    ILink getMediaEditLink();

    DateTime getPublished();

    ILink getResumableEditMediaLink();

    String getSelectedFields();

    ITextConstruct getSummary();

    void setCanEdit(boolean z);

    void setEdited(DateTime dateTime);

    void setPublished(DateTime dateTime);

    void setSelectedFields(String str);
}
