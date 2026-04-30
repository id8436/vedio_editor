package com.adobe.creativesdk.foundation.internal.storage.controllers.commands;

import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewCommandsHandler {
    IAdobeAssetViewCommandHandler commonHandler;

    public void onStart() {
        registerCommandHandlers();
    }

    private void registerUnregisterCommands(boolean z) {
        for (AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName : getCommandsListToRegister()) {
            if (z) {
                AdobeAssetBrowserCommandMgr.getInstance().addHandler(adobeAssetViewBrowserCommandName, this.commonHandler);
            } else {
                AdobeAssetBrowserCommandMgr.getInstance().removeHandler(adobeAssetViewBrowserCommandName, this.commonHandler);
            }
        }
    }

    protected void registerCommandHandlers() {
        if (this.commonHandler == null) {
            this.commonHandler = new IAdobeAssetViewCommandHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewCommandsHandler.1
                @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.commands.IAdobeAssetViewCommandHandler
                public void handle(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
                    AdobeAssetViewCommandsHandler.this.handleCommand(adobeAssetViewBrowserCommandName, obj);
                }
            };
        }
        registerUnregisterCommands(true);
    }

    protected EnumSet<AdobeAssetViewBrowserCommandName> getCommandsListToRegister() {
        return null;
    }

    protected void handleCommand(AdobeAssetViewBrowserCommandName adobeAssetViewBrowserCommandName, Object obj) {
    }

    public void onStop() {
        unregisterCommandHandlers();
    }

    protected void unregisterCommandHandlers() {
        registerUnregisterCommands(false);
    }
}
