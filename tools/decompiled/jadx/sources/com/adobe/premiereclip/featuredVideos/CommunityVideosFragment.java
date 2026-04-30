package com.adobe.premiereclip.featuredVideos;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.adapter.PopupListAdapter;
import com.adobe.premiereclip.analytics.ABTestCommunityFeed;
import com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity;
import com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.util.FileOps;
import com.adobe.premiereclip.util.JsonReader;
import com.adobe.premiereclip.util.LollipopUtils;
import com.adobe.premiereclip.util.Utilities;
import com.google.gdata.client.GDataProtocol;
import java.io.File;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CommunityVideosFragment extends FeaturedVideosBaseFragment implements ABTestCommunityFeed.CommunityFeedABResult {
    private static final String GO_URL_COMMUNITY = "https://www.adobe.com/go/clipcommunityfeed/";
    private ABTestCommunityFeed abTestCommunityFeed;
    private CommunityFeedTitleListener titleListener;
    private final boolean useStaging = false;
    private final boolean AB_TESTING = true;

    /* JADX INFO: loaded from: classes.dex */
    public interface CommunityFeedTitleListener {
        void onResetCommunityFeedTitle(String str);
    }

    public static CommunityVideosFragment newInstance(CommunityFeedTitleListener communityFeedTitleListener) {
        CommunityVideosFragment communityVideosFragment = new CommunityVideosFragment();
        communityVideosFragment.titleListener = communityFeedTitleListener;
        communityVideosFragment.setArguments(new Bundle());
        FeaturedVideosBaseFragment.communityVideosFragmentInstance = communityVideosFragment;
        return communityVideosFragment;
    }

    public CommunityVideosFragment() {
        String str = PremiereClipApplication.getContext().getApplicationInfo().dataDir + File.separator + "communityVideoList.json";
        this.popupOptionsDrawableIdList = new ArrayList<>();
        initializeFragment(R.layout.fragment_community, R.layout.view_community, R.string.no_community_videos, str, "community");
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.abTestCommunityFeed = new ABTestCommunityFeed(context);
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment
    protected void createVideoListAdapter() {
        this.mAdapter = new CommunityVideoListAdapter();
        refreshVideoListAdapter();
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment
    protected void refreshVideoListAdapter() {
        if (this.abTestCommunityFeed != null) {
            this.abTestCommunityFeed.decideGroup(this);
        }
    }

    private void refreshVideoListAdapter(String str) {
        if (this.mAdapter != null) {
            FeaturedVideosBaseFragment.VideoListAdapter videoListAdapter = this.mAdapter;
            CommunityVideoListAdapter communityVideoListAdapter = (CommunityVideoListAdapter) this.mAdapter;
            communityVideoListAdapter.getClass();
            videoListAdapter.mVideoListRetriever = new FeaturedVideosBaseFragment.VideoListAdapter.VideoListRetriever();
            this.mAdapter.mVideoListRetriever.execute(str);
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
        if (jSONArray == null) {
            return null;
        }
        Metrics.sharedInstance().setCommunityVideosCount(jSONArray.length());
        if (!z) {
            Metrics.sharedInstance().didFetchCommunityVideosList();
        }
        ArrayList<FeaturedVideo> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= jSONArray.length()) {
                return arrayList;
            }
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String str6 = (String) jSONObject.get("ccv_id");
                String str7 = (String) jSONObject.get("title");
                String str8 = (String) jSONObject.get(GDataProtocol.Query.AUTHOR);
                String str9 = (String) jSONObject.get("description");
                if (!z) {
                    try {
                        JSONObject jsonObjectFromUrl = JsonReader.readJsonObjectFromUrl("https://api.ccv.adobe.com/api/v1/videos/" + str6 + "/info?options=title,description,thumbnail,posterframe,username,post_date,duration,privacy,hls_playlist");
                        String str10 = (String) jsonObjectFromUrl.get("post_date");
                        try {
                            str4 = (String) ((JSONObject) jsonObjectFromUrl.get("posterframe")).get("url");
                            try {
                                str = (String) jsonObjectFromUrl.get("hls_playlist");
                                str2 = str4;
                                str3 = str10;
                            } catch (Exception e2) {
                                str5 = str10;
                                e = e2;
                                e.printStackTrace();
                                str = null;
                                String str11 = str4;
                                str3 = str5;
                                str2 = str11;
                            }
                        } catch (Exception e3) {
                            str5 = str10;
                            e = e3;
                            str4 = null;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        str4 = null;
                        str5 = null;
                    }
                } else {
                    try {
                        str = (String) jSONObject.get("hls_playlist");
                        str2 = null;
                        str3 = null;
                    } catch (Exception e5) {
                        e5.printStackTrace();
                        str = null;
                        str2 = null;
                        str3 = null;
                    }
                }
                featuredVideo = new FeaturedVideo(str6, str7, str8, str3, str9, str2, str, getStringWrapped(R.string.status_public));
            } catch (Exception e6) {
                e6.printStackTrace();
                featuredVideo = null;
            }
            arrayList.add(featuredVideo);
            i = i2 + 1;
        }
    }

    @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment
    protected JSONArray getJSONArrayOfVideosFromUrl(String... strArr) {
        try {
            return JsonReader.readJsonArrayFromUrl(strArr[0]);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.adobe.premiereclip.analytics.ABTestCommunityFeed.CommunityFeedABResult
    public void onABGroupDecided(String str, String str2, boolean z) {
        if (this.titleListener != null) {
            this.titleListener.onResetCommunityFeedTitle(str);
        }
        if (z) {
            FileOps.delete(this.videoListFilePath);
        }
        refreshVideoListAdapter(str2);
    }

    public class CommunityVideoListAdapter extends FeaturedVideosBaseFragment.VideoListAdapter {
        public CommunityVideoListAdapter() {
            super();
        }

        @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.VideoListAdapter, android.support.v7.widget.RecyclerView.Adapter
        public FeaturedVideosBaseFragment.VideoListAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new CommunityVideoViewHolder(inflateViewAndSetHeight(viewGroup));
        }

        @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.VideoListAdapter, android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(FeaturedVideosBaseFragment.VideoListAdapter.ViewHolder viewHolder, int i) {
            super.onBindViewHolder(viewHolder, i);
            CommunityVideoViewHolder communityVideoViewHolder = (CommunityVideoViewHolder) viewHolder;
            communityVideoViewHolder.mAuthor.setText(this.videos.get(i).getAuthor());
            if (CommunityVideosFragment.this.needsRefresh) {
                CommunityVideosFragment.this.scheduleTimerForRefreshList();
                CommunityVideosFragment.this.needsRefresh = false;
            }
            LollipopUtils.setElevation(communityVideoViewHolder.mCardView, CommunityVideosFragment.this.getResources().getDimension(R.dimen.card_view_elevation));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void playVideoInApp(FeaturedVideo featuredVideo) {
            Intent intent = new Intent(CommunityVideosFragment.this.getActivity(), (Class<?>) VideoPlaybackActivity.class);
            intent.putExtra("videoTitle", featuredVideo.getVideoTitle());
            intent.putExtra("videoPlayUri", Uri.parse(featuredVideo.getVideoUrl()));
            intent.putExtra("playbackEndBehave", "finish");
            CommunityVideosFragment.this.startActivity(intent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void playVideoInBrowser(FeaturedVideo featuredVideo) {
            try {
                CommunityVideosFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(featuredVideo.getShareUrl())));
            } catch (ActivityNotFoundException e2) {
                e2.printStackTrace();
            }
        }

        public class CommunityVideoViewHolder extends FeaturedVideosBaseFragment.VideoListAdapter.ViewHolder {
            public TextView mAuthor;

            CommunityVideoViewHolder(View view) {
                super(view);
                this.mAuthor = (TextView) view.findViewById(R.id.author_name);
                this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.featuredVideos.CommunityVideosFragment.CommunityVideoListAdapter.CommunityVideoViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        int adapterPosition = CommunityVideoViewHolder.this.getAdapterPosition();
                        Metrics.sharedInstance().didTapOpenInSafariInOptionsForCommunityVideoWithCCVID(CommunityVideoListAdapter.this.videos.get(adapterPosition).getUUID(), CommunityVideoListAdapter.this.videos.get(adapterPosition).getVideoTitle());
                        CommunityVideoListAdapter.this.playVideoInBrowser(CommunityVideoListAdapter.this.videos.get(adapterPosition));
                    }
                });
            }

            @Override // com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.VideoListAdapter.ViewHolder, android.view.View.OnClickListener
            public void onClick(View view) {
                CommunityVideosFragment.this.abTestCommunityFeed.setABTestSuccess();
                super.onClick(view);
            }
        }

        private void openCVOptionsPopup(final int i, View view) {
            Context context = CommunityVideosFragment.this.getContext();
            Metrics.sharedInstance().didTapOptionsForCommunityVideoWithCCVID(this.videos.get(i).getUUID(), this.videos.get(i).getVideoTitle());
            final ListPopupWindow listPopupWindow = new ListPopupWindow(context);
            CommunityVideosFragment.this.activePopupWindow = listPopupWindow;
            listPopupWindow.setAnchorView(view);
            listPopupWindow.setAdapter(new PopupListAdapter(context, CommunityVideosFragment.this.popupOptionsDrawableIdList));
            Utilities.preparePopupView(context, listPopupWindow);
            listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.adobe.premiereclip.featuredVideos.CommunityVideosFragment.CommunityVideoListAdapter.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view2, int i2, long j) {
                    listPopupWindow.dismiss();
                    CommunityVideosFragment.this.activePopupWindow = null;
                    if (i2 == 0) {
                        Metrics.sharedInstance().didTapPlayVideoInOptionsForCommunityVideoWithCCVID(CommunityVideoListAdapter.this.videos.get(i).getUUID(), CommunityVideoListAdapter.this.videos.get(i).getVideoTitle());
                        CommunityVideoListAdapter.this.playVideoInApp(CommunityVideoListAdapter.this.videos.get(i));
                    } else if (i2 == 1) {
                        Metrics.sharedInstance().didTapOpenInSafariInOptionsForCommunityVideoWithCCVID(CommunityVideoListAdapter.this.videos.get(i).getUUID(), CommunityVideoListAdapter.this.videos.get(i).getVideoTitle());
                        CommunityVideoListAdapter.this.playVideoInBrowser(CommunityVideoListAdapter.this.videos.get(i));
                    }
                }
            });
            listPopupWindow.show();
        }
    }
}
