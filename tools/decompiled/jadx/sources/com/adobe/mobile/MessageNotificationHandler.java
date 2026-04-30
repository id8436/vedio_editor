package com.adobe.mobile;

import android.R;
import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import com.adobe.mobile.StaticMethods;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public class MessageNotificationHandler extends BroadcastReceiver {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.reflect.Method] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.reflect.Field] */
    /* JADX WARN: Type inference failed for: r1v14, types: [android.app.Notification, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ?? notification;
        Bundle extras = intent.getExtras();
        if (extras == null) {
            StaticMethods.logDebugFormat("Messages - unable to load extras from local notification intent", new Object[0]);
            return;
        }
        try {
            String string = extras.getString("alarm_message");
            int i = extras.getInt("adbMessageCode");
            int i2 = extras.getInt("requestCode");
            if (i == Messages.MESSAGE_LOCAL_IDENTIFIER.intValue()) {
                if (string == null) {
                    StaticMethods.logDebugFormat("Messages - local notification message was empty ", new Object[0]);
                    return;
                }
                try {
                    Activity currentActivity = StaticMethods.getCurrentActivity();
                    try {
                        Context sharedContext = StaticMethods.getSharedContext();
                        Activity currentActivity2 = null;
                        try {
                            currentActivity2 = StaticMethods.getCurrentActivity();
                        } catch (StaticMethods.NullActivityException e2) {
                            StaticMethods.logErrorFormat("Messages - unable to find activity for your notification, using default", new Object[0]);
                        }
                        if (currentActivity2 != null) {
                            intent = currentActivity2.getIntent();
                        }
                        intent.setFlags(603979776);
                        int i3 = Build.VERSION.SDK_INT;
                        try {
                            PendingIntent activity = PendingIntent.getActivity(sharedContext, i2, intent, com.adobe.customextractor.Constants.SAMPLE_FLAG_DECODE_ONLY);
                            if (activity == null) {
                                StaticMethods.logDebugFormat("Messages - could not retrieve sender from broadcast, unable to post notification", new Object[0]);
                                return;
                            }
                            if (i3 >= 11) {
                                Class<?> clsLoadClass = BroadcastReceiver.class.getClassLoader().loadClass("android.app.Notification$Builder");
                                Constructor<?> constructor = clsLoadClass.getConstructor(Context.class);
                                constructor.setAccessible(true);
                                Object objNewInstance = constructor.newInstance(StaticMethods.getSharedContext());
                                clsLoadClass.getDeclaredMethod("setSmallIcon", Integer.TYPE).invoke(objNewInstance, Integer.valueOf(getSmallIcon()));
                                clsLoadClass.getDeclaredMethod("setLargeIcon", Bitmap.class).invoke(objNewInstance, getLargeIcon());
                                clsLoadClass.getDeclaredMethod("setContentTitle", CharSequence.class).invoke(objNewInstance, getAppName());
                                clsLoadClass.getDeclaredMethod("setContentText", CharSequence.class).invoke(objNewInstance, string);
                                clsLoadClass.getDeclaredMethod("setContentIntent", PendingIntent.class).invoke(objNewInstance, activity);
                                clsLoadClass.getDeclaredMethod("setAutoCancel", Boolean.TYPE).invoke(objNewInstance, true);
                                if (i3 >= 16) {
                                    notification = clsLoadClass.getDeclaredMethod("build", new Class[0]).invoke(objNewInstance, new Object[0]);
                                } else {
                                    notification = clsLoadClass.getDeclaredMethod("getNotification", new Class[0]).invoke(objNewInstance, new Object[0]);
                                }
                                if (notification == 0) {
                                    return;
                                }
                            } else {
                                notification = new Notification();
                                Notification.class.getDeclaredMethod("setLatestEventInfo", Context.class, String.class, String.class, PendingIntent.class).invoke(notification, sharedContext, getAppName(), string, activity);
                                Notification.class.getField("icon").set(notification, Integer.valueOf(getSmallIcon()));
                                ((Notification) notification).flags = 16;
                            }
                            ((NotificationManager) currentActivity.getSystemService("notification")).notify(new SecureRandom().nextInt(), (Notification) notification);
                        } catch (StaticMethods.NullContextException e3) {
                            StaticMethods.logErrorFormat("Messages - error posting notification (%s)", e3.getMessage());
                        } catch (ClassNotFoundException e4) {
                            StaticMethods.logErrorFormat("Messages - error posting notification, class not found (%s)", e4.getMessage());
                        } catch (NoSuchMethodException e5) {
                            StaticMethods.logErrorFormat("Messages - error posting notification, method not found (%s)", e5.getMessage());
                        } catch (Exception e6) {
                            StaticMethods.logErrorFormat("Messages - unexpected error posting notification (%s)", e6.getMessage());
                        }
                    } catch (StaticMethods.NullContextException e7) {
                        StaticMethods.logErrorFormat(e7.getMessage(), new Object[0]);
                    }
                } catch (StaticMethods.NullActivityException e8) {
                    StaticMethods.logErrorFormat(e8.getMessage(), new Object[0]);
                }
            }
        } catch (Exception e9) {
            StaticMethods.logDebugFormat("Messages - unable to load message from local notification (%s)", e9.getMessage());
        }
    }

    private String getAppName() {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = StaticMethods.getSharedContext().getPackageManager();
            String str = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(StaticMethods.getSharedContext().getPackageName(), 0)) == null || packageManager.getApplicationLabel(applicationInfo) == null) ? "" : (String) packageManager.getApplicationLabel(applicationInfo);
            return str;
        } catch (PackageManager.NameNotFoundException e2) {
            StaticMethods.logDebugFormat("Messages - unable to retrieve app name for local notification (%s)", e2.getMessage());
            return "";
        } catch (StaticMethods.NullContextException e3) {
            StaticMethods.logDebugFormat("Messages - unable to get app name (%s)", e3.getMessage());
            return "";
        }
    }

    private int getSmallIcon() {
        return Messages.getSmallIconResourceId() != -1 ? Messages.getSmallIconResourceId() : R.drawable.sym_def_app_icon;
    }

    private Bitmap getLargeIcon() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, StaticMethods.NullContextException, InvocationTargetException {
        Drawable applicationIcon;
        PackageManager packageManager;
        int largeIconResourceId = Messages.getLargeIconResourceId();
        if (largeIconResourceId != -1) {
            Context sharedContext = StaticMethods.getSharedContext();
            applicationIcon = Build.VERSION.SDK_INT > 20 ? (Drawable) Resources.class.getDeclaredMethod("getDrawable", Integer.TYPE, Resources.Theme.class).invoke(sharedContext.getResources(), Integer.valueOf(largeIconResourceId), sharedContext.getTheme()) : (Drawable) Resources.class.getDeclaredMethod("getDrawable", Integer.TYPE).invoke(sharedContext.getResources(), Integer.valueOf(largeIconResourceId));
        } else {
            ApplicationInfo applicationInfo = StaticMethods.getSharedContext().getApplicationInfo();
            applicationIcon = (applicationInfo == null || (packageManager = StaticMethods.getSharedContext().getPackageManager()) == null) ? null : packageManager.getApplicationIcon(applicationInfo);
        }
        if (applicationIcon != null) {
            return ((BitmapDrawable) applicationIcon).getBitmap();
        }
        return null;
    }
}
