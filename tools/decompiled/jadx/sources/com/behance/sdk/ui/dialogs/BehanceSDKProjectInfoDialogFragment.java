package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.dto.project.BehanceSDKProjectCopyrightDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectToolDTO;
import com.behance.sdk.fragments.headless.BehanceSDKGetProjectDetailsHeadlessFragment;
import com.behance.sdk.ui.components.BehanceSDKOverFlowLayout;
import com.behance.sdk.util.BehanceSDKConstants;
import com.facebook.drawee.a.a.c;
import com.facebook.drawee.view.d;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectInfoDialogFragment extends DialogFragment implements View.OnClickListener {
    public static final String ACTIVE_PROJECT = "active_project";
    private static final String DATE_DISPLAY_FORMAT = "MM/dd/yy";
    private TextView copyrightTxtView;
    SimpleDateFormat displayDateFormat = new SimpleDateFormat(DATE_DISPLAY_FORMAT, Locale.ENGLISH);
    private BehanceSDKProjectDTO mActiveProject;
    private LinearLayout projectCopyrightParentContainer;
    private View projectInfoDialogProjectInfoView;
    private BehanceSDKOverFlowLayout projectTagsOverFlowContainer;
    private LinearLayout projectToolsContainer;
    private LinearLayout projectToolsThumbnailContainer;

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkprojectInfoDialogTheme);
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.requestWindowFeature(1);
        dialogOnCreateDialog.setCanceledOnTouchOutside(true);
        return dialogOnCreateDialog;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        BehanceSDKGetProjectDetailsHeadlessFragment behanceSDKGetProjectDetailsHeadlessFragment;
        LayoutInflater layoutInflater2 = getActivity().getLayoutInflater();
        if (getActivity() != null) {
            Bundle arguments = getArguments();
            if (arguments != null && arguments.containsKey("frag_num")) {
                behanceSDKGetProjectDetailsHeadlessFragment = (BehanceSDKGetProjectDetailsHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.GET_PROJECT_DETAILS + arguments.getInt("frag_num"));
            } else {
                behanceSDKGetProjectDetailsHeadlessFragment = (BehanceSDKGetProjectDetailsHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.GET_PROJECT_DETAILS);
            }
            if (behanceSDKGetProjectDetailsHeadlessFragment != null) {
                this.mActiveProject = behanceSDKGetProjectDetailsHeadlessFragment.getActiveProject();
            }
            if (this.mActiveProject == null) {
                Toast.makeText(getActivity(), R.string.bsdk_project_info_dialog_problem_loading_project_info, 0).show();
                dismiss();
            }
            this.projectInfoDialogProjectInfoView = layoutInflater2.inflate(R.layout.bsdk_dialog_fragment_project_info, (ViewGroup) null);
            ((TextView) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdk_projectInfoDialogProjectPublishedDateTxtView)).setText(this.displayDateFormat.format(new Date(this.mActiveProject.getCreatedDate() * 1000)));
            ((TextView) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdk_projectInfoDialogProjectLastEditedDateTxtView)).setText(this.displayDateFormat.format(new Date(this.mActiveProject.getModifiedDate() * 1000)));
            BehanceSDKOverFlowLayout behanceSDKOverFlowLayout = (BehanceSDKOverFlowLayout) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdk_projectInfoDialogProjectAboutOverFlowContainer);
            TextView textView = new TextView(getActivity());
            textView.setText(Html.fromHtml("<b><font color=#595959>" + getResources().getString(R.string.bsdk_project_info_dialog_title_about) + "</font></b> <font color=#626365>" + this.mActiveProject.getDescription() + "</font>"));
            textView.setLineSpacing(1.0f, 1.1f);
            behanceSDKOverFlowLayout.addView(textView);
            this.projectTagsOverFlowContainer = (BehanceSDKOverFlowLayout) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdk_projectInfoDialogProjectTagOverFlowContainer);
            populateProjectTagsList(this.mActiveProject);
            this.projectToolsContainer = (LinearLayout) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdk_projectInfoDialogToolsContainer);
            this.projectToolsThumbnailContainer = (LinearLayout) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdkprojectInfoDialogToolsThumbnailContainer);
            populateTools();
            this.projectCopyrightParentContainer = (LinearLayout) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdk_projectInfoDialogCopyrightContainer);
            this.copyrightTxtView = (TextView) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdk_projectInfoDialogProjectCopyrightTxtView);
            populateCopyright();
            ((TextView) this.projectInfoDialogProjectInfoView.findViewById(R.id.bsdk_projectInfoDialogReportSpam)).setOnClickListener(this);
        }
        return this.projectInfoDialogProjectInfoView;
    }

    private void populateProjectTagsList(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        List<String> tags = behanceSDKProjectDTO.getTags();
        if (tags.size() > 0) {
            String str = "<b><font color=#595959>" + getResources().getString(R.string.bsdk_project_info_dialog_tags_text) + "</font></b> ";
            for (int i = 0; i < tags.size() - 1; i++) {
                String str2 = tags.get(i);
                str = str + "<a href='" + str2 + "' style='text-decoration: none'>" + str2 + "</a>, ";
            }
            String str3 = tags.get(tags.size() - 1);
            Spanned spannedFromHtml = Html.fromHtml(str + "<a href='" + str3 + "' style='text-decoration: none'>" + str3 + "</a>");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannedFromHtml);
            for (URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, spannedFromHtml.length(), URLSpan.class)) {
                makeLinkClickable(spannableStringBuilder, uRLSpan);
            }
            TextView textView = new TextView(getActivity());
            textView.setText(spannableStringBuilder);
            textView.setLinksClickable(true);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setLineSpacing(1.0f, 1.1f);
            this.projectTagsOverFlowContainer.addView(textView);
        }
    }

    class CustomClickableSpan extends ClickableSpan {
        String tag;

        public CustomClickableSpan(String str) {
            this.tag = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            BehanceSDKProjectInfoDialogFragment.this.handleTagClick(this.tag);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(false);
            textPaint.setColor(BehanceSDKProjectInfoDialogFragment.this.getResources().getColor(R.color.bsdk_behance_blue));
        }
    }

    protected void makeLinkClickable(SpannableStringBuilder spannableStringBuilder, URLSpan uRLSpan) {
        spannableStringBuilder.setSpan(new CustomClickableSpan(uRLSpan.getURL()), spannableStringBuilder.getSpanStart(uRLSpan), spannableStringBuilder.getSpanEnd(uRLSpan), spannableStringBuilder.getSpanFlags(uRLSpan));
        spannableStringBuilder.removeSpan(uRLSpan);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTagClick(String str) {
        launchUrlIntent("http://www.behance.net/search?content=project&sort=featured_date&time=week&search=" + str);
    }

    private void launchUrlIntent(String str) {
        if (str != null) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            dismiss();
        }
    }

    private void populateTools() {
        List<BehanceSDKProjectToolDTO> tools = this.mActiveProject.getTools();
        if (tools != null && tools.size() > 0) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(getActivity());
            for (BehanceSDKProjectToolDTO behanceSDKProjectToolDTO : tools) {
                if (behanceSDKProjectToolDTO.getIconUrl() != null) {
                    d dVar = (d) layoutInflaterFrom.inflate(R.layout.bsdk_adapter_project_info_tool_view, (ViewGroup) this.projectToolsThumbnailContainer, false);
                    this.projectToolsThumbnailContainer.addView(dVar);
                    dVar.setController(c.a().b(com.facebook.imagepipeline.l.d.a(Uri.parse(behanceSDKProjectToolDTO.getIconUrl())).a(true).n()).b(dVar.getController()).p());
                    dVar.setTag(behanceSDKProjectToolDTO.getUrl());
                    dVar.setOnClickListener(this);
                }
            }
            if (this.projectToolsThumbnailContainer.getChildCount() == 0) {
                this.projectToolsContainer.setVisibility(8);
                return;
            }
            return;
        }
        this.projectToolsContainer.setVisibility(8);
    }

    private void populateCopyright() {
        BehanceSDKProjectCopyrightDTO copyright = this.mActiveProject.getCopyright();
        if (copyright != null) {
            int displayNameResourceId = copyright.getDisplayNameResourceId();
            if (displayNameResourceId > 0) {
                this.copyrightTxtView.setText(displayNameResourceId);
                return;
            }
            String licenseDescription = copyright.getLicenseDescription();
            if (licenseDescription.length() > 0) {
                this.copyrightTxtView.setText(licenseDescription.replace("-", "  "));
                return;
            } else {
                this.projectCopyrightParentContainer.setVisibility(8);
                return;
            }
        }
        this.projectCopyrightParentContainer.setVisibility(8);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdk_projectInfoDialogReportSpam) {
            handleReportSpam();
        } else if (view.getTag() instanceof String) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse((String) view.getTag()));
            startActivity(intent);
        }
    }

    private void handleReportSpam() {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", BehanceSDKConstants.REPORT_PROJECT_SPAM_EMAIL_ID, null));
        intent.putExtra("android.intent.extra.SUBJECT", getString(R.string.bsdk_project_info_dialog_report_project_spam_email_subject));
        intent.putExtra("android.intent.extra.TEXT", this.mActiveProject.getProjectUrl());
        startActivity(Intent.createChooser(intent, getString(R.string.bsdk_project_info_dialog_report_project_spam_chooser_title)));
    }
}
