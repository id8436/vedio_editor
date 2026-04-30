.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;
.super Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
.source "BehanceSDKProjectModuleTextDTO.java"


# static fields
.field private static final serialVersionUID:J = 0x12949024f41a597fL


# instance fields
.field private customCSS:Ljava/lang/String;

.field private formattedText:Ljava/lang/String;

.field private moduleHTML:Ljava/lang/String;

.field private plainText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;-><init>()V

    .line 39
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->TEXT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->setType(Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getCustomCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->customCSS:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->formattedText:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->moduleHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->plainText:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->customCSS:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFormattedText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->formattedText:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setModuleHTML(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->moduleHTML:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPlainText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->plainText:Ljava/lang/String;

    .line 56
    return-void
.end method
