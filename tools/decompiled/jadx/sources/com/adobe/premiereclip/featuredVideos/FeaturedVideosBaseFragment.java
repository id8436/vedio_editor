package com.adobe.premiereclip.featuredVideos;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.FileOps;
import com.adobe.premiereclip.util.JsonReader;
import com.adobe.premiereclip.util.LollipopUtils;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.utility.AndroidMiscUtils;
import com.h.a.d;
import java.io.File;
import java.io.FileWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class FeaturedVideosBaseFragment extends Fragment {
    protected static FeaturedVideosBaseFragment communityVideosFragmentInstance = null;
    protected static FeaturedVideosBaseFragment publishedVideosFragmentInstance = null;
    protected ListPopupWindow activePopupWindow;
    private String cacheDirSuffix;
    private int fragmentViewId;
    protected VideoListAdapter mAdapter;
    private Context mContext;
    private ImageView mErrorImage;
    private TextView mErrorMsg;
    private RecyclerView.LayoutManager mLayoutManager;
    private RecyclerView mRecyclerView;
    private SwipeRefreshLayout mSwipeRefreshLayout;
    private int noVideosErrorMsgCode;
    protected ArrayList<Integer> popupOptionsDrawableIdList;
    protected Timer timerCheckInternet;
    protected Timer timerRefreshList;
    protected String videoListFilePath;
    private int videoPosterHeight;
    private String videosCacheDir;
    private int viewHolderViewId;
    private boolean mVideoListCached = false;
    protected boolean noVideos = false;
    protected volatile boolean needsRefresh = false;
    protected volatile boolean timerCheckInternetScheduled = false;

    protected abstract void createVideoListAdapter();

    protected abstract JSONArray getJSONArrayOfVideosFromUrl(String... strArr);

    protected abstract ArrayList<FeaturedVideo> makeVideosList(JSONArray jSONArray, boolean z);

    protected abstract void refreshVideoListAdapter();

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mContext = context;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.fragmentViewId, viewGroup, false);
        this.mErrorMsg = (TextView) viewInflate.findViewById(R.id.videos_error_msg);
        this.mErrorImage = (ImageView) viewInflate.findViewById(R.id.no_internet_image);
        this.mRecyclerView = (RecyclerView) viewInflate.findViewById(R.id.video_list_view);
        this.mSwipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.featured_swipe_refresh_layout);
        this.mSwipeRefreshLayout.setColorSchemeResources(R.color.theme_color);
        this.mSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.1
            @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                FeaturedVideosBaseFragment.this.refreshVideoListAdapter();
            }
        });
        this.mRecyclerView.setHasFixedSize(true);
        this.mLayoutManager = new LinearLayoutManager(getActivity());
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        createVideoListAdapter();
        this.mRecyclerView.setAdapter(this.mAdapter);
        Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.videoPosterHeight = ((point.x - (getResources().getDimensionPixelSize(R.dimen.card_view_margin) * 2)) * 9) / 16;
        this.videosCacheDir = getActivity().getCacheDir() + File.separator + this.cacheDirSuffix;
        new File(this.videosCacheDir).mkdirs();
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.mAdapter.notifyDataSetChanged();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.timerCheckInternet != null) {
            this.timerCheckInternet.cancel();
            this.timerCheckInternet.purge();
            this.timerCheckInternet = null;
        }
        this.timerCheckInternetScheduled = false;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        checkConnectivityAndSetError();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.activePopupWindow != null) {
            this.activePopupWindow.dismiss();
        }
    }

    public static void onLogout() {
        PublishedVideosFragment.clearPublishedVideoList();
        try {
            communityVideosFragmentInstance.mAdapter.mVideoListRetriever.cancel(true);
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        }
        try {
            publishedVideosFragmentInstance.clearCache();
            publishedVideosFragmentInstance.mAdapter.mVideoListRetriever.cancel(true);
        } catch (NullPointerException e3) {
            e3.printStackTrace();
        }
    }

    public static void displayErrorIfNoInternet() {
        if (communityVideosFragmentInstance != null) {
            communityVideosFragmentInstance.checkConnectivityAndSetError();
        }
        if (publishedVideosFragmentInstance != null) {
            publishedVideosFragmentInstance.checkConnectivityAndSetError();
        }
    }

    protected void initializeFragment(int i, int i2, int i3, String str, String str2) {
        this.fragmentViewId = i;
        this.videoListFilePath = str;
        this.cacheDirSuffix = str2;
        this.viewHolderViewId = i2;
        this.noVideosErrorMsgCode = i3;
    }

    protected void disableSwipeRefreshLayout() {
        this.mSwipeRefreshLayout.setRefreshing(false);
    }

    private void clearCache() {
        if (this.mAdapter != null && this.mAdapter.videos != null) {
            int size = this.mAdapter.videos.size();
            for (int i = 0; i < size; i++) {
                try {
                    new File(this.videosCacheDir + File.separator + this.mAdapter.videos.get(i).getUUID() + AndroidMiscUtils.IMAGE_TYPE).delete();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.mAdapter.videos = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNetworkAvailable() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkConnectivityAndSetError() {
        if (isNetworkAvailable()) {
            if (this.noVideos) {
                showNoVideosErrorMessage();
                return false;
            }
            this.mErrorMsg.setVisibility(8);
            this.mErrorImage.setVisibility(8);
            this.mSwipeRefreshLayout.setVisibility(0);
            return false;
        }
        this.mSwipeRefreshLayout.setVisibility(8);
        this.mErrorMsg.setVisibility(0);
        this.mErrorMsg.setText(getStringWrapped(R.string.no_internet_connection));
        this.mErrorImage.setVisibility(0);
        scheduleTimerForCheckingInternet();
        return true;
    }

    protected void showNoVideosErrorMessage() {
        this.mErrorImage.setVisibility(8);
        String stringWrapped = getStringWrapped(this.noVideosErrorMsgCode);
        this.mSwipeRefreshLayout.setVisibility(8);
        this.mErrorMsg.setVisibility(0);
        this.mErrorMsg.setText(stringWrapped);
    }

    private void scheduleTimerForCheckingInternet() {
        if (this.timerCheckInternet == null) {
            this.timerCheckInternet = new Timer();
        }
        if (!this.timerCheckInternetScheduled) {
            this.timerCheckInternetScheduled = true;
            this.timerCheckInternet.schedule(new TimerTask() { // from class: com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    FeaturedVideosBaseFragment.this.timerCheckInternetScheduled = false;
                    FeaturedVideosBaseFragment.this.recheckInternet();
                    Log.d("Timer", "schedule new task");
                }
            }, 10000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recheckInternet() {
        if (isNetworkAvailable()) {
            refreshVideoListAdapter();
        } else {
            scheduleTimerForCheckingInternet();
        }
    }

    protected void scheduleTimerForRefreshList() {
        if (this.timerRefreshList == null) {
            this.timerRefreshList = new Timer();
        }
        this.timerRefreshList.schedule(new TimerTask() { // from class: com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                FeaturedVideosBaseFragment.this.refreshVideoListAdapter();
            }
        }, 10000L);
    }

    protected static void writeVideoListToDisk(ArrayList<FeaturedVideo> arrayList, String str) throws Exception {
        if (arrayList != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < arrayList.size(); i++) {
                jSONArray.put(arrayList.get(i).toJSON());
            }
            FileWriter fileWriter = new FileWriter(str, false);
            fileWriter.write(jSONArray.toString());
            fileWriter.close();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public abstract class VideoListAdapter extends RecyclerView.Adapter<ViewHolder> {
        protected VideoListRetriever mVideoListRetriever;
        protected volatile ArrayList<FeaturedVideo> videos;

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public abstract ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i);

        public VideoListAdapter() {
            if (FeaturedVideosBaseFragment.this.isNetworkAvailable()) {
                initializeVideoList();
            }
        }

        public void updateList(ArrayList<FeaturedVideo> arrayList) {
            FragmentActivity activity;
            if (this.videos == null || arrayList != null) {
                this.videos = arrayList;
                if (this.videos != null && this.videos.size() == 0) {
                    FeaturedVideosBaseFragment.this.noVideos = true;
                } else {
                    FeaturedVideosBaseFragment.this.noVideos = false;
                }
                if (!FeaturedVideosBaseFragment.this.checkConnectivityAndSetError() && (activity = FeaturedVideosBaseFragment.this.getActivity()) != null) {
                    activity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.featuredVideos.FeaturedVideosBaseFragment.VideoListAdapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            VideoListAdapter.this.notifyDataSetChanged();
                        }
                    });
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            FeaturedVideo featuredVideo = this.videos.get(i);
            viewHolder.key = featuredVideo.getUUID();
            viewHolder.videoUrl = featuredVideo.getVideoUrl();
            viewHolder.videoTitle = featuredVideo.getVideoTitle();
            viewHolder.mTextView.setText(featuredVideo.getVideoTitle());
            viewHolder.mImageView.setImageDrawable(null);
            String str = FeaturedVideosBaseFragment.this.videosCacheDir + File.separator + viewHolder.key + AndroidMiscUtils.IMAGE_TYPE;
            File file = new File(str);
            Utilities.resetViewIfBitmapRecycled(viewHolder.mImageView);
            String thumbUrl = featuredVideo.getThumbUrl();
            if (thumbUrl != null) {
                Bitmap bitmapFromMemoryCache = BitmapCache.getBitmapFromMemoryCache(viewHolder.key);
                if (bitmapFromMemoryCache != null) {
                    viewHolder.mImageView.setImageBitmap(bitmapFromMemoryCache);
                    if (!file.exists()) {
                        FileOps.saveBitmap(bitmapFromMemoryCache, str, Bitmap.CompressFormat.JPEG, 80);
                        return;
                    }
                    return;
                }
                FeaturedVideosBaseFragment.this.new BitmapRetriever(viewHolder, viewHolder.key).execute(thumbUrl);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.videos != null) {
                return this.videos.size();
            }
            return 0;
        }

        protected void initializeVideoList() {
            JSONArray jsonArrayFromFile = null;
            try {
                if (new File(FeaturedVideosBaseFragment.this.videoListFilePath).exists()) {
                    jsonArrayFromFile = JsonReader.readJsonArrayFromFile(FeaturedVideosBaseFragment.this.videoListFilePath);
                    FeaturedVideosBaseFragment.this.mVideoListCached = true;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            updateList(FeaturedVideosBaseFragment.this.makeVideosList(jsonArrayFromFile, true));
        }

        protected View inflateViewAndSetHeight(ViewGroup viewGroup) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(FeaturedVideosBaseFragment.this.viewHolderViewId, viewGroup, false);
            viewInflate.findViewById(R.id.video_thumb).getLayoutParams().height = FeaturedVideosBaseFragment.this.videoPosterHeight;
            return viewInflate;
        }

        protected PopupWindow showPopupMenuOnScreen(View view, View view2) {
            PopupWindow popupWindow = new PopupWindow(view2, FeaturedVideosBaseFragment.this.getActivity().getResources().getDimensionPixelSize(R.dimen.video_popup_width), FeaturedVideosBaseFragment.this.getActivity().getResources().getDimensionPixelSize(R.dimen.video_popup_height), true);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
            Display defaultDisplay = ((WindowManager) FeaturedVideosBaseFragment.this.getActivity().getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            int i = point.y;
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            int dimensionPixelSize = FeaturedVideosBaseFragment.this.getActivity().getResources().getDimensionPixelSize(R.dimen.video_popup_xoffset);
            int dimensionPixelSize2 = FeaturedVideosBaseFragment.this.getActivity().getResources().getDimensionPixelSize(R.dimen.video_popup_yoffset);
            if (FeaturedVideosBaseFragment.this.getActivity().getResources().getDimensionPixelSize(R.dimen.VideoOpenPopupHeight) + i3 + popupWindow.getHeight() > i) {
                popupWindow.showAtLocation(view, 48, i2 + dimensionPixelSize, i3 - popupWindow.getHeight());
            } else {
                popupWindow.showAtLocation(view, 48, i2 + dimensionPixelSize, i3 + dimensionPixelSize2);
            }
            return popupWindow;
        }

        public class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            public String key;
            public View mCardView;
            public ImageView mImageView;
            public TextView mTextView;
            public ImageButton optionsButton;
            public String videoTitle;
            public String videoUrl;

            public ViewHolder(View view) {
                super(view);
                d.a(view);
                this.mCardView = view.findViewById(R.id.featured_video_card_view);
                this.mTextView = (TextView) view.findViewById(R.id.video_name);
                this.mImageView = (ImageView) view.findViewById(R.id.video_thumb);
                this.optionsButton = (ImageButton) view.findViewById(R.id.open_video_options);
                this.mImageView.setOnClickListener(this);
            }

            public void onClick(View view) {
                String str = this.videoUrl;
                boolean zEquals = FeaturedVideosBaseFragment.this.getClass().equals(CommunityVideosFragment.class);
                if (zEquals) {
                    Metrics.sharedInstance().didTapCommunityVideoWithCCVID(this.key, this.mTextView.getText().toString());
                } else {
                    Metrics.sharedInstance().didTapMyPublishedVideoWithCCVID(this.key, this.mTextView.getText().toString());
                }
                if (str != null) {
                    LollipopUtils.setElevation(this.mCardView, FeaturedVideosBaseFragment.this.getResources().getDimension(R.dimen.card_view_selected_elevation));
                    Intent intent = new Intent(FeaturedVideosBaseFragment.this.getActivity(), (Class<?>) VideoPlaybackActivity.class);
                    intent.putExtra("videoTitle", this.videoTitle);
                    intent.putExtra("videoPlayUri", Uri.parse(str));
                    intent.putExtra("playbackEndBehave", "finish");
                    FeaturedVideosBaseFragment.this.startActivity(intent);
                    return;
                }
                if (zEquals) {
                    Metrics.sharedInstance().didFailToPlayVideoForClipCommunityURLWithCCVID(this.key);
                }
                new MessageDialog(FeaturedVideosBaseFragment.this.getActivity(), FeaturedVideosBaseFragment.this.getStringWrapped(R.string.video_unavailable), FeaturedVideosBaseFragment.this.getStringWrapped(R.string.try_again_msg), true).show();
                FeaturedVideosBaseFragment.this.needsRefresh = true;
            }
        }

        public class VideoListRetriever extends AsyncTask<String, Void, ArrayList<FeaturedVideo>> {
            protected VideoListRetriever() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public ArrayList<FeaturedVideo> doInBackground(String... strArr) {
                JSONArray jSONArrayOfVideosFromUrl = FeaturedVideosBaseFragment.this.getJSONArrayOfVideosFromUrl(strArr);
                if (FeaturedVideosBaseFragment.this.mVideoListCached) {
                    return FeaturedVideosBaseFragment.this.makeVideosList(jSONArrayOfVideosFromUrl, false);
                }
                ArrayList<FeaturedVideo> arrayListMakeVideosList = FeaturedVideosBaseFragment.this.makeVideosList(jSONArrayOfVideosFromUrl, true);
                FeaturedVideosBaseFragment.this.needsRefresh = true;
                return arrayListMakeVideosList;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(ArrayList<FeaturedVideo> arrayList) {
                VideoListAdapter.this.updateList(arrayList);
                try {
                    FeaturedVideosBaseFragment.writeVideoListToDisk(arrayList, FeaturedVideosBaseFragment.this.videoListFilePath);
                    FeaturedVideosBaseFragment.this.mVideoListCached = true;
                } catch (Exception e2) {
                    Log.e("VideoListWriteError", "Cannot write video list to disk");
                }
                FeaturedVideosBaseFragment.this.mSwipeRefreshLayout.setRefreshing(false);
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class BitmapRetriever extends AsyncTask<String, Void, Bitmap> {
        private String cacheKey;
        private String filepath;
        private Boolean posterFilePreExisted;
        private VideoListAdapter.ViewHolder viewHolderRef;

        BitmapRetriever(VideoListAdapter.ViewHolder viewHolder, String str) {
            this.viewHolderRef = viewHolder;
            this.cacheKey = str;
            this.filepath = FeaturedVideosBaseFragment.this.videosCacheDir + File.separator + str + AndroidMiscUtils.IMAGE_TYPE;
            this.posterFilePreExisted = Boolean.valueOf(new File(this.filepath).exists());
        }

        private Bitmap getBitmapFromURL(String str) {
            Bitmap bitmapCreateScaledBitmap;
            Bitmap bitmapFromDiskCache = BitmapCache.getBitmapFromDiskCache(this.cacheKey);
            if (bitmapFromDiskCache != null) {
                return bitmapFromDiskCache;
            }
            if (this.posterFilePreExisted.booleanValue()) {
                bitmapCreateScaledBitmap = BitmapFactory.decodeFile(this.filepath);
            } else {
                try {
                    URL url = new URL(str);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.connect();
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    Log.d("Featured Video", "url connection time = " + (jCurrentTimeMillis2 - jCurrentTimeMillis));
                    bitmapFromDiskCache = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    Log.d("Featured Video", "bitmap decode time = " + (System.currentTimeMillis() - jCurrentTimeMillis2));
                    int width = bitmapFromDiskCache.getWidth();
                    int height = bitmapFromDiskCache.getHeight();
                    int width2 = this.viewHolderRef.mImageView.getWidth();
                    int height2 = this.viewHolderRef.mImageView.getHeight();
                    if (width * height2 <= height * width2) {
                        bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapFromDiskCache, (width * height2) / height, height2, false);
                    } else {
                        bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapFromDiskCache, width2, (height * width2) / width, false);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (bitmapFromDiskCache != bitmapCreateScaledBitmap) {
                    bitmapFromDiskCache.recycle();
                } else {
                    bitmapCreateScaledBitmap = bitmapFromDiskCache;
                }
            }
            if (bitmapCreateScaledBitmap != null) {
                BitmapCache.addBitmapToDiskCache(this.cacheKey, bitmapCreateScaledBitmap);
                return bitmapCreateScaledBitmap;
            }
            return bitmapCreateScaledBitmap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(String... strArr) {
            return getBitmapFromURL(strArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            if (bitmap != null) {
                BitmapCache.addBitmapToMemoryCache(this.cacheKey, bitmap);
                if (this.viewHolderRef.key.equals(this.cacheKey)) {
                    this.viewHolderRef.mImageView.setImageBitmap(bitmap);
                }
                if (!this.posterFilePreExisted.booleanValue()) {
                    FileOps.saveBitmap(bitmap, this.filepath, Bitmap.CompressFormat.JPEG, 80);
                }
                BitmapCache.logStats();
            }
        }
    }

    protected String getStringWrapped(int i) {
        FragmentActivity activity = getActivity();
        return (activity == null || !isAdded()) ? "" : activity.getString(i);
    }
}
