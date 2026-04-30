package com.adobe.premiereclip.sharing;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.Telephony;
import android.text.Html;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.auth.AdobeClientScope;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.metrics.Metrics;
import com.google.gdata.model.gd.Reminder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class SharingIntentsOptions {
    private Activity activity;
    private IntentAdapter intentAdapter;
    private List<Pair<Pair<String, Drawable>, Intent>> intentList;
    private Listener listener;
    private GridView shareIntentsView;

    public interface Listener {
        void onClosed();

        void onOpened();
    }

    public SharingIntentsOptions(Activity activity, Listener listener) {
        this.activity = activity;
        this.listener = listener;
        this.shareIntentsView = (GridView) this.activity.findViewById(R.id.share_intents_view);
        this.activity.findViewById(R.id.share_intents_layout).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.sharing.SharingIntentsOptions.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SharingIntentsOptions.this.onShareIntentsClosed();
            }
        });
        this.intentList = new ArrayList();
        this.intentAdapter = new IntentAdapter();
        this.shareIntentsView.setAdapter((ListAdapter) this.intentAdapter);
        this.shareIntentsView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.adobe.premiereclip.sharing.SharingIntentsOptions.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                String str = ((Intent) ((Pair) SharingIntentsOptions.this.intentList.get(i)).second).getPackage();
                if (str.contains("android.email")) {
                    Metrics.sharedInstance().didTapExportForDestination("Email", SharingManager.kAnalyticsPrivacy_NotApplicable);
                    Metrics.sharedInstance().didShowShareVideoViewForDestination("Email");
                } else if (str.contains("twitter")) {
                    Metrics.sharedInstance().didTapExportForDestination("Twitter", SharingManager.kAnalyticsPrivacy_NotApplicable);
                    Metrics.sharedInstance().didShowShareVideoViewForDestination("Twitter");
                } else if (str.contains("facebook")) {
                    Metrics.sharedInstance().didTapExportForDestination("Facebook", SharingManager.kAnalyticsPrivacy_NotApplicable);
                    Metrics.sharedInstance().didShowShareVideoViewForDestination("Facebook");
                } else if (str.contains(Reminder.Method.SMS)) {
                    Metrics.sharedInstance().didTapExportForDestination("Message", SharingManager.kAnalyticsPrivacy_NotApplicable);
                    Metrics.sharedInstance().didShowShareVideoViewForDestination("Message");
                } else if (str.contains("android.gm")) {
                    Metrics.sharedInstance().didTapExportForDestination("Email", SharingManager.kAnalyticsPrivacy_NotApplicable);
                    Metrics.sharedInstance().didShowShareVideoViewForDestination("Email");
                }
                SharingIntentsOptions.this.onShareIntentsClosed();
                SharingIntentsOptions.this.activity.startActivityForResult((Intent) ((Pair) SharingIntentsOptions.this.intentList.get(i)).second, i + 10000);
            }
        });
    }

    public void onShareActivityResult(int i, int i2, Intent intent) {
        int i3 = i - 10000;
        if (i3 < this.intentList.size()) {
            String str = ((Intent) this.intentList.get(i3).second).getPackage();
            String str2 = "CameraRoll";
            if (str.contains("android.email")) {
                str2 = "Email";
            } else if (str.contains("twitter")) {
                str2 = "Twitter";
            } else if (str.contains("facebook")) {
                str2 = "Facebook";
            } else if (str.contains(Reminder.Method.SMS)) {
                str2 = "Message";
            } else if (str.contains("android.gm")) {
                str2 = "Email";
            }
            if (i2 == -1) {
                Metrics.sharedInstance().didUploadVideoToExportDestination(str2);
                Metrics.sharedInstance().didShowShareVideoSuccessViewForDestination(str2, SharingManager.kAnalyticsPrivacy_NotApplicable);
            } else if (i2 == 0) {
                Metrics.sharedInstance().didCancelVideoUploadToExportDestination(str2);
                Metrics.sharedInstance().didShowShareVideoFailureViewForDestination(str2, SharingManager.kAnalyticsPrivacy_NotApplicable);
            }
        }
    }

    public void onShareClicked(String str, String str2) {
        String str3;
        Intent intent;
        Pair<Pair<String, Drawable>, Intent> pairCreate;
        boolean z;
        Pair<Pair<String, Drawable>, Intent> pairCreate2;
        if (this.listener != null) {
            this.listener.onOpened();
        }
        Resources resources = this.activity.getResources();
        String firstName = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getFirstName();
        String lastName = AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getLastName();
        Intent intent2 = new Intent();
        intent2.setAction("android.intent.action.SEND");
        intent2.putExtra("android.intent.extra.TEXT", Html.fromHtml(str));
        intent2.putExtra("android.intent.extra.SUBJECT", resources.getString(R.string.share_email_subject));
        intent2.setType("message/rfc822");
        if (Build.VERSION.SDK_INT >= 19) {
            String defaultSmsPackage = getDefaultSmsPackage();
            Intent intent3 = new Intent("android.intent.action.SEND");
            intent3.setType(MimeTypes.TEXT_PLAIN);
            intent3.putExtra("android.intent.extra.TEXT", str);
            str3 = defaultSmsPackage;
            intent = intent3;
        } else {
            Intent intent4 = new Intent("android.intent.action.VIEW");
            intent4.setType("vnd.android-dir/mms-sms");
            intent4.putExtra(AdobeClientScope.ADDRESS, AdobeEntitlementSession.AdobeEntitlementUserProfilePhoneNumber);
            intent4.putExtra("sms_body", str);
            str3 = null;
            intent = intent4;
        }
        if (str3 != null) {
            intent.setPackage(str3);
        }
        PackageManager packageManager = this.activity.getPackageManager();
        Intent intent5 = new Intent("android.intent.action.SEND");
        intent5.setType(MimeTypes.TEXT_PLAIN);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        Pair<Pair<String, Drawable>, Intent> pair = null;
        if (listQueryIntentActivities.size() <= 0) {
            pairCreate = null;
        } else {
            ResolveInfo resolveInfo = listQueryIntentActivities.get(0);
            pairCreate = Pair.create(Pair.create(resolveInfo.activityInfo.applicationInfo.loadLabel(packageManager).toString(), resolveInfo.loadIcon(packageManager)), intent);
        }
        List<ResolveInfo> listQueryIntentActivities2 = packageManager.queryIntentActivities(intent5, 0);
        this.intentList = new ArrayList();
        int i = 0;
        while (i < listQueryIntentActivities2.size()) {
            ResolveInfo resolveInfo2 = listQueryIntentActivities2.get(i);
            String str4 = resolveInfo2.activityInfo.packageName;
            ApplicationInfo applicationInfo = resolveInfo2.activityInfo.applicationInfo;
            Drawable drawableLoadIcon = applicationInfo.loadIcon(packageManager);
            String string = applicationInfo.loadLabel(packageManager).toString();
            Iterator<Pair<Pair<String, Drawable>, Intent>> it = this.intentList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((String) ((Pair) it.next().first).first).equals(string)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                pairCreate2 = pair;
            } else if (str4.contains("android.email")) {
                intent2.setPackage(str4);
                List<ResolveInfo> listQueryIntentActivities3 = packageManager.queryIntentActivities(intent2, 0);
                pairCreate2 = Pair.create(Pair.create(listQueryIntentActivities3.get(0).activityInfo.applicationInfo.loadLabel(packageManager).toString(), listQueryIntentActivities3.get(0).loadIcon(packageManager)), intent2);
            } else {
                if (str4.contains("twitter") || str4.contains("facebook") || str4.contains(Reminder.Method.SMS) || str4.contains("android.gm")) {
                    Intent intent6 = new Intent();
                    intent6.setAction("android.intent.action.SEND");
                    intent6.setType(MimeTypes.TEXT_PLAIN);
                    intent6.setPackage(str4);
                    if (str4.contains("twitter")) {
                        intent6.putExtra("android.intent.extra.TEXT", resources.getString(R.string.share_twitter_text) + str);
                    } else if (str4.contains("facebook") || str4.contains(Reminder.Method.SMS)) {
                        intent6.putExtra("android.intent.extra.TEXT", str);
                    } else if (str4.contains("android.gm")) {
                        intent6.putExtra("android.intent.extra.TEXT", resources.getString(R.string.share_email_content, firstName, lastName, str2, Html.fromHtml(str)));
                        intent6.putExtra("android.intent.extra.SUBJECT", resources.getString(R.string.share_email_subject, firstName, lastName));
                        intent6.setType("message/rfc822");
                    }
                    this.intentList.add(Pair.create(Pair.create(string, drawableLoadIcon), intent6));
                }
                pairCreate2 = pair;
            }
            i++;
            pair = pairCreate2;
        }
        if (pairCreate != null) {
            this.intentList.add(pairCreate);
        }
        if (pair != null) {
            this.intentList.add(pair);
        }
        this.intentAdapter.notifyDataSetChanged();
        this.activity.findViewById(R.id.share_intents_layout).setVisibility(0);
    }

    public void onShareIntentsClosed() {
        this.activity.findViewById(R.id.share_intents_layout).setVisibility(8);
        if (this.listener != null) {
            this.listener.onClosed();
        }
    }

    public final boolean onBackPressed() {
        if (this.activity.findViewById(R.id.share_intents_layout).getVisibility() == 8) {
            return false;
        }
        onShareIntentsClosed();
        return true;
    }

    @TargetApi(19)
    private String getDefaultSmsPackage() {
        return Telephony.Sms.getDefaultSmsPackage(this.activity);
    }

    class IntentAdapter extends BaseAdapter {
        private IntentAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return SharingIntentsOptions.this.intentList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            LayoutInflater layoutInflater = (LayoutInflater) SharingIntentsOptions.this.activity.getSystemService("layout_inflater");
            if (view == null) {
                View viewInflate = layoutInflater.inflate(R.layout.sharing_grid, (ViewGroup) null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.sharing_grid_text);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.sharing_grid_image);
                textView.setText((CharSequence) ((Pair) ((Pair) SharingIntentsOptions.this.intentList.get(i)).first).first);
                imageView.setImageDrawable((Drawable) ((Pair) ((Pair) SharingIntentsOptions.this.intentList.get(i)).first).second);
                return viewInflate;
            }
            return view;
        }
    }
}
