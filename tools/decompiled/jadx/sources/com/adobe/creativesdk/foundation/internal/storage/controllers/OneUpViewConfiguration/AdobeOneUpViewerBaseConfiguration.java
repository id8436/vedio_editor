package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

import android.view.Menu;
import android.view.View;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdobeOneUpViewerBaseConfiguration {
    private IAdobeOneUpViewerEventHandler eventHandler;
    private boolean isMenuEnabled;
    private Menu menuView;
    private HashMap<Integer, Integer> actionViewIDs = new HashMap<>();
    private HashMap<Integer, View> actionViews = new HashMap<>();
    private int menuLayout = -1;

    public boolean isMenuEnabled() {
        return this.isMenuEnabled;
    }

    public int getMenuLayout() {
        return this.menuLayout;
    }

    public void addActionViewForMenuItem(int i, Integer num) {
        this.actionViewIDs.put(Integer.valueOf(i), num);
    }

    public void setActionView(int i, View view) {
        this.actionViews.put(Integer.valueOf(i), view);
    }

    public View getActionView(int i) {
        return this.actionViews.get(Integer.valueOf(i));
    }

    public Integer getActionViewID(int i) {
        return this.actionViewIDs.get(Integer.valueOf(i));
    }

    public void setMenu(int i) {
        this.menuLayout = i;
    }

    public void setIsMenuEnabled(boolean z) {
        this.isMenuEnabled = z;
    }

    public IAdobeOneUpViewerEventHandler getEventHandler() {
        return this.eventHandler;
    }

    public void setEventHandler(IAdobeOneUpViewerEventHandler iAdobeOneUpViewerEventHandler) {
        this.eventHandler = iAdobeOneUpViewerEventHandler;
    }

    public void setMenuView(Menu menu) {
        this.menuView = menu;
    }

    public void setMenuItemVisibility(boolean z, int i) {
        if (this.menuView != null) {
            for (int i2 = 0; i2 < this.menuView.size(); i2++) {
                if (this.menuView.getItem(i2).getItemId() == i) {
                    this.menuView.getItem(i2).setVisible(z);
                }
            }
        }
    }
}
