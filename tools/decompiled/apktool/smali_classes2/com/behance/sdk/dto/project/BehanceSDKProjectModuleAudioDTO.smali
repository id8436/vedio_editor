.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;
.super Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
.source "BehanceSDKProjectModuleAudioDTO.java"


# static fields
.field private static final serialVersionUID:J = -0x8f7b58ea4cbfc1cL


# instance fields
.field private embedHTML:Ljava/lang/String;

.field private srcURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;-><init>()V

    .line 37
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->AUDIO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->setType(Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getEmbedHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->embedHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->srcURL:Ljava/lang/String;

    return-object v0
.end method

.method public setEmbedHTML(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->embedHTML:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setSrcURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->srcURL:Ljava/lang/String;

    .line 54
    return-void
.end method
