.class public Lcom/adobe/premiereclip/prexport/PrExportTransfer;
.super Ljava/lang/Object;
.source "PrExportTransfer.java"


# instance fields
.field private progress:F

.field private request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field private result:Z

.field private sourcePath:Ljava/lang/String;

.field private targetFolder:Ljava/lang/String;

.field private targetName:Ljava/lang/String;

.field private targetType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->targetName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->sourcePath:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->targetFolder:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->targetType:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->result:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 47
    return-void
.end method


# virtual methods
.method public cancelTransfer()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 92
    :cond_0
    return-void
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->getProgress()I

    move-result v0

    int-to-float v0, v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->result:Z

    return v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->targetFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->targetName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->targetType:Ljava/lang/String;

    return-object v0
.end method

.method public setRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 86
    return-void
.end method

.method public setResult(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->result:Z

    .line 62
    return-void
.end method
