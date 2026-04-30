package com.adobe.premiereclip.featuredVideos;

import android.support.v4.app.NotificationCompat;
import com.adobe.premiereclip.sharing.SharingPublishActivity;
import com.google.gdata.client.GDataProtocol;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public class FeaturedVideo {
    private String author;
    private String description;
    private String playlist;
    private Date postDate;
    private String status;
    private String thumbPath;
    private String title;
    private String uuid;

    public FeaturedVideo(String str) {
        this.uuid = str;
        this.title = "";
        this.author = "";
        this.thumbPath = null;
        this.playlist = null;
        this.status = HttpStatus.OK;
    }

    public FeaturedVideo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.uuid = str;
        this.title = str2;
        this.author = str3;
        this.description = str5;
        this.thumbPath = str6;
        this.playlist = str7;
        this.status = str8;
        this.postDate = null;
        if (str4 != null) {
            try {
                if (!str4.isEmpty()) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                    this.postDate = simpleDateFormat.parse(str4);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public String getUUID() {
        return this.uuid;
    }

    public String getVideoTitle() {
        return this.title;
    }

    public String getAuthor() {
        return this.author;
    }

    public String getThumbUrl() {
        return this.thumbPath;
    }

    public String getVideoUrl() {
        return this.playlist;
    }

    public String getShareUrl() {
        return SharingPublishActivity.videoLinkPrefix + getUUID();
    }

    public String getStatus() {
        return this.status;
    }

    public String getPostDateString(String str, TimeZone timeZone) {
        if (this.postDate == null) {
            return "";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        simpleDateFormat.setTimeZone(timeZone);
        return simpleDateFormat.format(this.postDate);
    }

    public String getPostDateString() {
        return getPostDateString("MM/dd/yy hh:mm a", TimeZone.getDefault());
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public JSONObject toJSON() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ccv_id", this.uuid);
            jSONObject.put("title", this.title);
            jSONObject.put(GDataProtocol.Query.AUTHOR, this.author);
            jSONObject.put("description", this.description);
            jSONObject.put("post_date", getPostDateString("yyyy-MM-dd'T'HH:mm:ss'Z'", TimeZone.getTimeZone("GMT")));
            jSONObject.put("hls_playlist", this.playlist);
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, this.status);
        } catch (JSONException e2) {
        }
        return jSONObject;
    }
}
