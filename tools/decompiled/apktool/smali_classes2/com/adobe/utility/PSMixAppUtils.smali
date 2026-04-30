.class public Lcom/adobe/utility/PSMixAppUtils;
.super Ljava/lang/Object;
.source "PSMixAppUtils.java"


# static fields
.field public static final appName:Ljava/lang/String; = "Photoshop Mix"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 12
    const-string/jumbo v0, "1.0"

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 15
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    return-object v0

    .line 16
    :catch_0
    move-exception v1

    goto :goto_0
.end method
