.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "BehanceSDKBottomSheetShareDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;


# static fields
.field private static final BUNDLE_KEY_SHARE_CONTENT:Ljava/lang/String; = "BUNDLE_KEY_SHARE_CONTENT"

.field private static final BUNDLE_KEY_SHARE_TYPE:Ljava/lang/String; = "BUNDLE_KEY_SHARE_TYPE"

.field private static final PACKAGE_NAME_FACEBOOK:Ljava/lang/String; = "facebook.katana"

.field private static final PACKAGE_NAME_PINTEREST:Ljava/lang/String; = "pinterest.act"

.field private static final PACKAGE_NAME_TWITTER:Ljava/lang/String; = "twitter.android"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private rootView:Landroid/view/View;

.field private shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

.field private shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

.field private sheetRecycler:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->sheetRecycler:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getDefaultShareIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 288
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private dispatchShareIntent(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 351
    .line 352
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getDefaultShareIntent()Landroid/content/Intent;

    move-result-object v3

    .line 355
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 358
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    :cond_1
    const-string/jumbo v4, "twitter.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 360
    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    sget-object v5, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->USER:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    if-ne v4, v5, :cond_3

    .line 361
    const-string/jumbo v4, "android.intent.extra.TEXT"

    sget v5, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_twitter_share_body:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 363
    invoke-virtual {v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 364
    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getShortUrlToShare()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 363
    invoke-virtual {p0, v5, v6}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :goto_0
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move v0, v2

    .line 382
    :goto_1
    if-eqz v0, :cond_2

    .line 383
    sget v1, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_share_intent_title:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->startActivity(Landroid/content/Intent;)V

    .line 386
    :cond_2
    :goto_2
    if-nez v0, :cond_5

    .line 387
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_app_not_found_msg:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    :goto_3
    return-void

    .line 366
    :cond_3
    const-string/jumbo v4, "android.intent.extra.TEXT"

    sget v5, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_twitter_share_body:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 368
    invoke-virtual {v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 369
    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getShortUrlToShare()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 368
    invoke-virtual {p0, v5, v6}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 373
    :cond_4
    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 390
    :cond_5
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dismissAllowingStateLoss()V

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private getDefaultShareIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    return-object v0
.end method

.method public static getInstance(Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;Lcom/behance/sdk/enums/BehanceSDKShareContentType;)Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;-><init>()V

    .line 80
    iput-object p0, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 81
    iput-object p1, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    .line 82
    return-object v0
.end method

.method private getShareContentItemsList(Lcom/behance/sdk/enums/BehanceSDKShareContentType;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/enums/BehanceSDKShareContentType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 176
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 179
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    if-ne p1, v0, :cond_0

    .line 180
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;-><init>()V

    .line 181
    sget-object v5, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->DOWNLOAD_IMAGE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setPackageName(Ljava/lang/String;)V

    .line 182
    sget v5, Lcom/behance/sdk/R$drawable;->bsdk_share_bottom_sheet_icon_savetodevicce:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    sget v5, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_download_image:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayLabel(Ljava/lang/String;)V

    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;-><init>()V

    .line 189
    sget-object v5, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->COPY_LINK_SHARING_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setPackageName(Ljava/lang/String;)V

    .line 190
    sget v5, Lcom/behance/sdk/R$drawable;->bsdk_share_bottom_sheet_icon_link:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 191
    sget v5, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_copy_link_label:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayLabel(Ljava/lang/String;)V

    .line 192
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;-><init>()V

    .line 196
    sget-object v5, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->EMAIL_SHARING_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setPackageName(Ljava/lang/String;)V

    .line 197
    sget v5, Lcom/behance/sdk/R$drawable;->bsdk_share_bottom_sheet_icon_email:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 198
    sget v5, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_email_label:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayLabel(Ljava/lang/String;)V

    .line 199
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getDefaultShareIntent()Landroid/content/Intent;

    move-result-object v0

    .line 203
    invoke-virtual {v3, v0, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 206
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 210
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 211
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 213
    if-eqz v7, :cond_1

    .line 215
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 216
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 221
    const-string/jumbo v9, "pinterest.act"

    invoke-direct {p0, v8, v9}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "pinterest.act"

    .line 222
    invoke-direct {p0, v0, v9}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 225
    :cond_2
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->COLLECTION:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->USER:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    if-eq p1, v0, :cond_1

    .line 226
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;-><init>()V

    .line 227
    const-string/jumbo v7, "pinterest.act"

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setPackageName(Ljava/lang/String;)V

    .line 228
    sget v7, Lcom/behance/sdk/R$drawable;->bsdk_share_bottom_sheet_icon_pinterest:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 229
    sget v7, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_pinterest_label:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayLabel(Ljava/lang/String;)V

    .line 230
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    sget-object v7, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v8, "Problem getting label or icon for Sharing"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 232
    :cond_3
    :try_start_1
    const-string/jumbo v9, "facebook.katana"

    invoke-direct {p0, v8, v9}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "facebook.katana"

    .line 233
    invoke-direct {p0, v0, v9}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 234
    :cond_4
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;-><init>()V

    .line 235
    const-string/jumbo v7, "facebook.katana"

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setPackageName(Ljava/lang/String;)V

    .line 236
    sget v7, Lcom/behance/sdk/R$drawable;->bsdk_share_bottom_sheet_icon_facebook:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 237
    sget v7, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_facebook_label:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayLabel(Ljava/lang/String;)V

    .line 238
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 239
    :cond_5
    const-string/jumbo v9, "twitter.android"

    invoke-direct {p0, v8, v9}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "twitter.android"

    .line 240
    invoke-direct {p0, v0, v9}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 241
    :cond_6
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 242
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;-><init>()V

    .line 244
    const-string/jumbo v7, "twitter.android"

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setPackageName(Ljava/lang/String;)V

    .line 245
    sget v7, Lcom/behance/sdk/R$drawable;->bsdk_share_bottom_sheet_icon_twitter:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 246
    sget v7, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_twitter_label:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayLabel(Ljava/lang/String;)V

    .line 247
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 250
    :cond_7
    sget-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v7, "Ignoring duplicate Twitter activity"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 253
    :cond_8
    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 254
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;-><init>()V

    .line 256
    invoke-virtual {v0, v8}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setPackageName(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v7, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayLabel(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v7, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 259
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 261
    :cond_9
    sget-object v8, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v9, "Ignoring duplicate Share option [app name - %s] [activity name - %s]"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v0, v10, v7

    invoke-interface {v8, v9, v10}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 273
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 274
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_b
    return-object v1
.end method

.method private handleCopyLinkBtnClick()V
    .locals 3

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 430
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 433
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_link_copied_msg:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 436
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dismissAllowingStateLoss()V

    .line 437
    return-void
.end method

.method private handleShareUsingEmailBtnClick()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    const-string/jumbo v2, "mailto"

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 395
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$4;->$SwitchMap$com$behance$sdk$enums$BehanceSDKShareContentType:[I

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    invoke-virtual {v2}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 419
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget v2, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_share_project_email_body:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 420
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    :goto_0
    sget v1, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_email_a_link_intent_title:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->startActivity(Landroid/content/Intent;)V

    .line 425
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dismissAllowingStateLoss()V

    .line 426
    return-void

    .line 398
    :pswitch_0
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget v2, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_share_user_email_body:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 400
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 403
    :pswitch_1
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget v2, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_share_collection_email_body:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 404
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 407
    :pswitch_2
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget v2, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_share_curated_gallery_email_body:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 408
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 411
    :pswitch_3
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget v2, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_share_image_email_body:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 412
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 415
    :pswitch_4
    const-string/jumbo v1, "android.intent.extra.TEXT"

    sget v2, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_share_team_email_body:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 416
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setTitle(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$4;->$SwitchMap$com$behance$sdk$enums$BehanceSDKShareContentType:[I

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 314
    sget v0, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_title:I

    .line 317
    :goto_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_0
    return-void

    .line 296
    :pswitch_0
    sget v0, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_title_project:I

    goto :goto_0

    .line 299
    :pswitch_1
    sget v0, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_title_image:I

    goto :goto_0

    .line 302
    :pswitch_2
    sget v0, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_title_collection:I

    goto :goto_0

    .line 305
    :pswitch_3
    sget v0, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_title_gallery:I

    goto :goto_0

    .line 308
    :pswitch_4
    sget v0, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_title_user:I

    goto :goto_0

    .line 311
    :pswitch_5
    sget v0, Lcom/behance/sdk/R$string;->bsdk_share_content_dialog_title_team:I

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/4 v0, 0x0

    sget v1, Lcom/behance/sdk/R$style;->BsdkBottomSheetDialogTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->setStyle(II)V

    .line 89
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 97
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bottom_sheet_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le v0, v2, :cond_0

    .line 98
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$1;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$1;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 108
    :cond_0
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 110
    if-eqz p1, :cond_1

    .line 111
    const-string/jumbo v0, "BUNDLE_KEY_SHARE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    .line 112
    const-string/jumbo v0, "BUNDLE_KEY_SHARE_CONTENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    if-nez v0, :cond_3

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dismiss()V

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_bottom_sheet:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->rootView:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdk_bottom_sheet_recycler:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->sheetRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->sheetRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->sheetRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationList;

    invoke-direct {v2, v4}, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationList;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 124
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getShareContentItemsList(Lcom/behance/sdk/enums/BehanceSDKShareContentType;)Ljava/util/List;

    move-result-object v0

    .line 125
    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 126
    invoke-virtual {v2, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->setCallbacks(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;)V

    .line 128
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->sheetRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 130
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$2;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)V

    .line 136
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsCallbacks;Landroid/content/pm/PackageManager;)V

    .line 137
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdk_bottom_sheet_header_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->setTitle(Landroid/widget/TextView;)V

    .line 142
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 147
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->sheetRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior;->getPeekHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setMinimumHeight(I)V

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_4

    .line 150
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->rootView:Landroid/view/View;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$3;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$3;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 160
    :cond_4
    return-object v1
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 342
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dismissAllowingStateLoss()V

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    const-string/jumbo v0, "BUNDLE_KEY_SHARE_CONTENT"

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 167
    const-string/jumbo v0, "BUNDLE_KEY_SHARE_TYPE"

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContentType:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    return-void
.end method

.method public saveImageToDevice()V
    .locals 4

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->checkPermissionAndRequest(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;-><init>()V

    .line 442
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;->setContext(Landroid/content/Context;)V

    .line 443
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->shareContent:Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->getLongUrlToShare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;->setUrl(Ljava/lang/String;)V

    .line 444
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask;-><init>()V

    .line 445
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKDownloadAndSaveImageAsyncTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKDownloadAndSaveImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 446
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dismissAllowingStateLoss()V

    .line 448
    :cond_0
    return-void
.end method

.method public share(Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;)V
    .locals 2

    .prologue
    .line 323
    const-string/jumbo v0, "pinterest.act"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "pinterest.act"

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dispatchShareIntent(Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string/jumbo v0, "facebook.katana"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const-string/jumbo v0, "facebook.katana"

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dispatchShareIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_1
    const-string/jumbo v0, "twitter.android"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    const-string/jumbo v0, "twitter.android"

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dispatchShareIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    sget-object v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->EMAIL_SHARING_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->handleShareUsingEmailBtnClick()V

    goto :goto_0

    .line 331
    :cond_3
    sget-object v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->COPY_LINK_SHARING_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->handleCopyLinkBtnClick()V

    goto :goto_0

    .line 333
    :cond_4
    sget-object v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->DOWNLOAD_IMAGE_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->saveImageToDevice()V

    goto :goto_0

    .line 336
    :cond_5
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->dispatchShareIntent(Ljava/lang/String;)V

    goto :goto_0
.end method
