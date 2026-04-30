.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;
.super Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;
.source "BehanceSDKEditProjectModuleCaptionable.java"


# instance fields
.field private caption:Ljava/lang/String;

.field private captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->caption:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setCaptionAlignment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 27
    return-void
.end method
