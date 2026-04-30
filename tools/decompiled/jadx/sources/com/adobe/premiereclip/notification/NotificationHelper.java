package com.adobe.premiereclip.notification;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.internal.view.SupportMenu;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.adobe.customextractor.Constants;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.TourViewActivity;
import com.adobe.premiereclip.analytics.ABTestNotification;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.grouping.GroupingManager;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.Utilities;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class NotificationHelper {
    private static final String CHANNEL_ID = "adobe_clip_channel_01";
    private static final CharSequence CHANNEL_NAME = "Adobeclip channel";
    public static final String INTENT_ARG_CLIP_NOTIFICATION = "clip_notification";
    private final boolean AB_TESTING = true;
    private final long MIN_NUM_ASSETS = 5;
    private ABTestNotification abTestNotification;
    private Context context;

    enum NotificationType {
        NOTIFICATION_START,
        NOTIFICATION_END,
        NOTIFICATION_RESTART
    }

    NotificationHelper(Context context) {
        this.context = context;
        this.abTestNotification = new ABTestNotification(context);
    }

    @TargetApi(26)
    private NotificationChannel getNotificationChannel() {
        return new NotificationChannel(CHANNEL_ID, CHANNEL_NAME, 4);
    }

    private ArrayList<MediaModel> getMediaModels() {
        ArrayList<Bucket> sortedMediaGroups = new GroupingManager(this.context, ClipPreferences.getInstance(this.context).getNotificationScheduleTime() / 1000, ClipPreferences.getInstance(this.context).getNotificationTime() / 1000).getSortedMediaGroups();
        if (sortedMediaGroups != null && !sortedMediaGroups.isEmpty()) {
            ArrayList<MediaModel> items = sortedMediaGroups.get(0).getItems();
            if (items.size() >= 5) {
                return items;
            }
        }
        return null;
    }

    private PendingIntent getDismissPendingIntent() {
        if (Build.VERSION.SDK_INT >= 26) {
            return PendingIntent.getBroadcast(this.context, 2, new Intent(this.context, (Class<?>) DismissNotificationBroadcastReceiver.class), Constants.SAMPLE_FLAG_DECODE_ONLY);
        }
        Intent intent = new Intent(this.context, (Class<?>) ClipNotificationService.class);
        intent.setAction(ClipNotificationManager.NOTIFICATION_RESTART);
        return PendingIntent.getService(this.context, 1, intent, Constants.SAMPLE_FLAG_DECODE_ONLY);
    }

    private Intent getAppLaunchIntent(ArrayList<MediaModel> arrayList) {
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        Iterator<MediaModel> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Uri.parse(it.next().getPath()));
        }
        Intent intent = new Intent(this.context, (Class<?>) TourViewActivity.class);
        intent.setAction("android.intent.action.SEND_MULTIPLE");
        intent.setFlags(268468224);
        intent.setType("multiple");
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList2);
        intent.putExtra(INTENT_ARG_CLIP_NOTIFICATION, true);
        intent.putExtra("ab_testing", true);
        return intent;
    }

    private Bitmap getMediaThumbnail(MediaModel mediaModel) {
        int duration;
        Display defaultDisplay = ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i = point.x;
        int i2 = (i * 9) / 16;
        if (mediaModel.getMediaType() == 1) {
            return Utilities.decodeBitmap(Clip.CLIP_TYPE.IMAGE_NON_TITLE, mediaModel.getPath(), i, i2, -1L);
        }
        if (mediaModel.getDuration() >= 800) {
            duration = 600;
        } else {
            duration = (int) (mediaModel.getDuration() / 2);
        }
        return Utilities.decodeBitmap(Clip.CLIP_TYPE.VIDEO, mediaModel.getPath(), i, i2, duration);
    }

    private Bitmap getCircleBitmap(Bitmap bitmap) {
        int iMin = Math.min(bitmap.getWidth(), bitmap.getHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, iMin, iMin);
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(SupportMenu.CATEGORY_MASK);
        canvas.drawOval(rectF, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }

    private Notification getNotification(ArrayList<MediaModel> arrayList, boolean z) {
        PendingIntent activity = PendingIntent.getActivity(this.context, 0, getAppLaunchIntent(arrayList), Constants.SAMPLE_FLAG_DECODE_ONLY);
        PendingIntent dismissPendingIntent = getDismissPendingIntent();
        Bitmap mediaThumbnail = null;
        if (arrayList != null && !arrayList.isEmpty()) {
            Log.d("ClipService", "media thumbnail path : " + arrayList.get(0).getPath());
            mediaThumbnail = getMediaThumbnail(arrayList.get(0));
        }
        Notification.Builder sound = new Notification.Builder(this.context).setAutoCancel(true).setSmallIcon(R.drawable.notification).setContentTitle(this.context.getString(R.string.splash_display_name)).setContentText(this.context.getString(R.string.notification_text)).setContentIntent(activity).setDeleteIntent(dismissPendingIntent).setSound(RingtoneManager.getDefaultUri(2));
        if (Build.VERSION.SDK_INT >= 26) {
            sound.setChannelId(CHANNEL_ID);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            sound.setLargeIcon(getCircleBitmap(mediaThumbnail));
        } else {
            sound.setLargeIcon(BitmapFactory.decodeResource(this.context.getResources(), R.drawable.clip_icon));
        }
        if (z) {
            sound.setStyle(new Notification.BigPictureStyle().bigPicture(mediaThumbnail));
        }
        Notification notificationBuild = sound.build();
        notificationBuild.flags = 16;
        return notificationBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postNotification(ArrayList<MediaModel> arrayList, boolean z) {
        NotificationManager notificationManager = (NotificationManager) this.context.getSystemService("notification");
        Notification notification = getNotification(arrayList, z);
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(getNotificationChannel());
        }
        notificationManager.notify(0, notification);
        Log.d("ClipService", "posted notification");
    }

    public void onStart(NotificationType notificationType) {
        if (notificationType == NotificationType.NOTIFICATION_START) {
            final ArrayList<MediaModel> mediaModels = getMediaModels();
            if (mediaModels != null && !mediaModels.isEmpty()) {
                this.abTestNotification.decideGroup(new ABTestNotification.NotificationFeedABResult() { // from class: com.adobe.premiereclip.notification.NotificationHelper.1
                    @Override // com.adobe.premiereclip.analytics.ABTestNotification.NotificationFeedABResult
                    public void onABGroupDecided(boolean z, boolean z2) {
                        Log.d("ClipService", "got preview " + z);
                        NotificationHelper.this.postNotification(mediaModels, z);
                    }
                });
                return;
            } else {
                Log.d("ClipService", "got empty list");
                ClipNotificationManager.getInstance(this.context).initNotification(false);
                return;
            }
        }
        if (notificationType == NotificationType.NOTIFICATION_END) {
            ((NotificationManager) this.context.getSystemService("notification")).cancel(0);
        } else if (notificationType == NotificationType.NOTIFICATION_RESTART) {
            ClipNotificationManager.getInstance(this.context).initNotification(true);
        }
    }

    public static NotificationType getNotificationType(String str) {
        if (str.equals(ClipNotificationManager.NOTIFICATION_START)) {
            return NotificationType.NOTIFICATION_START;
        }
        if (str.equals(ClipNotificationManager.NOTIFICATION_END)) {
            return NotificationType.NOTIFICATION_END;
        }
        return NotificationType.NOTIFICATION_RESTART;
    }
}
