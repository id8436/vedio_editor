.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;
.super Ljava/lang/Object;
.source "AssetBrowserCoachMarkData.java"


# instance fields
.field private cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

.field private isScreenshotsFolder:Z


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;->cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    .line 14
    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;->isScreenshotsFolder:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getCellView()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;->cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    return-object v0
.end method

.method public isScreenshotsFolder()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;->isScreenshotsFolder:Z

    return v0
.end method
