.class public Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKImageDisplayDialogFragment.java"


# static fields
.field private static final ARG_IMAGES_URLS_ARRAY:Ljava/lang/String; = "ARG_IMAGES_URLS_ARRAY"

.field private static final ARG_STARTING_IMAGE_NUMBER:Ljava/lang/String; = "ARG_STARTING_IMAGE_NUMBER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static getInstance([Ljava/lang/String;I)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string/jumbo v2, "ARG_IMAGES_URLS_ARRAY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "ARG_STARTING_IMAGE_NUMBER"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x0

    sget v1, Lcom/behance/sdk/R$style;->BsdkImageDisplayDialogTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->setStyle(II)V

    .line 51
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 57
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_fragment_image_display:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKHackyViewPager;

    .line 63
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ARG_STARTING_IMAGE_NUMBER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 64
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ARG_IMAGES_URLS_ARRAY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v3, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v3}, Lcom/behance/sdk/ui/components/BehanceSDKHackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 67
    new-instance v2, Lcom/behance/sdk/ui/animations/BehanceSDKZoomOutPageTransformer;

    invoke-direct {v2}, Lcom/behance/sdk/ui/animations/BehanceSDKZoomOutPageTransformer;-><init>()V

    invoke-virtual {v0, v5, v2}, Lcom/behance/sdk/ui/components/BehanceSDKHackyViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 68
    invoke-virtual {v0, v1, v5}, Lcom/behance/sdk/ui/components/BehanceSDKHackyViewPager;->setCurrentItem(IZ)V

    .line 70
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 82
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 83
    return-void
.end method
