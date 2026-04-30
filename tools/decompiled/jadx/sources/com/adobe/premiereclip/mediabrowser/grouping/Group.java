package com.adobe.premiereclip.mediabrowser.grouping;

import com.adobe.premiereclip.mediabrowser.MediaModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class Group {
    private ArrayList<Group> children;
    String id;
    private MediaModel mediaModel;

    public Group() {
        this.id = UUID.randomUUID().toString();
        this.children = new ArrayList<>();
        this.mediaModel = null;
    }

    public Group(MediaModel mediaModel) {
        this.id = mediaModel.getId();
        this.children = new ArrayList<>();
        this.mediaModel = mediaModel;
    }

    public ArrayList<Group> getChildren() {
        return this.children;
    }

    public void setChildren(ArrayList<Group> arrayList) {
        this.children = arrayList;
    }

    public void addChild(Group group) {
        this.children.add(group);
    }

    public void addChildren(ArrayList<Group> arrayList) {
        this.children.addAll(arrayList);
    }

    public boolean isEmpty() {
        return this.children.isEmpty();
    }

    public boolean areAllChildrenLeaves() {
        Iterator<Group> it = this.children.iterator();
        while (it.hasNext()) {
            if (!it.next().isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public String getId() {
        return this.id;
    }

    public MediaModel getMediaModel() {
        return this.mediaModel;
    }
}
