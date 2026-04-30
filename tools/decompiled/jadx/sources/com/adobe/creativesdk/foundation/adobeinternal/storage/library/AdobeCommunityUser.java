package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import android.graphics.Bitmap;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Size;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunityUser {
    private Size _avatarSize;
    private final String _behanceProfile;
    private final String _city;
    private final String _country;
    private final String _displayName;
    private final String _firstName;
    private List<Bitmap> _images = new ArrayList();
    private final String _lastName;
    private final String _state;
    private final String _userID;
    private final String _userName;

    public Size getAvatarSize() {
        return this._avatarSize;
    }

    public void setAvatarSize(int i, int i2) {
        this._avatarSize = new Size(i, i2);
    }

    public List<Bitmap> getImages() {
        return this._images;
    }

    public void addImage(Bitmap bitmap) {
        this._images.add(bitmap);
    }

    public String getUserID() {
        return this._userID;
    }

    public String getUserName() {
        return this._userName;
    }

    public String getDisplayName() {
        return this._displayName;
    }

    public String getFirstName() {
        return this._firstName;
    }

    public String getLastName() {
        return this._lastName;
    }

    public String getCity() {
        return this._city;
    }

    public String getState() {
        return this._state;
    }

    public String getCountry() {
        return this._country;
    }

    public String getBehanceProfile() {
        return this._behanceProfile;
    }

    public AdobeCommunityUser(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this._userID = str;
        this._userName = str2;
        this._displayName = str3;
        this._firstName = str4;
        this._lastName = str5;
        this._city = str6;
        this._state = str7;
        this._country = str8;
        this._behanceProfile = str9;
    }
}
