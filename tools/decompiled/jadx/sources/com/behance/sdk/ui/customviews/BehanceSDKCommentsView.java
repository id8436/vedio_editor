package com.behance.sdk.ui.customviews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.dto.project.BehanceSDKAbstractCommentDTO;
import com.behance.sdk.dto.search.BehanceSDKImageDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.util.BehanceSDKImageLoaderUtils;
import com.i.a.b.d;
import com.i.a.b.g;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCommentsView extends LinearLayout implements MenuItem.OnMenuItemClickListener, View.OnClickListener, View.OnCreateContextMenuListener {
    private Callbacks callbacks;
    private BehanceSDKAbstractCommentDTO contextMenuActiveCommentDTO;
    private View contextMenuActiveCommentView;
    private ILogger logger;
    private g mloader;
    private d options;
    private boolean ownedByUser;

    public interface Callbacks {
        void onDeleteCommentRequested(BehanceSDKAbstractCommentDTO behanceSDKAbstractCommentDTO);
    }

    public BehanceSDKCommentsView(Context context) {
        super(context);
        this.logger = LoggerFactory.getLogger(BehanceSDKCommentsView.class);
        this.ownedByUser = false;
        initialize();
    }

    public BehanceSDKCommentsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.logger = LoggerFactory.getLogger(BehanceSDKCommentsView.class);
        this.ownedByUser = false;
        initialize();
    }

    public BehanceSDKCommentsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.logger = LoggerFactory.getLogger(BehanceSDKCommentsView.class);
        this.ownedByUser = false;
        initialize();
    }

    private void initialize() {
        this.mloader = g.a();
        this.options = BehanceSDKImageLoaderUtils.getDefaultImageLoaderOptions();
        setOrientation(1);
    }

    public void displayCommentsInLayout(List<? extends BehanceSDKAbstractCommentDTO> list, BehanceSDKUserDTO behanceSDKUserDTO, Callbacks callbacks) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(behanceSDKUserDTO);
        displayCommentsInLayout(list, arrayList, callbacks);
    }

    public void displayCommentsInLayout(List<? extends BehanceSDKAbstractCommentDTO> list, List<BehanceSDKUserDTO> list2, Callbacks callbacks) {
        this.callbacks = callbacks;
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        final ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<BehanceSDKUserDTO> it = list2.iterator();
        while (it.hasNext()) {
            hashSet.add(Integer.valueOf(it.next().getId()));
        }
        Iterator<? extends BehanceSDKAbstractCommentDTO> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(createCommentView(layoutInflater, hashSet, it2.next()));
        }
        post(new Runnable() { // from class: com.behance.sdk.ui.customviews.BehanceSDKCommentsView.1
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKCommentsView.this.clearComments();
                LinearLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = BehanceSDKCommentsView.this.generateDefaultLayoutParams();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    BehanceSDKCommentsView.this.addViewInLayout((View) it3.next(), -1, layoutParamsGenerateDefaultLayoutParams, true);
                }
                arrayList.clear();
                BehanceSDKCommentsView.this.setVisibility(0);
                BehanceSDKCommentsView.this.requestLayout();
            }
        });
    }

    private View createCommentView(LayoutInflater layoutInflater, Set<Integer> set, BehanceSDKAbstractCommentDTO behanceSDKAbstractCommentDTO) {
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_view_comments_comment_item_adapter, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.bsdk_commentViewUserNameTxtView);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.bsdk_commentViewCommentContentTxtView);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.bsdk_commentViewCommentDateTxtView);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.bsdk_commentViewUserImageView);
        viewInflate.setOnCreateContextMenuListener(this);
        viewInflate.setTag(behanceSDKAbstractCommentDTO);
        BehanceSDKUserDTO userDTO = BehanceSDKUserManager.getInstance().getUserDTO();
        if (userDTO != null) {
            this.ownedByUser = set.contains(Integer.valueOf(userDTO.getId()));
        }
        BehanceSDKUserDTO user = behanceSDKAbstractCommentDTO.getUser();
        if (user != null) {
            imageView.setOnClickListener(this);
            imageView.setTag(user);
            textView.setOnClickListener(this);
            textView.setTag(user);
            textView.setText(user.getDisplayName());
            BehanceSDKImageDTO behanceSDKImageDTOFindProfileImageInIncreasingSizeOrder = user.findProfileImageInIncreasingSizeOrder(50);
            if (behanceSDKImageDTOFindProfileImageInIncreasingSizeOrder != null) {
                this.mloader.a(behanceSDKImageDTOFindProfileImageInIncreasingSizeOrder.getUrl(), imageView, this.options);
            }
        }
        textView3.setText(getFormattedDate(behanceSDKAbstractCommentDTO.getCreatedDate()));
        String content = behanceSDKAbstractCommentDTO.getContent();
        if (content != null) {
            textView2.setText(content.trim());
        }
        return viewInflate;
    }

    public void addCommentsToLayout(List<? extends BehanceSDKAbstractCommentDTO> list, List<BehanceSDKUserDTO> list2, Callbacks callbacks) {
        this.callbacks = callbacks;
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        final ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<BehanceSDKUserDTO> it = list2.iterator();
        while (it.hasNext()) {
            hashSet.add(Integer.valueOf(it.next().getId()));
        }
        Iterator<? extends BehanceSDKAbstractCommentDTO> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(createCommentView(layoutInflater, hashSet, it2.next()));
        }
        post(new Runnable() { // from class: com.behance.sdk.ui.customviews.BehanceSDKCommentsView.2
            @Override // java.lang.Runnable
            public void run() {
                LinearLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = BehanceSDKCommentsView.this.generateDefaultLayoutParams();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    BehanceSDKCommentsView.this.addViewInLayout((View) it3.next(), -1, layoutParamsGenerateDefaultLayoutParams, true);
                }
                arrayList.clear();
                BehanceSDKCommentsView.this.setVisibility(0);
                BehanceSDKCommentsView.this.requestLayout();
            }
        });
    }

    public void clearComments() {
        removeAllViews();
    }

    private CharSequence getFormattedDate(long j) {
        String string = getResources().getString(R.string.bsdk_wip_details_view_posted_on_date_format);
        Locale locale = getResources().getConfiguration().locale;
        if (string == null) {
            string = new String("MMM d 'at' hh:mm aaa");
        }
        if (locale == null) {
            locale = Locale.ENGLISH;
        }
        try {
            return new SimpleDateFormat(string, locale).format(Long.valueOf(j * 1000));
        } catch (IllegalArgumentException e2) {
            try {
                return new SimpleDateFormat(new String("MMM d hh:mm aaa"), locale).format(Long.valueOf(j * 1000));
            } catch (IllegalArgumentException e3) {
                this.logger.error(e2, "Comments View date formatting error with locale %s", locale);
                return null;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getTag() instanceof BehanceSDKUserDTO) {
        }
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        BehanceSDKAbstractCommentDTO behanceSDKAbstractCommentDTO;
        BehanceSDKUserDTO user;
        BehanceSDKUserManager behanceSDKUserManager = BehanceSDKUserManager.getInstance();
        BehanceSDKUserDTO userDTO = behanceSDKUserManager.getUserDTO();
        if (userDTO == null || !behanceSDKUserManager.isUserLoggedIn() || userDTO == null || this.callbacks == null || !(view.getTag() instanceof BehanceSDKAbstractCommentDTO) || (user = (behanceSDKAbstractCommentDTO = (BehanceSDKAbstractCommentDTO) view.getTag()).getUser()) == null) {
            return;
        }
        if (user.getId() == userDTO.getId() || this.ownedByUser) {
            this.contextMenuActiveCommentDTO = behanceSDKAbstractCommentDTO;
            this.contextMenuActiveCommentView = view;
            contextMenu.add(1, 1, 0, getResources().getString(R.string.bsdk_menu_item_label_delete_comment)).setOnMenuItemClickListener(this);
        }
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (this.contextMenuActiveCommentDTO != null && this.contextMenuActiveCommentView != null && this.callbacks != null) {
            this.callbacks.onDeleteCommentRequested(this.contextMenuActiveCommentDTO);
            removeView(this.contextMenuActiveCommentView);
        }
        this.contextMenuActiveCommentDTO = null;
        this.contextMenuActiveCommentView = null;
        return true;
    }
}
