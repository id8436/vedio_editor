.class public Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BehanceSDKPublishResultsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final INTENT_STRING_EXTRA_IMAGE_URL:Ljava/lang/String; = "INTENT_STRING_EXTRA_IMAGE_URL"

.field public static final INTENT_STRING_EXTRA_WORK_URL:Ljava/lang/String; = "INTENT_STRING_EXTRA_WORK_URL"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private behanceSDK:Lcom/behance/sdk/BehanceSDK;

.field private workUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 49
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    return-void
.end method

.method private closeThisView()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->finish()V

    .line 117
    return-void
.end method

.method private dispatchViewWorkUrlIntent()V
    .locals 6

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->workUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->workUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->closeThisView()V

    .line 113
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v1, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem launching URL. [Url - %s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->workUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishResultsTitlebarBackBtnImageView:I

    if-ne v0, v1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->closeThisView()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishResultsBehanceBtn:I

    if-eq v0, v1, :cond_2

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishResultsUrlTxtView:I

    if-eq v0, v1, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishResultsWorkImageView:I

    if-ne v0, v1, :cond_0

    .line 99
    :cond_2
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->dispatchViewWorkUrlIntent()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_publish_results:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->setContentView(I)V

    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getPhoneOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->setRequestedOrientation(I)V

    .line 61
    :cond_0
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/i/a/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-static {p0}, Lcom/i/a/b/j;->a(Landroid/content/Context;)Lcom/i/a/b/j;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/i/a/b/g;->a(Lcom/i/a/b/j;)V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "INTENT_STRING_EXTRA_WORK_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->workUrl:Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "INTENT_STRING_EXTRA_IMAGE_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishResultsTitlebarBackBtnImageView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishResultsUrlTxtView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->workUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->workUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishResultsWorkImageView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    if-eqz v1, :cond_3

    .line 82
    new-instance v2, Lcom/i/a/b/f;

    invoke-direct {v2}, Lcom/i/a/b/f;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/i/a/b/f;->b(Z)Lcom/i/a/b/f;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/i/a/b/f;->a(Z)Lcom/i/a/b/f;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/i/a/b/f;->c(Z)Lcom/i/a/b/f;

    move-result-object v2

    const v3, 0x1080078

    .line 83
    invoke-virtual {v2, v3}, Lcom/i/a/b/f;->a(I)Lcom/i/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/i/a/b/f;->a()Lcom/i/a/b/d;

    move-result-object v2

    .line 84
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v1, v0, v2}, Lcom/i/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/d;)V

    .line 88
    :cond_3
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishResultsBehanceBtn:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method
