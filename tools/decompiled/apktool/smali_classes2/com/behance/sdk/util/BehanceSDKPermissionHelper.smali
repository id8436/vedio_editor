.class public Lcom/behance/sdk/util/BehanceSDKPermissionHelper;
.super Ljava/lang/Object;
.source "BehanceSDKPermissionHelper.java"


# static fields
.field public static final REQUEST_CODE_LAUNCH_ALBUMS_VIEW:I = 0x1

.field public static final REQUEST_CODE_LAUNCH_ALBUMS_VIEW_COVER_FRAGMENT:I = 0x3

.field public static final REQUEST_CODE_LAUNCH_CAMERA:I = 0x2

.field public static final REQUEST_CODE_STORAGE_DOWNLOAD_IMAGE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-static {p1, p0}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 47
    if-eqz v4, :cond_2

    array-length v0, v4

    if-lez v0, :cond_2

    .line 48
    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 49
    if-eqz v0, :cond_0

    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 48
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 49
    goto :goto_1

    :cond_1
    move v1, v0

    .line 52
    :cond_2
    return v1
.end method

.method public static checkPermissionAndRequest(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 76
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-static {p1, p0}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    packed-switch p0, :pswitch_data_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    goto :goto_0

    .line 63
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    goto :goto_0

    .line 68
    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 29
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 30
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 31
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    .line 32
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 41
    :cond_0
    :goto_1
    return v0

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    goto :goto_1
.end method
