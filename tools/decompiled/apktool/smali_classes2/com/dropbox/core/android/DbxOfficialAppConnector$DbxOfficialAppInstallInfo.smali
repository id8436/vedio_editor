.class public Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;
.super Ljava/lang/Object;
.source "DbxOfficialAppConnector.java"


# instance fields
.field public final supportsOpenWith:Z

.field public final versionCode:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean p1, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;->supportsOpenWith:Z

    .line 87
    iput p2, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;->versionCode:I

    .line 88
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    const-string/jumbo v0, "DbxOfficialAppInstallInfo(versionCode=%s, supportsOpenWith=%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;->versionCode:I

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;->supportsOpenWith:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 92
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
