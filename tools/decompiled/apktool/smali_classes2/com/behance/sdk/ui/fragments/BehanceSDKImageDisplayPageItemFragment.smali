.class public Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKImageDisplayPageItemFragment.java"

# interfaces
.implements Lcom/i/a/b/f/a;


# static fields
.field private static final ARG_URL:Ljava/lang/String; = "ARG_URL"

.field private static final ARG_ZOOMABLE:Ljava/lang/String; = "ARG_ZOOMABLE"

.field private static final HARDWARE_RENDERING_MAX_SIZE:I = 0x800

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

.field private progressSpinner:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->hideProgressSpinner()V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->setImageViewWithBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private displayDecodingErrorMessage(Lcom/i/a/b/a/b;)V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_ida_image_decoding_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    :cond_0
    return-void
.end method

.method private hideProgressSpinner()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->progressSpinner:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->newInstance(Ljava/lang/String;Z)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;-><init>()V

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string/jumbo v2, "ARG_URL"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, "ARG_ZOOMABLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v0
.end method

.method private setImageViewWithBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/16 v2, 0x800

    const/4 v4, 0x0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_3

    .line 151
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    :goto_2
    return-void

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    sget-object v1, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Unknown error while displaying image bitmap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0, v4}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->displayDecodingErrorMessage(Lcom/i/a/b/a/b;)V

    goto :goto_2

    .line 156
    :cond_3
    :try_start_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showProgressSpinner()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->progressSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 77
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_adapter_image_display_item:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 80
    const-string/jumbo v2, "ARG_URL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string/jumbo v3, "ARG_ZOOMABLE"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 83
    :try_start_0
    sget v1, Lcom/behance/sdk/R$id;->bsdk_imageDisplayActivityImageView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/chrisbanes/photoview/PhotoView;

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 84
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->setZoomable(Z)V

    .line 85
    sget v1, Lcom/behance/sdk/R$id;->bsdk_imageDisplayActivityProgressSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->progressSpinner:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->showProgressSpinner()V

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/b/a/l;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/d;->h()Lcom/b/a/b;

    move-result-object v1

    sget-object v2, Lcom/b/a/d/b/e;->b:Lcom/b/a/d/b/e;

    invoke-virtual {v1, v2}, Lcom/b/a/b;->a(Lcom/b/a/d/b/e;)Lcom/b/a/a;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;)V

    invoke-virtual {v1, v2}, Lcom/b/a/a;->a(Lcom/b/a/h/b/k;)Lcom/b/a/h/b/k;

    .line 107
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/b/a/l;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/d;->h()Lcom/b/a/b;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;)V

    invoke-virtual {v1, v2}, Lcom/b/a/b;->a(Lcom/b/a/h/b/k;)Lcom/b/a/h/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    sget-object v2, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Unknown error while loading image bitmap [exception is %s]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->displayDecodingErrorMessage(Lcom/i/a/b/a/b;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 134
    return-void
.end method

.method public onImageLoadFailure(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 169
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Unable to load image bitmap"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->hideProgressSpinner()V

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->displayDecodingErrorMessage(Lcom/i/a/b/a/b;)V

    .line 172
    return-void
.end method

.method public onImageLoadSuccess(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->setImageViewWithBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->hideProgressSpinner()V

    .line 128
    return-void
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v1, "Image loading was cancelled"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->onImageLoadFailure(Ljava/lang/Exception;)V

    .line 177
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->onImageLoadSuccess(Landroid/graphics/Bitmap;)V

    .line 182
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/i/a/b/a/b;)V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v1, "Image loading failed"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->onImageLoadFailure(Ljava/lang/Exception;)V

    .line 187
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
