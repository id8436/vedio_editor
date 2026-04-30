package com.adobe.creativeapps.settings.adapters;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativeapps.settings.R;
import com.adobe.creativeapps.settings.utils.CircleTransform;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeGetUserProfilePic;
import com.adobe.creativesdk.foundation.internal.collaboration.models.IAdobeProfilePicCallback;
import com.behance.sdk.BehanceSDKUserProfile;
import com.h.a.d;
import com.k.a.ak;

/* JADX INFO: loaded from: classes.dex */
public class DrawerOptionAdapter extends RecyclerView.Adapter<ViewHolder> {
    private CircleTransform ct;
    private Context mContext;
    private final String[] mDataset;
    private final OnItemClickListener mListener;
    private boolean isSelected = false;
    private int activeRowIndex = 1;

    public interface OnItemClickListener {
        void onClick(View view, int i);
    }

    public void setActiveRowIndex(int i) {
        if (i != 5) {
            this.activeRowIndex = i;
        }
    }

    public DrawerOptionAdapter(String[] strArr, OnItemClickListener onItemClickListener, Context context) {
        this.mDataset = strArr;
        this.mListener = onItemClickListener;
        this.mContext = context;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0) {
            return R.layout.drawer_profile_item;
        }
        if (i == 4) {
            return R.layout.drawer_list_divider;
        }
        return R.layout.drawer_list_item;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        if (i == R.layout.drawer_profile_item) {
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.drawer_profile_layout);
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.adapters.DrawerOptionAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    DrawerOptionAdapter.this.mListener.onClick(view, 0);
                }
            });
            d.a(linearLayout);
            return new ProfileViewHolder(linearLayout);
        }
        if (i == R.layout.drawer_list_divider) {
            return new ViewHolder(viewInflate);
        }
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.option_layout);
        d.a(relativeLayout);
        return new ViewHolder(relativeLayout);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        AdobeAuthUserProfile userProfile;
        BehanceSDKUserProfile behanceSDKUserProfile = null;
        if (i == this.activeRowIndex) {
            viewHolder.mView.setBackgroundColor(this.mContext.getResources().getColor(R.color.lib_row_active_bg));
        } else if (i < 4) {
            viewHolder.mView.setBackgroundColor(0);
        }
        if (i != 4) {
            if (i == 0) {
                final ProfileViewHolder profileViewHolder = (ProfileViewHolder) viewHolder;
                this.ct = new CircleTransform();
                ak.a(this.mContext).a(R.drawable.settings_sa).a(this.ct).a(profileViewHolder.mProfilePic);
                if (0 != 0) {
                    profileViewHolder.mProfileName.setText(behanceSDKUserProfile.getFirstName() + " " + behanceSDKUserProfile.getLastName());
                    if (behanceSDKUserProfile.getProfileImageUrl() != null) {
                        AdobeGetUserProfilePic.getAvatarFromURL(behanceSDKUserProfile.getProfileImageUrl(), new IAdobeProfilePicCallback() { // from class: com.adobe.creativeapps.settings.adapters.DrawerOptionAdapter.2
                            @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.IAdobeProfilePicCallback
                            public void onComplete(Bitmap bitmap) {
                                if (bitmap != null) {
                                    profileViewHolder.mProfilePic.setImageBitmap(DrawerOptionAdapter.this.ct.transform(bitmap.copy(bitmap.getConfig(), true)));
                                }
                            }

                            @Override // com.adobe.creativesdk.foundation.internal.collaboration.models.IAdobeProfilePicCallback
                            public void onError() {
                            }
                        });
                    }
                }
                try {
                    userProfile = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getUserProfile();
                } catch (RuntimeException e2) {
                    e2.printStackTrace();
                    userProfile = null;
                }
                if (userProfile != null && userProfile.getEmail() != null) {
                    profileViewHolder.mProfileEmail.setText(userProfile.getEmail().toLowerCase());
                }
            } else if (i == 1) {
                viewHolder.mTextView.setText(this.mContext.getResources().getString(R.string.my_projects));
                viewHolder.mTextView.setTextColor(this.mContext.getResources().getColor(R.color.primary));
                viewHolder.mImageView.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_project));
            } else {
                if (i < 4) {
                    viewHolder.mTextView.setText(this.mDataset[i - 2]);
                }
                if (i > 4) {
                    viewHolder.mTextView.setText(this.mDataset[i - 3]);
                }
                switch (i) {
                    case 2:
                        viewHolder.mImageView.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_clip));
                        break;
                    case 3:
                        viewHolder.mImageView.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_settings_24dp));
                        break;
                    case 5:
                        viewHolder.mImageView.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_email_24dp));
                        break;
                }
            }
            if (i != 4) {
                viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.adapters.DrawerOptionAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        DrawerOptionAdapter.this.mListener.onClick(view, i);
                    }
                });
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDataset.length + 3;
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        public final ImageView mImageView;
        public final TextView mTextView;
        public final View mView;

        public ViewHolder(View view) {
            super(view);
            this.mView = view;
            this.mTextView = (TextView) view.findViewById(R.id.option_text);
            this.mImageView = (ImageView) view.findViewById(R.id.option_icon);
        }
    }

    public class ProfileViewHolder extends ViewHolder {
        public final TextView mProfileEmail;
        public final TextView mProfileName;
        public final ImageView mProfilePic;
        public final View mView;

        public ProfileViewHolder(View view) {
            super(view);
            this.mView = view;
            this.mProfilePic = (ImageView) view.findViewById(R.id.drawer_profile_picture);
            this.mProfileName = (TextView) view.findViewById(R.id.drawer_profile_name);
            this.mProfileEmail = (TextView) view.findViewById(R.id.drawer_profile_email);
        }
    }
}
