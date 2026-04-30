package com.adobe.premiereclip;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LightroomProject extends IntentService {
    private ArrayList<AdobePhotoAsset> collectionAssetsList;
    private String logTag;
    final int maxAssetAllowed;

    public LightroomProject() {
        super("lightroomproject");
        this.logTag = "LightRoomProject";
        this.maxAssetAllowed = 100;
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (AdobeUXAuthManager.getSharedAuthManager().getUserProfile() == null) {
            Intent intent2 = new Intent(this, (Class<?>) TourViewActivity.class);
            intent2.putExtra("LightroomProject", true);
            intent2.addFlags(268468224);
            startActivity(intent2);
            return;
        }
        String adobeID = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID();
        Bundle extras = intent.getExtras();
        if (intent != null) {
            if (extras.getString("com.adobe.premiereclip.ADOBE_ID").equals(adobeID)) {
                String string = extras.getString("com.adobe.premiereclip.PROJECT_NAME");
                String string2 = extras.getString("com.adobe.premiereclip.COLLECTION_ID");
                Intent intent3 = new Intent(this, (Class<?>) MainActivity.class);
                intent3.putExtra("LightRoomProject", true);
                intent3.putExtra("ProjectName", string);
                intent3.putExtra("albumId", string2);
                intent3.addFlags(268468224);
                startActivity(intent3);
                return;
            }
            Intent intent4 = new Intent(this, (Class<?>) MainActivity.class);
            intent4.putExtra("LightroomClipIdNotSame", true);
            intent4.addFlags(268468224);
            startActivity(intent4);
        }
    }
}
