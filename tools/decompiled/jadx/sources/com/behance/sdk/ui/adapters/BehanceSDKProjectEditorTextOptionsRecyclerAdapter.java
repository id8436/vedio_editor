package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextFont;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextStyle;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorStyleItemViewHolder;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKProjectEditorStyleNumberPickerViewHolder;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorTextOptionsRecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final int MAX_TEXT_SIZE = 75;
    private static final int MIN_TEXT_SIZE = 9;
    private StyleCallbacks callbacks;
    private Context context;
    private int currentTextSize;
    private BehanceSDKProjectEditorTextFont selectedFont;
    private BehanceSDKProjectEditorTextStyle selectedStyle;

    public interface StyleCallbacks {
        void onFontsClick(BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont);

        void onStylesClick(BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle);

        void onTextSizeChanged(int i);
    }

    public BehanceSDKProjectEditorTextOptionsRecyclerAdapter(Context context, BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont, BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle, int i, StyleCallbacks styleCallbacks) {
        this.context = context;
        this.callbacks = styleCallbacks;
        this.currentTextSize = i;
        this.selectedFont = behanceSDKProjectEditorTextFont;
        this.selectedStyle = behanceSDKProjectEditorTextStyle;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new BehanceSDKProjectEditorStyleNumberPickerViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_style_number_picker, viewGroup, false));
            default:
                return new BehanceSDKProjectEditorStyleItemViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_project_editor_style_base, viewGroup, false));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        switch (i) {
            case 0:
                BehanceSDKProjectEditorStyleItemViewHolder behanceSDKProjectEditorStyleItemViewHolder = (BehanceSDKProjectEditorStyleItemViewHolder) viewHolder;
                if (this.selectedFont != null) {
                    behanceSDKProjectEditorStyleItemViewHolder.bsdkCardProjectEditorStyleTextRight.setText(this.selectedFont.getDisplayStringResource());
                }
                behanceSDKProjectEditorStyleItemViewHolder.bsdkCardProjectEditorStyleTextLeft.setText(R.string.bsdk_project_editor_label_font);
                behanceSDKProjectEditorStyleItemViewHolder.bsdkCardProjectEditorStyleContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.callbacks.onFontsClick(BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.selectedFont);
                    }
                });
                break;
            case 1:
                final BehanceSDKProjectEditorStyleNumberPickerViewHolder behanceSDKProjectEditorStyleNumberPickerViewHolder = (BehanceSDKProjectEditorStyleNumberPickerViewHolder) viewHolder;
                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerText.setText(R.string.bsdk_project_editor_label_size);
                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerCount.setNumber(this.currentTextSize);
                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerUp.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize < 75 && behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerCount.increment()) {
                            BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize++;
                            BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.callbacks.onTextSizeChanged(BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize);
                        }
                    }
                });
                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerDown.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize > 9 && behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerCount.decrement()) {
                            BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize--;
                            BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.callbacks.onTextSizeChanged(BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize);
                        }
                    }
                });
                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerCount.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerCount.setVisibility(4);
                        behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerUp.setVisibility(4);
                        behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerDown.setVisibility(4);
                        behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.setVisibility(0);
                        behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.setText(String.valueOf(BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize));
                        behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.setSelection(behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.getText().length());
                        behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.requestFocus();
                        ((InputMethodManager) BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.context.getSystemService("input_method")).toggleSoftInputFromWindow(behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.getWindowToken(), 2, 0);
                        behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.4.1
                            @Override // android.widget.TextView.OnEditorActionListener
                            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                                if (i2 != 6) {
                                    return false;
                                }
                                if (behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.getText().length() > 0) {
                                    BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize = Math.max(9, Math.min(75, Integer.parseInt(behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.getText().toString())));
                                }
                                BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.callbacks.onTextSizeChanged(BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize);
                                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerCount.setNumber(BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.currentTextSize);
                                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerCount.setVisibility(0);
                                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerUp.setVisibility(0);
                                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerDown.setVisibility(0);
                                behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.setVisibility(4);
                                ((InputMethodManager) BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.context.getSystemService("input_method")).hideSoftInputFromWindow(behanceSDKProjectEditorStyleNumberPickerViewHolder.bsdkCardProjectEditorStyleNumberPickerInput.getWindowToken(), 0);
                                return true;
                            }
                        });
                    }
                });
                break;
            case 2:
                BehanceSDKProjectEditorStyleItemViewHolder behanceSDKProjectEditorStyleItemViewHolder2 = (BehanceSDKProjectEditorStyleItemViewHolder) viewHolder;
                if (this.selectedStyle != null) {
                    behanceSDKProjectEditorStyleItemViewHolder2.bsdkCardProjectEditorStyleTextRight.setText(this.selectedStyle.getDisplayStringResource());
                }
                behanceSDKProjectEditorStyleItemViewHolder2.bsdkCardProjectEditorStyleTextLeft.setText(R.string.bsdk_project_editor_label_style);
                behanceSDKProjectEditorStyleItemViewHolder2.bsdkCardProjectEditorStyleContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.callbacks.onStylesClick(BehanceSDKProjectEditorTextOptionsRecyclerAdapter.this.selectedStyle);
                    }
                });
                break;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i != 1 ? 0 : 1;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 3;
    }

    public void setSelectedFont(BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont) {
        this.selectedFont = behanceSDKProjectEditorTextFont;
        notifyItemChanged(0);
    }

    public void setSelectedStyle(BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle) {
        this.selectedStyle = behanceSDKProjectEditorTextStyle;
        notifyItemChanged(2);
    }
}
