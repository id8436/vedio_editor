.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKProjectInfoDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTIVE_PROJECT:Ljava/lang/String; = "active_project"

.field private static final DATE_DISPLAY_FORMAT:Ljava/lang/String; = "MM/dd/yy"


# instance fields
.field private copyrightTxtView:Landroid/widget/TextView;

.field displayDateFormat:Ljava/text/SimpleDateFormat;

.field private mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

.field private projectCopyrightParentContainer:Landroid/widget/LinearLayout;

.field private projectInfoDialogProjectInfoView:Landroid/view/View;

.field private projectTagsOverFlowContainer:Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;

.field private projectToolsContainer:Landroid/widget/LinearLayout;

.field private projectToolsThumbnailContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd/yy"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->displayDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->handleTagClick(Ljava/lang/String;)V

    return-void
.end method

.method private handleReportSpam()V
    .locals 5

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    const-string/jumbo v2, "mailto"

    const-string/jumbo v3, "mobilereport@behancenetwork.zendesk.com"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_info_dialog_report_project_spam_email_subject:I

    invoke-virtual {p0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_info_dialog_report_project_spam_chooser_title:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private handleTagClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://www.behance.net/search?content=project&sort=featured_date&time=week&search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->launchUrlIntent(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private launchUrlIntent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method private populateCopyright()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 233
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getCopyright()Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->getDisplayNameResourceId()I

    move-result v1

    .line 236
    if-lez v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->copyrightTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;->getLicenseDescription()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    const-string/jumbo v1, "-"

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->copyrightTxtView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectCopyrightParentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectCopyrightParentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private populateProjectTagsList(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getTags()Ljava/util/List;

    move-result-object v4

    .line 139
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<b><font color=#595959>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_info_dialog_tags_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</font></b> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 141
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 142
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "<a href=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\' style=\'text-decoration: none\'>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "</a>, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "<a href=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\' style=\'text-decoration: none\'>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 153
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 154
    invoke-virtual {p0, v1, v4}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->makeLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 160
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 161
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 162
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectTagsOverFlowContainer:Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->addView(Landroid/view/View;)V

    .line 164
    :cond_2
    return-void
.end method

.method private populateTools()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 211
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getTools()Ljava/util/List;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;

    .line 215
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_project_info_tool_view:I

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectToolsThumbnailContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/d;

    .line 217
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectToolsThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/imagepipeline/l/d;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/facebook/imagepipeline/l/d;->a(Z)Lcom/facebook/imagepipeline/l/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/l/d;->n()Lcom/facebook/imagepipeline/l/a;

    move-result-object v2

    .line 219
    invoke-static {}, Lcom/facebook/drawee/a/a/c;->a()Lcom/facebook/drawee/a/a/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/facebook/drawee/a/a/f;->b(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/a/a/f;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/d;->getController()Lcom/facebook/drawee/h/a;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/drawee/a/a/f;->a(Lcom/facebook/drawee/h/a;)Lcom/facebook/drawee/c/d;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/a/a/f;

    invoke-virtual {v2}, Lcom/facebook/drawee/a/a/f;->k()Lcom/facebook/drawee/c/a;

    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/d;->setController(Lcom/facebook/drawee/h/a;)V

    .line 221
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/d;->setTag(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v1, p0}, Lcom/facebook/drawee/view/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectToolsThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectToolsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    :cond_2
    :goto_1
    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectToolsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected makeLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 5

    .prologue
    .line 187
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 188
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 189
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 190
    new-instance v3, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment$CustomClickableSpan;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment$CustomClickableSpan;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 192
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 267
    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogReportSpam:I

    if-ne v0, v1, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->handleReportSpam()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkprojectInfoDialogTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->setStyle(II)V

    .line 60
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 73
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    const-string/jumbo v2, "frag_num"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HEADLESS_FRAGMENT_TAG_GET_PROJECT_DETAILS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "frag_num"

    .line 80
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    .line 87
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_info_dialog_problem_loading_project_info:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->dismiss()V

    .line 94
    :cond_1
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_project_info:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogProjectPublishedDateTxtView:I

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getCreatedDate()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 100
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->displayDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogProjectLastEditedDateTxtView:I

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getModifiedDate()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 104
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->displayDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogProjectAboutOverFlowContainer:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;

    .line 109
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<b><font color=#595959>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$string;->bsdk_project_info_dialog_title_about:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</font></b> <font color=#626365>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 111
    invoke-virtual {v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogProjectTagOverFlowContainer:I

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectTagsOverFlowContainer:Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;

    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->populateProjectTagsList(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogToolsContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectToolsContainer:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkprojectInfoDialogToolsThumbnailContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectToolsThumbnailContainer:Landroid/widget/LinearLayout;

    .line 123
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->populateTools()V

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogCopyrightContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectCopyrightParentContainer:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogProjectCopyrightTxtView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->copyrightTxtView:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->populateCopyright()V

    .line 131
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectInfoDialogReportSpam:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->projectInfoDialogProjectInfoView:Landroid/view/View;

    return-object v0

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "HEADLESS_FRAGMENT_TAG_GET_PROJECT_DETAILS"

    .line 83
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    goto/16 :goto_0

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "HEADLESS_FRAGMENT_TAG_GET_PROJECT_DETAILS"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 261
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 262
    return-void
.end method
