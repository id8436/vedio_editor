.class public Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BehanceSDKProjectDisplayWebChromeClient.java"


# static fields
.field public static EVENT_TYPE_ADD_TO_COLLECTION:Ljava/lang/String; = null

.field public static EVENT_TYPE_APPRECIATE_PROJECT:Ljava/lang/String; = null

.field public static EVENT_TYPE_FOLLOW_UNFOLLOW_USER:Ljava/lang/String; = null

.field private static final FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG:Ljava/lang/String; = "FRAGMENT_TAG_PROJECT_IMAGE_DISPLAY_DIALOG"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private callbacks:Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$Callbacks;

.field private mContext:Landroid/content/Context;

.field private projectImagesURLsArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "EVENT_TYPE_APPRECIATE_PROJECT"

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->EVENT_TYPE_APPRECIATE_PROJECT:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "EVENT_TYPE_FOLLOW_UNFOLLOW_USER"

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->EVENT_TYPE_FOLLOW_UNFOLLOW_USER:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "EVENT_TYPE_ADD_TO_COLLECTION"

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->EVENT_TYPE_ADD_TO_COLLECTION:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private displayCannotPlayMediaMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_cwcc_player_not_found_ok_btn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$1;-><init>(Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_ed_error_dialog_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 130
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->projectImagesURLsArray:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->getInstance([Ljava/lang/String;I)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;

    move-result-object v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "FRAGMENT_TAG_PROJECT_IMAGE_DISPLAY_DIALOG"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    :cond_0
    const-string/jumbo v0, "FRAGMENT_TAG_PROJECT_IMAGE_DISPLAY_DIALOG"

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->callbacks:Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$Callbacks;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->callbacks:Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$Callbacks;

    invoke-interface {v0}, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$Callbacks;->onChromeClientProjectModuleClicked()V

    .line 108
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->EVENT_TYPE_ADD_TO_COLLECTION:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->callbacks:Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$Callbacks;

    invoke-interface {v0}, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$Callbacks;->onChromeClientAddToCollectionClicked()V

    .line 113
    :cond_2
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 114
    const/4 v0, 0x1

    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    sget-object v1, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Can\'t get fragment manager from context "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_3
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->EMBED:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->EMBED:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/behance/sdk/R$string;->bsdk_cwcc_chooser_title_embed_module:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_4
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v2, "video/x-flv"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "video/x-flv"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_cwcc_chooser_title_video_module:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_cwcc_video_player_not_found_msg_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_cwcc_video_player_not_found_msg_body:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-direct {p0, v0, v1, v2}, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->displayCannotPlayMediaMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setCallbacks(Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$Callbacks;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->callbacks:Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient$Callbacks;

    .line 54
    return-void
.end method

.method public setProjectImagesURLs([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectDisplayWebChromeClient;->projectImagesURLsArray:[Ljava/lang/String;

    .line 58
    return-void
.end method
