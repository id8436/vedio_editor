package com.adobe.creativesdk.foundation.internal.storage.controllers;

import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.IAdobeAssetViewCommandHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetBrowserCommandMgr {
    private static AdobeAssetBrowserCommandMgr sInstance;
    Map<AdobeAssetViewBrowserCommandName, ObservableWrapper> observables;

    AdobeAssetBrowserCommandMgr() {
        this.observables = null;
        this.observables = new HashMap();
    }

    class ObservableWrapper {
        private ArrayList<IAdobeAssetViewCommandHandler> handlers = new ArrayList<>();

        public ObservableWrapper() {
        }

        public void add(IAdobeAssetViewCommandHandler iAdobeAssetViewCommandHandler) {
            this.handlers.add(iAdobeAssetViewCommandHandler);
        }

        public void remove(IAdobeAssetViewCommandHandler iAdobeAssetViewCommandHandler) {
            this.handlers.remove(iAdobeAssetViewCommandHandler);
        }

        public void notify(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
            Iterator<IAdobeAssetViewCommandHandler> it = this.handlers.iterator();
            while (it.hasNext()) {
                it.next().handle(adobeAssetViewBrowserCommandName, obj);
            }
        }
    }

    public static synchronized AdobeAssetBrowserCommandMgr getInstance() {
        if (sInstance == null) {
            sInstance = new AdobeAssetBrowserCommandMgr();
        }
        return sInstance;
    }

    public synchronized void addHandler(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, IAdobeAssetViewCommandHandler iAdobeAssetViewCommandHandler) {
        ObservableWrapper observableWrapper = this.observables.get(adobeAssetViewBrowserCommandName);
        if (observableWrapper == null) {
            observableWrapper = new ObservableWrapper();
            this.observables.put(adobeAssetViewBrowserCommandName, observableWrapper);
        }
        observableWrapper.add(iAdobeAssetViewCommandHandler);
    }

    public synchronized void removeHandler(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, IAdobeAssetViewCommandHandler iAdobeAssetViewCommandHandler) {
        ObservableWrapper observableWrapper = this.observables.get(adobeAssetViewBrowserCommandName);
        if (observableWrapper != null) {
            observableWrapper.remove(iAdobeAssetViewCommandHandler);
        }
    }

    public void postCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName) {
        postCommand(adobeAssetViewBrowserCommandName, null);
    }

    public synchronized void postCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
        ObservableWrapper observableWrapper = this.observables.get(adobeAssetViewBrowserCommandName);
        if (observableWrapper != null) {
            observableWrapper.notify(adobeAssetViewBrowserCommandName, obj);
        }
    }
}
