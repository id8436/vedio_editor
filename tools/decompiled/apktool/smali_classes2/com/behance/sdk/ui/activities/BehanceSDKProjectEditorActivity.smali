.class public Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BehanceSDKProjectEditorActivity.java"

# interfaces
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;
.implements Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;
.implements Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;


# static fields
.field private static final BUNDLE_EXTRA_CURRENT_FRAGMENT:Ljava/lang/String; = "BUNDLE_EXTRA_CURRENT_FRAGMENT"

.field private static final FRAGMENT_CONTENT:I = 0x0

.field private static final FRAGMENT_COVER:I = 0x1

.field private static final FRAGMENT_NONE:I = -0x1

.field private static final FRAGMENT_SETTINGS:I = 0x2

.field public static final FRAGMENT_TAG_CONTENT:Ljava/lang/String; = "FRAGMENT_TAG_CONTENT"

.field public static final FRAGMENT_TAG_COVER:Ljava/lang/String; = "FRAGMENT_TAG_COVER"

.field public static final FRAGMENT_TAG_REORDER:Ljava/lang/String; = "FRAGMENT_TAG_REORDER"

.field public static final FRAGMENT_TAG_SETTINGS:Ljava/lang/String; = "FRAGMENT_TAG_SETTINGS"

.field public static final INTENT_EXTRA_PARAMS:Ljava/lang/String; = "INTENT_EXTRA_PARAMS"


# instance fields
.field private activityProjectEditorContentFrame:Landroid/widget/FrameLayout;

.field private activityProjectEditorDone:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private activityProjectEditorPublish:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private activityProjectEditorToolbar:Landroid/support/v7/widget/Toolbar;

.field private activityProjectEditorToolbarTitle:Landroid/widget/ViewFlipper;

.field private currentFragment:I

.field private editorService:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

