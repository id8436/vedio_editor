package com.behance.sdk.asynctask.params;

import android.graphics.Bitmap;
import com.behance.sdk.project.modules.ImageModule;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEditProfileAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private String city;
    private String company;
    private String country;
    private String firstName;
    private ImageModule image;
    private String lastName;
    private String occupation;
    private Bitmap profileImageBitmap;
    private String state;
    private String website;

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setOccupation(String str) {
        this.occupation = str;
    }

    public String getOccupation() {
        return this.occupation;
    }

    public void setCompany(String str) {
        this.company = str;
    }

    public String getCompany() {
        return this.company;
    }

    public void setWebsite(String str) {
        if (str.length() > 3 && !str.contains("http://") && !str.contains("https://") && !str.substring(0, 2).equals("www")) {
            str = "http://www." + str;
        }
        this.website = str;
    }

    public String getWebsite() {
        return this.website;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public String getCountry() {
        return this.country;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getState() {
        return this.state;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public String getCity() {
        return this.city;
    }

    public void setImage(ImageModule imageModule) {
        this.image = imageModule;
    }

    public ImageModule getImage() {
        return this.image;
    }

    public Bitmap getProfileImageBitmap() {
        return this.profileImageBitmap;
    }

    public void setProfileImageBitmap(Bitmap bitmap) {
        this.profileImageBitmap = bitmap;
    }
}
