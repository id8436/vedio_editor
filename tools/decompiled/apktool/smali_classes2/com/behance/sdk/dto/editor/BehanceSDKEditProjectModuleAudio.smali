.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;
.super Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;
.source "BehanceSDKEditProjectModuleAudio.java"


# instance fields
.field private html:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->AUDIO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    return-object v0
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;->html:Ljava/lang/String;

    .line 24
    return-void
.end method
