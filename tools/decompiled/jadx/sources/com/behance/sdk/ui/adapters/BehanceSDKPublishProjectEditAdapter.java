package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.project.modules.EmbedModule;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.project.modules.ProjectModule;
import com.behance.sdk.project.modules.ProjectModuleTypes;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectEditAdapter extends ArrayAdapter<ProjectModule> {
    private Callbacks callback;
    private LayoutInflater layoutInflater;

    /* JADX INFO: loaded from: classes2.dex */
    public interface Callbacks {
        void onRotate(ImageModule imageModule);
    }

    public BehanceSDKPublishProjectEditAdapter(Context context, int i, List<ProjectModule> list) {
        super(context, i, list);
        this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        ProjectModule item = getItem(i);
        if (view == null) {
            view = this.layoutInflater.inflate(R.layout.bsdk_adapter_publish_project_edit_fragment_grid_item, viewGroup, false);
        }
        final ImageView imageView = (ImageView) view.findViewById(R.id.add_project_edit_fragment_image_view);
        final ImageView imageView2 = (ImageView) view.findViewById(R.id.add_project_edit_fragment_image_view_duplicate);
        View viewFindViewById = view.findViewById(R.id.add_project_edit_fragment_embed_view);
        final View viewFindViewById2 = view.findViewById(R.id.add_project_edit_fragment_rotate_icon);
        ProjectModuleTypes type = item.getType();
        if (ProjectModuleTypes.IMAGE.equals(type) || ProjectModuleTypes.CREATIVECLOUD_ASSET.equals(type)) {
            final ImageModule imageModule = (ImageModule) item;
            final Context context = getContext();
            viewFindViewById.setVisibility(8);
            imageView.setVisibility(0);
            viewFindViewById2.setVisibility(0);
            imageView.setImageBitmap(imageModule.getThumbNail(context));
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKPublishProjectEditAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(context, R.anim.bsdk_fade_in));
                    imageView2.setImageBitmap(imageModule.getThumbNail(context));
                    imageView2.setVisibility(0);
                    imageView.setVisibility(4);
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, R.anim.bsdk_thumbail_rotate);
                    animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKPublishProjectEditAdapter.1.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            if (BehanceSDKPublishProjectEditAdapter.this.callback != null) {
                                BehanceSDKPublishProjectEditAdapter.this.callback.onRotate((ImageModule) BehanceSDKPublishProjectEditAdapter.this.getItem(i));
                                imageView.setImageBitmap(imageModule.getThumbNail(context));
                                imageView.setVisibility(0);
                                imageView2.setVisibility(4);
                                imageView2.setImageBitmap(null);
                            }
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }
                    });
                    imageView2.startAnimation(animationLoadAnimation);
                }
            });
        } else if (ProjectModuleTypes.EMBED.equals(type)) {
            imageView.setVisibility(8);
            viewFindViewById.setVisibility(0);
            viewFindViewById2.setVisibility(8);
            ((TextView) viewFindViewById.findViewById(R.id.bsdkPublishProjectEditFragmentEmbedDesc)).setText(((EmbedModule) item).getDescription());
        }
        return view;
    }

    public void setCallBack(Callbacks callbacks) {
        this.callback = callbacks;
    }
}
