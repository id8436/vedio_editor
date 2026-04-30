.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;
.super Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;
.source "BehanceSDKEditProjectModuleEmbed.java"


# instance fields
.field private embedAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field private fullBleed:Z

.field private html:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmbedAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->embedAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->EMBED:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    return-object v0
.end method

.method public isFullBleed()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->fullBleed:Z

    return v0
.end method

.method public setEmbedAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->embedAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 30
    return-void
.end method

.method public setFullBleed(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->fullBleed:Z

    .line 43
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->html:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public toggleFullBleed()V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->fullBleed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->fullBleed:Z

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
