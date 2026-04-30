package com.adobe.premiereclip.featuredVideos;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.adapter.PopupListAdapter;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.ConfirmDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.sharing.SharingIntentsOptions;
import com.adobe.premiereclip.util.JsonReader;
import com.adobe.premiereclip.util.LollipopUtils;
import com.adobe.premiereclip.util.Utilities;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.crashlytics.android.Crashlytics;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PublishedVideosFragment extends FeaturedVideosBaseFragment {
    private static final String TAG = "PublishedVideosFragment";
    private static String publishedVideoListPath = PremiereClipApplication.getContext().getApplicationInfo().dataDir + File.separator + "publishedVideoList.json";
    private SharingIntentsOptions sharingIntentsOptions;
    private boolean videoDeleted = false;

    public PublishedVideosFragment() {
        this.popupOptionsDrawableIdList = new ArrayList<>();
        this.popupOptionsDrawableIdList.add(Integer.valueOf(R.drawable.btn_video_delete));
        this.popupOptionsDrawableIdList.add(Integer.valueOf(R.drawable.proj_share));
        initializeFragment(R.layout.fragment_published_videos, R.layout.view_published, R.string.no_published_videos, publishedVideoListPath, BehanceSDKPublishConstants.KEY_PUBLISHED);
    }

    public static PublishedVideosFragment newInstance() {
        PublishedVideosFragment publishedVideosFragment = new PublishedVideosFragment();
        publishedVideosFragment.setArguments(new Bundle());
        FeaturedVideosBaseFragment.publishedVideosFragmentInstance = publishedVideosFragment;
        return publishedVideosFragment;
    }

    public static void clearPublishedVideoList() {
        try {
            new File(publishedVideoListPath).delete();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        getView().setFocusableInTouchMode(true);
        getView().requestFocus();
        getView().setOnKeyListener(new View.OnKeyListener() { // from class: com.adobe.premiereclip.featuredVideos.PublishedVideosFragment.1
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                return PublishedVideosFragment.this.sharingIntentsOptions != null && keyEvent.getAction() == 1 && i == 4 && PublishedVideosFragment.this.sharingIntentsOptions.onBackPressed();
            }
        });
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.videoDeleted && this.mAdapter != null && this.mAdapter.videos != null && this.videoListFilePath != null) {
            try {
                FeaturedVideosBaseFragment.writeVideoListToDisk(this.mAdapter.videos, this.videoListFilePath);
            } catch (Exception e2) {
                Log.e(TAG, "Cannot write published video list to disk on pause");
            }
            this.videoDeleted = false;
        }
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        Log.w(TAG, "onStop");
        if (this.sharingIntentsOptions != null) {
            this.sharingIntentsOptions = null;
        }
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment
    protected void createVideoListAdapter() {
        this.mAdapter = new PublishedVideoListAdapter();
        refreshVideoListAdapter();
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment
    protected void refreshVideoListAdapter() {
        String accessToken = AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken();
        if (this.mAdapter != null) {
            FeaturedVideosBaseFragment.VideoListAdapter videoListAdapter = this.mAdapter;
            PublishedVideoListAdapter publishedVideoListAdapter = (PublishedVideoListAdapter) this.mAdapter;
            publishedVideoListAdapter.getClass();
            videoListAdapter.mVideoListRetriever = new FeaturedVideosBaseFragment.VideoListAdapter.VideoListRetriever();
            this.mAdapter.mVideoListRetriever.execute("https://api.ccv.adobe.com/api/v1/videos?max=100", accessToken);
            return;
        }
        disableSwipeRefreshLayout();
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment
    protected ArrayList<FeaturedVideo> makeVideosList(JSONArray jSONArray, boolean z) {
        FeaturedVideo featuredVideo;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String stringWrapped;
        String str6;
        String str7;
        String str8;
        JSONObject jsonObjectFromUrl;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        if (jSONArray == null) {
            return null;
        }
        Metrics.sharedInstance().setMyPublishedVideosCount(jSONArray.length());
        if (!z) {
            Metrics.sharedInstance().didFetchMyPublishedVideosList();
        }
        ArrayList<FeaturedVideo> arrayList = new ArrayList<>();
        this.needsRefresh = false;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= jSONArray.length()) {
                break;
            }
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String str14 = (String) jSONObject.get("ccv_id");
                String str15 = null;
                String str16 = null;
                String str17 = null;
                String stringWrapped2 = getStringWrapped(R.string.status_loading);
                if (z) {
                    try {
                        str13 = (String) jSONObject.get("title");
                        try {
                            str12 = (String) jSONObject.get("post_date");
                            try {
                                str10 = (String) jSONObject.get("hls_playlist");
                            } catch (Exception e2) {
                                str11 = str13;
                                e = e2;
                                str10 = null;
                            }
                        } catch (Exception e3) {
                            str10 = null;
                            str12 = null;
                            str11 = str13;
                            e = e3;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        str10 = null;
                        str11 = null;
                        str12 = null;
                    }
                    try {
                        str17 = str10;
                        str7 = null;
                        stringWrapped = (String) jSONObject.get(NotificationCompat.CATEGORY_STATUS);
                        str6 = str12;
                        str8 = str13;
                    } catch (Exception e5) {
                        str11 = str13;
                        e = e5;
                        e.printStackTrace();
                        str17 = str10;
                        str7 = null;
                        stringWrapped = stringWrapped2;
                        String str18 = str12;
                        str8 = str11;
                        str6 = str18;
                    }
                } else {
                    try {
                        jsonObjectFromUrl = JsonReader.readJsonObjectFromUrl("https://api.ccv.adobe.com/api/v1/videos/" + str14 + "/info?options=title,description,thumbnail,posterframe,username,post_date,duration,privacy,hls_playlist");
                        String str19 = (String) jsonObjectFromUrl.get("privacy");
                        if (str19.equals("unlisted")) {
                            stringWrapped2 = getStringWrapped(R.string.status_private);
                        } else if (str19.equals("public")) {
                            stringWrapped2 = getStringWrapped(R.string.status_public);
                        } else {
                            this.needsRefresh = true;
                        }
                        str9 = (String) jsonObjectFromUrl.get("title");
                        try {
                            str5 = (String) jsonObjectFromUrl.get(AppsForYourDomainQuery.USERNAME);
                            try {
                                str = (String) jsonObjectFromUrl.get("post_date");
                                try {
                                    str2 = (String) jsonObjectFromUrl.get("description");
                                    try {
                                        str3 = (String) ((JSONObject) jsonObjectFromUrl.get("posterframe")).get("url");
                                    } catch (Exception e6) {
                                        str3 = null;
                                        str4 = str9;
                                        e = e6;
                                    }
                                } catch (Exception e7) {
                                    str2 = null;
                                    str3 = null;
                                    str4 = str9;
                                    e = e7;
                                }
                            } catch (Exception e8) {
                                str = null;
                                str2 = null;
                                str3 = null;
                                str4 = str9;
                                e = e8;
                            }
                        } catch (Exception e9) {
                            str = null;
                            str2 = null;
                            str3 = null;
                            str4 = str9;
                            e = e9;
                            str5 = null;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        str = null;
                        str2 = null;
                        str3 = null;
                        str4 = null;
                        str5 = null;
                    }
                    try {
                        stringWrapped = stringWrapped2;
                        str17 = (String) jsonObjectFromUrl.get("hls_playlist");
                        str16 = str3;
                        str15 = str2;
                        str6 = str;
                        str7 = str5;
                        str8 = str9;
                    } catch (Exception e11) {
                        str4 = str9;
                        e = e11;
                        e.printStackTrace();
                        this.needsRefresh = true;
                        stringWrapped = getStringWrapped(R.string.status_loading);
                        String str20 = str3;
                        str15 = str2;
                        str6 = str;
                        str7 = str5;
                        str8 = str4;
                        str16 = str20;
                    }
                }
                featuredVideo = new FeaturedVideo(str14, str8, str7, str6, str15, str16, str17, stringWrapped);
            } catch (Exception e12) {
                e12.printStackTrace();
                this.needsRefresh = true;
                featuredVideo = null;
            }
            arrayList.add(featuredVideo);
            i = i2 + 1;
        }
        if (this.needsRefresh) {
            scheduleTimerForRefreshList();
            this.needsRefresh = false;
        }
        return arrayList;
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment
    protected JSONArray getJSONArrayOfVideosFromUrl(String... strArr) {
        String str = strArr[0];
        String str2 = strArr[1];
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", "PremiereClip");
            httpURLConnection.setRequestProperty("Accept", "application/json");
            httpURLConnection.setRequestProperty("Authorization", "Bearer " + str2);
            httpURLConnection.getResponseCode();
            httpURLConnection.getResponseMessage();
            return new JSONArray(new JSONObject(JsonReader.readAll(new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream())))).get("videos").toString());
        } catch (IOException e2) {
            e = e2;
            e.printStackTrace();
            return null;
        } catch (IllegalArgumentException e3) {
            Crashlytics.log(5, TAG, "Failed to fetch list of videos from Url. Access token = " + str2);
            Crashlytics.logException(e3);
            return null;
        } catch (JSONException e4) {
            e = e4;
            e.printStackTrace();
            return null;
        }
    }

    public class PublishedVideoListAdapter extends FeaturedVideosBaseFragment.VideoListAdapter {
        public PublishedVideoListAdapter() {
            super();
        }

        @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.VideoListAdapter, android.support.v7.widget.RecyclerView.Adapter
        public FeaturedVideosBaseFragment.VideoListAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new PublishedVideoViewHolder(inflateViewAndSetHeight(viewGroup));
        }

        @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.VideoListAdapter, android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(FeaturedVideosBaseFragment.VideoListAdapter.ViewHolder viewHolder, int i) {
            super.onBindViewHolder(viewHolder, i);
            FeaturedVideo featuredVideo = this.videos.get(i);
            featuredVideo.getStatus();
            PublishedVideoViewHolder publishedVideoViewHolder = (PublishedVideoViewHolder) viewHolder;
            publishedVideoViewHolder.mPostDate.setText(PublishedVideosFragment.this.getStringWrapped(R.string.info_published) + " " + featuredVideo.getPostDateString());
            setVideoStatus(featuredVideo, publishedVideoViewHolder);
            LollipopUtils.setElevation(publishedVideoViewHolder.mCardView, PublishedVideosFragment.this.getResources().getDimension(R.dimen.card_view_elevation));
        }

        private void setVideoStatus(FeaturedVideo featuredVideo, PublishedVideoViewHolder publishedVideoViewHolder) {
            if (publishedVideoViewHolder != null && featuredVideo != null) {
                String status = featuredVideo.getStatus();
                publishedVideoViewHolder.mStatusBox.setBackgroundResource(R.drawable.video_loading);
                publishedVideoViewHolder.mStatusBox.setText(R.string.status_loading);
                if (status.equals(PublishedVideosFragment.this.getStringWrapped(R.string.status_public))) {
                    publishedVideoViewHolder.mStatusBox.setBackgroundResource(R.drawable.video_public);
                    publishedVideoViewHolder.mStatusBox.setText(R.string.status_public);
                } else if (status.equals(PublishedVideosFragment.this.getStringWrapped(R.string.status_private))) {
                    publishedVideoViewHolder.mStatusBox.setBackgroundResource(R.drawable.video_private);
                    publishedVideoViewHolder.mStatusBox.setText(R.string.status_private);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onClickDeleteVideo(final FeaturedVideo featuredVideo) {
            ConfirmDialog confirmDialog = new ConfirmDialog(PublishedVideosFragment.this.getActivity(), PublishedVideosFragment.this.getStringWrapped(R.string.delete_published_video), PublishedVideosFragment.this.getStringWrapped(R.string.delete_published_video_msg), true);
            confirmDialog.setAcceptButton(PublishedVideosFragment.this.getStringWrapped(R.string.delete_video_button), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.featuredVideos.PublishedVideosFragment.PublishedVideoListAdapter.1
                @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
                public void onClick() {
                    PublishedVideoListAdapter.this.new VideoDeleteTask(featuredVideo).execute(new Void[0]);
                }
            });
            confirmDialog.setRejectButton(PublishedVideosFragment.this.getStringWrapped(R.string.cancel_delete_button), null);
            confirmDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onClickSharePublishedVideo(FeaturedVideo featuredVideo) {
            Metrics.sharedInstance().didTapShareForExportPublishedVideoWithCCVID(featuredVideo.getUUID(), featuredVideo.getVideoTitle());
            if (PublishedVideosFragment.this.sharingIntentsOptions == null) {
                PublishedVideosFragment.this.sharingIntentsOptions = new SharingIntentsOptions(PublishedVideosFragment.this.getActivity(), new SharingIntentsOptions.Listener() { // from class: com.adobe.premiereclip.featuredVideos.PublishedVideosFragment.PublishedVideoListAdapter.2
                    @Override // com.adobe.premiereclip.sharing.SharingIntentsOptions.Listener
                    public void onOpened() {
                        PublishedVideosFragment.this.getActivity().findViewById(R.id.open_project).setVisibility(4);
                    }

                    @Override // com.adobe.premiereclip.sharing.SharingIntentsOptions.Listener
                    public void onClosed() {
                        PublishedVideosFragment.this.getActivity().findViewById(R.id.open_project).setVisibility(0);
                    }
                });
            }
            PublishedVideosFragment.this.sharingIntentsOptions.onShareClicked(featuredVideo.getShareUrl(), featuredVideo.getVideoTitle());
        }

        class VideoDeleteTask extends AsyncTask<Void, Void, Integer> {
            private FeaturedVideo video;

            protected VideoDeleteTask(FeaturedVideo featuredVideo) {
                this.video = featuredVideo;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Integer doInBackground(Void... voidArr) {
                int i;
                int responseCode = -1;
                try {
                    URL url = new URL("https://api.ccv.adobe.com/api/v1/videos/" + this.video.getUUID());
                    String accessToken = AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken();
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    httpURLConnection.setRequestMethod("DELETE");
                    httpURLConnection.setRequestProperty("User-Agent", "PremiereClip");
                    httpURLConnection.setRequestProperty("Authorization", "Bearer " + accessToken);
                    responseCode = httpURLConnection.getResponseCode();
                    httpURLConnection.disconnect();
                    if (responseCode == 204) {
                        Metrics.sharedInstance().didDeleteVideoMyPublishedVideoWithCCVID(this.video.getUUID(), this.video.getVideoTitle());
                    }
                    i = responseCode;
                } catch (MalformedURLException e2) {
                    i = responseCode;
                    e2.printStackTrace();
                } catch (IOException e3) {
                    i = responseCode;
                    e3.printStackTrace();
                }
                return Integer.valueOf(i);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Integer num) {
                if (num.intValue() == 204) {
                    PublishedVideoListAdapter.this.videos.remove(this.video);
                    if (PublishedVideoListAdapter.this.videos.size() == 0) {
                        PublishedVideosFragment.this.noVideos = true;
                        PublishedVideosFragment.this.showNoVideosErrorMessage();
                    }
                    PublishedVideoListAdapter.this.notifyDataSetChanged();
                    PublishedVideosFragment.this.videoDeleted = true;
                }
            }
        }

        public class PublishedVideoViewHolder extends FeaturedVideosBaseFragment.VideoListAdapter.ViewHolder {
            public TextView mPostDate;
            public TextView mStatusBox;

            PublishedVideoViewHolder(View view) {
                super(view);
                this.mStatusBox = (TextView) view.findViewById(R.id.video_status);
                this.mPostDate = (TextView) view.findViewById(R.id.video_post_date);
                this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.featuredVideos.PublishedVideosFragment.PublishedVideoListAdapter.PublishedVideoViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        PublishedVideoListAdapter.this.openPVOptionsPopup(PublishedVideoViewHolder.this.getAdapterPosition(), view2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void openPVOptionsPopup(final int i, View view) {
            Context context = PublishedVideosFragment.this.getContext();
            Metrics.sharedInstance().didTapOptionsForMyPublishedVideoWithCCVID(this.videos.get(i).getUUID(), this.videos.get(i).getVideoTitle());
            Metrics.sharedInstance().didShowOptionsViewForMyPublishedVideo(this.videos.get(i).getUUID(), this.videos.get(i).getVideoTitle());
            final ListPopupWindow listPopupWindow = new ListPopupWindow(context);
            PublishedVideosFragment.this.activePopupWindow = listPopupWindow;
            listPopupWindow.setAnchorView(view);
            listPopupWindow.setAdapter(new PopupListAdapter(context, PublishedVideosFragment.this.popupOptionsDrawableIdList));
            Utilities.preparePopupView(context, listPopupWindow);
            listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.adobe.premiereclip.featuredVideos.PublishedVideosFragment.PublishedVideoListAdapter.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view2, int i2, long j) {
                    listPopupWindow.dismiss();
                    PublishedVideosFragment.this.activePopupWindow = null;
                    if (i2 == 0) {
                        if (PublishedVideoListAdapter.this.videos.get(i).getStatus().equals(PublishedVideosFragment.this.getStringWrapped(R.string.status_loading))) {
                            new MessageDialog(PublishedVideosFragment.this.getActivity(), PublishedVideosFragment.this.getStringWrapped(R.string.video_unavailable), PublishedVideosFragment.this.getStringWrapped(R.string.try_again_msg), true).show();
                            return;
                        } else {
                            Metrics.sharedInstance().didTapDeleteInOptionsForMyPublishedVideoWithCCVID(PublishedVideoListAdapter.this.videos.get(i).getUUID(), PublishedVideoListAdapter.this.videos.get(i).getVideoTitle());
                            PublishedVideoListAdapter.this.onClickDeleteVideo(PublishedVideoListAdapter.this.videos.get(i));
                            return;
                        }
                    }
                    if (i2 == 1) {
                        if (!PublishedVideoListAdapter.this.videos.get(i).getStatus().equals(PublishedVideosFragment.this.getStringWrapped(R.string.status_loading))) {
                            PublishedVideoListAdapter.this.onClickSharePublishedVideo(PublishedVideoListAdapter.this.videos.get(i));
                        } else {
                            new MessageDialog(PublishedVideosFragment.this.getActivity(), PublishedVideosFragment.this.getStringWrapped(R.string.video_unavailable), PublishedVideosFragment.this.getStringWrapped(R.string.try_again_msg), true).show();
                        }
                    }
                }
            });
            listPopupWindow.setVerticalOffset(-view.getHeight());
            listPopupWindow.show();
        }
    }
}