.field private mConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    .line 335
    new-instance v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$8;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->setTextEditHeaderVisibility(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    return v0
.end method

.method static synthetic access$202(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    return p1
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->stopServiceAndFinish()V

    return-void
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->editorService:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->editorService:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorContentFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private confirmAndClose()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->stopServiceAndFinish()V

    .line 308
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    new-instance v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$7;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$7;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V

    .line 301
    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_editor_dialog_close_save:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 302
    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_editor_dialog_close_discard:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 303
    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_editor_dialog_close_cancel:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 304
    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_dialog_close_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 305
    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_dialog_close_message:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private fixButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 210
    iget v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbarTitle:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 212
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorDone:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorPublish:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    if-ne v0, v3, :cond_2

    .line 217
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbarTitle:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 218
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorDone:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorPublish:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_2
    iget v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    if-ne v0, v4, :cond_0

    .line 223
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbarTitle:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 224
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorDone:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorPublish:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_0

    .line 236
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;-><init>()V

    goto :goto_0

    .line 234
    :pswitch_1
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;-><init>()V

    goto :goto_0

    .line 235
    :pswitch_2
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;-><init>()V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTag(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    packed-switch p1, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    const-string/jumbo v0, "FRAGMENT_TAG_CONTENT"

    goto :goto_0

    .line 243
    :pswitch_1
    const-string/jumbo v0, "FRAGMENT_TAG_COVER"

    goto :goto_0

    .line 244
    :pswitch_2
    const-string/jumbo v0, "FRAGMENT_TAG_SETTINGS"

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/behance/sdk/R$id;->activity_project_editor_content_frame:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorContentFrame:Landroid/widget/FrameLayout;

    .line 70
    sget v0, Lcom/behance/sdk/R$id;->activity_project_editor_toolbar:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbar:Landroid/support/v7/widget/Toolbar;

    .line 71
    sget v0, Lcom/behance/sdk/R$id;->activity_project_editor_toolbar_title:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbarTitle:Landroid/widget/ViewFlipper;

    .line 72
    sget v0, Lcom/behance/sdk/R$id;->activity_project_editor_done:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorDone:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 73
    sget v0, Lcom/behance/sdk/R$id;->activity_project_editor_next:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 74
    sget v0, Lcom/behance/sdk/R$id;->activity_project_editor_publish:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorPublish:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 75
    sget v0, Lcom/behance/sdk/R$id;->activity_project_editor_reorder:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 76
    return-void
.end method

.method private setTextEditHeaderVisibility(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 392
    if-eqz p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorDone:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->fixButtons()V

    goto :goto_0
.end method

.method private stopServiceAndFinish()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->editorService:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->editorService:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-virtual {v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->stopSelf()V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->finish()V

    .line 277
    return-void
.end method


# virtual methods
.method public getServiceInstance()Lcom/behance/sdk/services/BehanceSDKProjectEditorService;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->editorService:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    return-object v0
.end method

.method protected nextFragment(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 183
    iget v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    if-ne v0, v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    if-ne v0, v1, :cond_3

    .line 186
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v3, "FRAGMENT_TAG_COVER"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->cropAndSave()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 188
    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCoverChosen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 189
    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    :cond_3
    iget v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    iput v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    .line 195
    if-eqz p1, :cond_5

    .line 196
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$anim;->bsdk_slide_in_from_right:I

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_slide_out_to_left:I

    sget v3, Lcom/behance/sdk/R$anim;->bsdk_slide_in_from_left:I

    sget v4, Lcom/behance/sdk/R$anim;->bsdk_slide_out_to_right:I

    .line 197
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorContentFrame:Landroid/widget/FrameLayout;

    .line 199
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    invoke-direct {p0, v3}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 206
    :goto_2
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->fixButtons()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 193
    goto :goto_1

    .line 203
    :cond_5
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    if-lez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->nextFragment(Z)V

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->confirmAndClose()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_project_editor:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->initView()V

    .line 85
    :try_start_0
    invoke-static {p0}, Lcom/behance/sdk/util/BehanceSDKFileUtils;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/behance/sdk/exception/BehanceSDKFileUtilsInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 93
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    const-string/jumbo v2, "FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 95
    new-instance v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$1;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V

    invoke-static {p0, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->prepTextEditor(Landroid/content/Context;Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;)V

    .line 110
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 112
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 114
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_back:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 115
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$2;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    new-instance v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$3;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    new-instance v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$4;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$4;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorPublish:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    new-instance v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$5;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$5;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorDone:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    new-instance v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$6;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    if-eqz p1, :cond_1

    const-string/jumbo v0, "BUNDLE_EXTRA_CURRENT_FRAGMENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INTENT_EXTRA_PARAMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INTENT_EXTRA_PARAMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;

    .line 158
    invoke-virtual {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 159
    iput v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    .line 160
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    invoke-direct {p0, v3}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iget v4, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    invoke-direct {p0, v4}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getTag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 161
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setProjectDetailsFromParams(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)V

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->onModuleCountChanged(I)V

    .line 175
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isPublishEligible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->onPublishEligibilityChanged(Z)V

    .line 176
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Lcom/behance/sdk/exception/BehanceSDKFileUtilsInitializationException;->printStackTrace()V

    goto/16 :goto_0

    .line 163
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    goto :goto_1

    .line 166
    :cond_3
    iput v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    .line 167
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    invoke-direct {p0, v3}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 170
    :cond_4
    const-string/jumbo v0, "BUNDLE_EXTRA_CURRENT_FRAGMENT"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    .line 171
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->fixButtons()V

    goto :goto_1
.end method

.method public onEmbedTransformFailed(I)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public onFileUploadFailed(I)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public onModuleCountChanged(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorNext:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorReorder:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    if-lez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setEnabled(Z)V

    .line 253
    return-void

    :cond_0
    move v0, v2

    .line 251
    goto :goto_0

    :cond_1
    move v1, v2

    .line 252
    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 332
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 333
    return-void
.end method

.method public onProjectLoaded(Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;)V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$9;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method public onPublishEligibilityChanged(Z)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorPublish:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setEnabled(Z)V

    .line 263
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 323
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 326
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 327
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    const-string/jumbo v0, "BUNDLE_EXTRA_CURRENT_FRAGMENT"

    iget v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->currentFragment:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    return-void
.end method

.method public onTextEditorActive()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->setTextEditHeaderVisibility(Z)V

    .line 384
    return-void
.end method

.method public onTextEditorInActive()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->setTextEditHeaderVisibility(Z)V

    .line 389
    return-void
.end method

.method public setToolbarShadow(Z)V
    .locals 2

    .prologue
    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTranslationZ(F)V

    .line 319
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->activityProjectEditorToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getElevation()F

    move-result v0

    neg-float v0, v0

    goto :goto_0
.end method
