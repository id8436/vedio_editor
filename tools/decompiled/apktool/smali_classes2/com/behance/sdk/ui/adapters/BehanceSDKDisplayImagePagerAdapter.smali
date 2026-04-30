.class public Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "BehanceSDKDisplayImagePagerAdapter.java"


# instance fields
.field private mImageURLsArray:[Ljava/lang/String;

.field private mNumberOfImages:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 40
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;->mImageURLsArray:[Ljava/lang/String;

    .line 41
    if-eqz p2, :cond_0

    .line 42
    array-length v0, p2

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;->mNumberOfImages:I

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;->mNumberOfImages:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;->mNumberOfImages:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;->mImageURLsArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;->mImageURLsArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;->newInstance(Ljava/lang/String;Z)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayGifPageItemFragment;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKDisplayImagePagerAdapter;->mImageURLsArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->newInstance(Ljava/lang/String;Z)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;

    move-result-object v0

    goto :goto_0
.end method
